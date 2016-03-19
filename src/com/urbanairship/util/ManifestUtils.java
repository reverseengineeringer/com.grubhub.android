package com.urbanairship.util;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.CoreActivity;
import com.urbanairship.CoreReceiver;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.UrbanAirshipProvider;
import com.urbanairship.actions.ActionActivity;
import com.urbanairship.actions.ActionService;
import com.urbanairship.analytics.EventService;
import com.urbanairship.location.LocationService;
import com.urbanairship.push.BaseIntentReceiver;
import com.urbanairship.push.PushService;
import com.urbanairship.richpush.RichPushUpdateService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ManifestUtils
{
  private static final String[] BASE_INTENT_RECEIVER_ACTIONS = { "com.urbanairship.push.RECEIVED", "com.urbanairship.push.OPENED", "com.urbanairship.push.CHANNEL_UPDATED", "com.urbanairship.push.DISMISSED" };
  
  public static void checkRequiredPermission(String paramString)
  {
    if (-1 == UAirship.getPackageManager().checkPermission(paramString, UAirship.getPackageName())) {
      Logger.error("AndroidManifest.xml missing required permission: " + paramString);
    }
  }
  
  public static ActivityInfo getActivityInfo(Class paramClass)
  {
    paramClass = new ComponentName(UAirship.getPackageName(), paramClass.getCanonicalName());
    try
    {
      paramClass = UAirship.getPackageManager().getActivityInfo(paramClass, 128);
      return paramClass;
    }
    catch (Exception paramClass) {}
    return null;
  }
  
  public static ComponentInfo getProviderInfo(String paramString)
  {
    return UAirship.getPackageManager().resolveContentProvider(paramString, 0);
  }
  
  public static ComponentInfo getReceiverInfo(Class paramClass)
  {
    paramClass = new ComponentName(UAirship.getPackageName(), paramClass.getCanonicalName());
    try
    {
      paramClass = UAirship.getPackageManager().getReceiverInfo(paramClass, 128);
      return paramClass;
    }
    catch (Exception paramClass) {}
    return null;
  }
  
  public static ComponentInfo getServiceInfo(Class paramClass)
  {
    paramClass = new ComponentName(UAirship.getPackageName(), paramClass.getCanonicalName());
    try
    {
      paramClass = UAirship.getPackageManager().getServiceInfo(paramClass, 128);
      return paramClass;
    }
    catch (Exception paramClass) {}
    return null;
  }
  
  private static Map<Class, ComponentInfo> getUrbanAirshipComponentInfoMap()
  {
    new HashMap() {};
  }
  
  public static boolean isPermissionGranted(String paramString)
  {
    return UAirship.getPackageManager().checkPermission(paramString, UAirship.getPackageName()) == 0;
  }
  
  public static boolean isPermissionKnown(String paramString)
  {
    try
    {
      UAirship.getPackageManager().getPermissionInfo(paramString, 0);
      return true;
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return false;
  }
  
  private static void validateBaseIntentReceiver(ActivityInfo paramActivityInfo)
  {
    if (exported) {
      Logger.error("Receiver " + name + " is exported. This might " + "allow outside applications to message the receiver. Make sure the intent is protected by a " + "permission or prevent the receiver from being exported.");
    }
    Object localObject1 = new ArrayList();
    String[] arrayOfString = BASE_INTENT_RECEIVER_ACTIONS;
    int k = arrayOfString.length;
    int i = 0;
    String str;
    if (i < k)
    {
      str = arrayOfString[i];
      Object localObject2 = new Intent(str).addCategory(UAirship.getPackageName());
      localObject2 = UAirship.getPackageManager().queryBroadcastReceivers((Intent)localObject2, 0).iterator();
      ResolveInfo localResolveInfo;
      do
      {
        if (!((Iterator)localObject2).hasNext()) {
          break;
        }
        localResolveInfo = (ResolveInfo)((Iterator)localObject2).next();
      } while ((activityInfo == null) || (activityInfo.name == null) || (!activityInfo.name.equals(name)));
    }
    for (int j = 1;; j = 0)
    {
      if (j == 0) {
        ((List)localObject1).add(str);
      }
      i += 1;
      break;
      if (((List)localObject1).isEmpty()) {
        return;
      }
      Logger.error("Receiver " + name + " unable to receive intents for actions: " + localObject1);
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Update the manifest entry for ").append(name).append(" to:").append("\n<receiver android:name=\"").append(name).append("\" exported=\"false\">").append("\n\t<intent-filter> ");
      paramActivityInfo = BASE_INTENT_RECEIVER_ACTIONS;
      j = paramActivityInfo.length;
      i = 0;
      while (i < j)
      {
        arrayOfString = paramActivityInfo[i];
        ((StringBuilder)localObject1).append("\n\t\t<action android:name=\"").append(arrayOfString).append("\" />");
        i += 1;
      }
      ((StringBuilder)localObject1).append("\n\t\t<!-- Replace ${applicationId} with ").append(UAirship.getPackageName()).append(" if not using Android Gradle plugin -->").append("\n\t\t<category android:name=\"${applicationId}\" />").append("\n\t</intent-filter>").append("\n</receiver>");
      Logger.error(((StringBuilder)localObject1).toString());
      return;
    }
  }
  
  public static void validateManifest(AirshipConfigOptions paramAirshipConfigOptions)
  {
    Object localObject3 = null;
    checkRequiredPermission("android.permission.INTERNET");
    checkRequiredPermission("android.permission.ACCESS_NETWORK_STATE");
    Map localMap;
    if (isPermissionKnown(UAirship.getUrbanAirshipPermission()))
    {
      checkRequiredPermission(UAirship.getUrbanAirshipPermission());
      localMap = getUrbanAirshipComponentInfoMap();
      if (localMap.get(CoreReceiver.class) != null) {
        break label159;
      }
      Logger.error("AndroidManifest.xml missing required receiver: " + CoreReceiver.class.getCanonicalName());
    }
    label159:
    label952:
    for (;;)
    {
      try
      {
        localObject1 = getPackageManagergetPackageInfogetPackageName2receivers;
        if (localObject1 != null)
        {
          int j = localObject1.length;
          i = 0;
          if (i < j) {
            localObject3 = localObject1[i];
          }
        }
      }
      catch (Exception localException)
      {
        Object localObject2;
        try
        {
          int i;
          if (BaseIntentReceiver.class.isAssignableFrom(Class.forName(name))) {
            validateBaseIntentReceiver((ActivityInfo)localObject3);
          }
          i += 1;
          continue;
          Logger.error("AndroidManifest.xml does not define and require permission: " + UAirship.getUrbanAirshipPermission());
          break;
          ComponentInfo localComponentInfo2 = (ComponentInfo)localMap.get(CoreReceiver.class);
          Object localObject1 = new Intent("com.urbanairship.push.OPENED").addCategory(UAirship.getPackageName());
          Iterator localIterator = UAirship.getPackageManager().queryBroadcastReceivers((Intent)localObject1, 0).iterator();
          localObject1 = null;
          if (localIterator.hasNext())
          {
            ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
            if ((activityInfo == null) || (activityInfo.name == null) || (!activityInfo.name.equals(name))) {
              break label952;
            }
            localObject1 = localResolveInfo;
            continue;
          }
          if (localObject1 == null)
          {
            Logger.error("AndroidManifest.xml's " + CoreReceiver.class.getCanonicalName() + " declaration missing required intent-filter: <intent-filter android:priority=\"-999\">" + "<action android:name=\"" + "com.urbanairship.push.OPENED" + "\"/>" + "<category android:name=\"" + UAirship.getPackageName() + "\"/></intent-filter>");
            continue;
          }
          if (priority == 64537) {
            continue;
          }
          Logger.error("CoreReceiver's intent filter priority should be set to -999 in order to let the application launch any activities before Urban Airship performs any actions or falls back to launching the application launch intent.");
          continue;
          localException = localException;
          Logger.error("Unable to query the application's receivers.", localException);
          localObject2 = localObject3;
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          Logger.debug("ManifestUtils - Unable to find class: " + name, localClassNotFoundException);
          continue;
        }
        if (localMap.get(CoreActivity.class) == null) {
          Logger.error("AndroidManifest.xml missing required activity: " + CoreActivity.class.getCanonicalName());
        }
        if ((analyticsEnabled) && (localMap.get(EventService.class) == null)) {
          Logger.error("AndroidManifest.xml missing required service: " + EventService.class.getCanonicalName());
        }
        if (localMap.get(PushService.class) == null) {
          Logger.error("AndroidManifest.xml missing required service: " + PushService.class.getCanonicalName());
        }
        if (localMap.get(RichPushUpdateService.class) == null) {
          Logger.error("AndroidManifest.xml missing required service: " + RichPushUpdateService.class.getCanonicalName());
        }
        if (localMap.get(ActionService.class) == null) {
          Logger.error("AndroidManifest.xml missing required service: " + ActionService.class.getCanonicalName());
        }
        if (localMap.get(ActionActivity.class) == null) {
          Logger.warn("AndroidManifest.xml missing ActionActivity.  Action.startActivityForResult will not work.");
        }
        paramAirshipConfigOptions = new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", Uri.parse("http://")).setPackage(UAirship.getPackageName()).addFlags(268435456).addCategory("android.intent.category.DEFAULT");
        if (UAirship.getPackageManager().resolveActivity(paramAirshipConfigOptions, 0) == null) {
          Logger.warn("AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme http.  Landing page action may not function properly.");
        }
        paramAirshipConfigOptions = new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", Uri.parse("https://")).setPackage(UAirship.getPackageName()).addFlags(268435456).addCategory("android.intent.category.DEFAULT");
        if (UAirship.getPackageManager().resolveActivity(paramAirshipConfigOptions, 0) == null) {
          Logger.error("AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme https. Landing page action may not function properly.");
        }
        paramAirshipConfigOptions = new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", Uri.parse("message://")).setPackage(UAirship.getPackageName()).addFlags(268435456).addCategory("android.intent.category.DEFAULT");
        if (UAirship.getPackageManager().resolveActivity(paramAirshipConfigOptions, 0) == null) {
          Logger.error("AndroidManifest.xml missing activity with an intent filter for action com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION, category android.intent.category.DEFAULT, and data with scheme message. Landing page action may not function properly.");
        }
        if (UAirship.getAppInfo() == null)
        {
          paramAirshipConfigOptions = UAirship.getPackageName();
          localObject2 = localMap.keySet().iterator();
          if (((Iterator)localObject2).hasNext())
          {
            localObject3 = (Class)((Iterator)localObject2).next();
            ComponentInfo localComponentInfo1 = (ComponentInfo)localMap.get(localObject3);
            if ((localComponentInfo1 == null) || (paramAirshipConfigOptions.equals(processName))) {
              continue;
            }
            Logger.warn("A separate process is detected for: " + ((Class)localObject3).getCanonicalName() + ". In the " + "AndroidManifest.xml, remove the android:process attribute.");
            continue;
          }
        }
        else
        {
          paramAirshipConfigOptions = getAppInfoprocessName;
          continue;
        }
        if (localMap.get(UrbanAirshipProvider.class) == null) {
          throw new IllegalStateException("Unable to resolve UrbanAirshipProvider. Please check that the provider is defined in your AndroidManifest.xml, and that the authority string is set to  \"YOUR_PACKAGENAME.urbanairship.provider\"");
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.ManifestUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */