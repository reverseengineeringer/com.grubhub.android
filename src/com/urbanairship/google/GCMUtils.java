package com.urbanairship.google;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.GCMPushReceiver;
import com.urbanairship.util.ManifestUtils;
import java.util.List;

public class GCMUtils
{
  public static final String PERMISSION_RECEIVE = "com.google.android.c2dm.permission.RECEIVE";
  
  public static void validateManifest(AirshipConfigOptions paramAirshipConfigOptions)
  {
    PackageManager localPackageManager = UAirship.getPackageManager();
    String str = UAirship.getPackageName();
    ManifestUtils.checkRequiredPermission("android.permission.WAKE_LOCK");
    if (ManifestUtils.isPermissionKnown("com.google.android.c2dm.permission.RECEIVE"))
    {
      ManifestUtils.checkRequiredPermission("com.google.android.c2dm.permission.RECEIVE");
      ApplicationInfo localApplicationInfo = getPackageInfoapplicationInfo;
      if ((minSdkVersion < 16) || ((localApplicationInfo != null) && (targetSdkVersion < 16)) || (Build.VERSION.SDK_INT < 16))
      {
        paramAirshipConfigOptions = str + ".permission.C2D_MESSAGE";
        if (!ManifestUtils.isPermissionKnown(paramAirshipConfigOptions)) {
          break label201;
        }
        ManifestUtils.checkRequiredPermission(paramAirshipConfigOptions);
      }
      label94:
      if (!PlayServicesUtils.isGoogleCloudMessagingDependencyAvailable()) {
        break label287;
      }
      if (ManifestUtils.getReceiverInfo(GCMPushReceiver.class) == null) {
        break label231;
      }
      paramAirshipConfigOptions = new Intent("com.google.android.c2dm.intent.RECEIVE");
      paramAirshipConfigOptions.addCategory(str);
      if (localPackageManager.queryBroadcastReceivers(paramAirshipConfigOptions, 0).isEmpty()) {
        Logger.error("AndroidManifest.xml's " + GCMPushReceiver.class.getCanonicalName() + " declaration missing required " + paramAirshipConfigOptions.getAction() + " filter with category = " + str);
      }
    }
    for (;;)
    {
      try
      {
        PlayServicesUtils.isGooglePlayServicesAvailable(UAirship.getApplicationContext());
        return;
      }
      catch (IllegalStateException paramAirshipConfigOptions)
      {
        label201:
        label231:
        Logger.error("Google Play services developer error: " + paramAirshipConfigOptions.getMessage());
        return;
      }
      Logger.error("Required permission com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager.");
      break;
      Logger.error("Required permission " + paramAirshipConfigOptions + " is unknown to PackageManager.");
      break label94;
      Logger.error("AndroidManifest.xml missing required receiver: " + GCMPushReceiver.class.getCanonicalName());
    }
    label287:
    Logger.error("Google Play services required for GCM.");
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.google.GCMUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */