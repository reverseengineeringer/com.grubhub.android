package com.urbanairship.google;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import java.util.Iterator;
import java.util.List;

public class PlayServicesUtils
{
  private static final int CONNECTION_SUCCESS = 0;
  private static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
  private static final String GOOGLE_PLAY_STORE_PACKAGE_OLD = "com.google.market";
  public static final int MISSING_PLAY_SERVICE_DEPENDENCY = -1;
  private static Boolean isFusedLocationDependencyAvailable;
  private static Boolean isGoogleCloudMessagingDependencyAvailable;
  private static Boolean isGooglePlayServicesDependencyAvailable;
  
  public static void handleAnyPlayServicesError(Context paramContext)
  {
    if (!isGooglePlayServicesDependencyAvailable()) {}
    for (;;)
    {
      return;
      try
      {
        int i = GooglePlayServicesUtilWrapper.isGooglePlayServicesAvailable(paramContext);
        if (i != 0)
        {
          if (GooglePlayServicesUtilWrapper.isUserRecoverableError(i))
          {
            Logger.info("Launching Play Services Activity to resolve error.");
            try
            {
              paramContext.startActivity(new Intent(paramContext, PlayServicesErrorActivity.class));
              return;
            }
            catch (ActivityNotFoundException paramContext)
            {
              Logger.error(paramContext.getMessage());
              return;
            }
          }
          Logger.info("Error " + i + " is not user recoverable.");
        }
      }
      catch (IllegalStateException paramContext)
      {
        Logger.error("Google Play services developer error: " + paramContext.getMessage());
        return;
      }
    }
  }
  
  @Deprecated
  public static boolean isFusedLocationDepdendencyAvailable()
  {
    return isFusedLocationDependencyAvailable();
  }
  
  public static boolean isFusedLocationDependencyAvailable()
  {
    if (isFusedLocationDependencyAvailable == null)
    {
      if (isGooglePlayServicesDependencyAvailable()) {
        break label26;
      }
      isFusedLocationDependencyAvailable = Boolean.valueOf(false);
    }
    for (;;)
    {
      return isFusedLocationDependencyAvailable.booleanValue();
      try
      {
        label26:
        Class.forName("com.google.android.gms.location.LocationServices");
        isFusedLocationDependencyAvailable = Boolean.valueOf(true);
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        isFusedLocationDependencyAvailable = Boolean.valueOf(false);
      }
    }
  }
  
  public static boolean isGoogleCloudMessagingDependencyAvailable()
  {
    if (isGoogleCloudMessagingDependencyAvailable == null)
    {
      if (isGooglePlayServicesDependencyAvailable()) {
        break label26;
      }
      isGoogleCloudMessagingDependencyAvailable = Boolean.valueOf(false);
    }
    for (;;)
    {
      return isGoogleCloudMessagingDependencyAvailable.booleanValue();
      try
      {
        label26:
        Class.forName("com.google.android.gms.gcm.GoogleCloudMessaging");
        Class.forName("com.google.android.gms.gcm.GcmReceiver");
        isGoogleCloudMessagingDependencyAvailable = Boolean.valueOf(true);
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        isGoogleCloudMessagingDependencyAvailable = Boolean.valueOf(false);
      }
    }
  }
  
  public static int isGooglePlayServicesAvailable(Context paramContext)
  {
    if (isGooglePlayServicesDependencyAvailable()) {
      return GooglePlayServicesUtilWrapper.isGooglePlayServicesAvailable(paramContext);
    }
    return -1;
  }
  
  public static boolean isGooglePlayServicesDependencyAvailable()
  {
    if (isGooglePlayServicesDependencyAvailable == null)
    {
      if (Build.VERSION.SDK_INT >= 8) {
        break label28;
      }
      isGooglePlayServicesDependencyAvailable = Boolean.valueOf(false);
    }
    for (;;)
    {
      return isGooglePlayServicesDependencyAvailable.booleanValue();
      try
      {
        label28:
        Class.forName("com.google.android.gms.common.e");
        isGooglePlayServicesDependencyAvailable = Boolean.valueOf(true);
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        isGooglePlayServicesDependencyAvailable = Boolean.valueOf(false);
      }
    }
  }
  
  public static boolean isGooglePlayStoreAvailable()
  {
    Iterator localIterator = UAirship.getPackageManager().getInstalledPackages(0).iterator();
    while (localIterator.hasNext())
    {
      PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
      if ((packageName.equals("com.android.vending")) || (packageName.equals("com.google.market"))) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.google.PlayServicesUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */