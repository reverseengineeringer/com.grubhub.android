package com.urbanairship.push;

import com.google.android.gms.common.e;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.iid.a;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.google.PlayServicesUtils;
import com.urbanairship.util.ManifestUtils;
import java.io.IOException;
import java.util.Set;

class GCMRegistrar
{
  private static boolean isGCMAvailable()
  {
    if (!PlayServicesUtils.isGoogleCloudMessagingDependencyAvailable())
    {
      Logger.error("Google Play services for GCM is unavailable.");
      return false;
    }
    try
    {
      if (e.a(UAirship.getApplicationContext()) != 0)
      {
        Logger.error("Google Play services is currently unavailable.");
        return false;
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Logger.error("Unable to register with GCM:  " + localIllegalStateException.getMessage());
      return false;
    }
    if (!ManifestUtils.isPermissionKnown("com.google.android.c2dm.permission.RECEIVE"))
    {
      Logger.error("com.google.android.c2dm.permission.RECEIVE is unknown to PackageManager. Note that an AVD emulator may not support GCM.");
      Logger.error("If you're running in an emulator, you need to install the appropriate image through the Android SDK and AVM manager. See http://developer.android.com/guide/google/gcm/ for further details.");
      return false;
    }
    if (sharedgetAirshipConfigOptionsgcmSender == null)
    {
      Logger.error("The GCM sender ID is not set. Unable to register.");
      return false;
    }
    return true;
  }
  
  public static boolean register()
    throws IOException
  {
    Logger.verbose("Registering with GCM.");
    if (!isGCMAvailable()) {
      return false;
    }
    Object localObject1 = GoogleCloudMessaging.getInstance(UAirship.getApplicationContext());
    Set localSet = UAirship.shared().getAirshipConfigOptions().getGCMSenderIds();
    Object localObject2 = UAirship.shared().getPushManager().getPreferences().getRegisteredGcmSenderIds();
    if ((localObject2 != null) && (!((Set)localObject2).equals(localSet)))
    {
      Logger.debug("GCMRegistrar - Unregistering GCM Sender IDs:  " + localObject2);
      ((GoogleCloudMessaging)localObject1).unregister();
    }
    Logger.debug("GCMRegistrar - Registering GCM Sender IDs:  " + localSet);
    localObject1 = ((GoogleCloudMessaging)localObject1).register((String[])localSet.toArray(new String[localSet.size()]));
    localObject2 = a.b(UAirship.getApplicationContext()).b(sharedgetAirshipConfigOptionsgcmSender, "GCM", null);
    if ((localObject1 != null) && (localObject2 != null))
    {
      Logger.info("GCM registration successful security token: " + (String)localObject2 + " registration ID: " + (String)localObject1);
      UAirship.shared().getPushManager().setGcmToken((String)localObject2);
      UAirship.shared().getPushManager().setGcmId((String)localObject1);
      UAirship.shared().getPushManager().getPreferences().setRegisteredGcmSenderIds(localSet);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.GCMRegistrar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */