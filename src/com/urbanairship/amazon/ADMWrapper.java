package com.urbanairship.amazon;

import android.content.Context;
import com.amazon.device.messaging.ADM;
import com.amazon.device.messaging.development.ADMManifest;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;

class ADMWrapper
{
  public static boolean isSupported()
  {
    try
    {
      boolean bool = new ADM(UAirship.getApplicationContext()).isSupported();
      return bool;
    }
    catch (RuntimeException localRuntimeException)
    {
      Logger.error("Failed to call ADM. Make sure ADM jar is not bundled with the APK.");
    }
    return false;
  }
  
  public static void startRegistration(Context paramContext)
  {
    new ADM(paramContext).startRegister();
  }
  
  public static void validateManifest()
  {
    try
    {
      ADMManifest.checkManifestAuthoredProperly(UAirship.getApplicationContext());
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Logger.error("AndroidManifest invalid ADM setup.", localRuntimeException);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.amazon.ADMWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */