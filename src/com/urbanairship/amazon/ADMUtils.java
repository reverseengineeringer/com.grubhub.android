package com.urbanairship.amazon;

import android.content.Context;
import com.urbanairship.Logger;

public class ADMUtils
{
  private static Boolean isADMAvailable;
  
  public static boolean isADMAvailable()
  {
    if (isADMAvailable != null) {
      return isADMAvailable.booleanValue();
    }
    try
    {
      Class.forName("com.amazon.device.messaging.ADM");
      isADMAvailable = Boolean.valueOf(true);
      return isADMAvailable.booleanValue();
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        isADMAvailable = Boolean.valueOf(false);
      }
    }
  }
  
  public static boolean isADMSupported()
  {
    return (isADMAvailable()) && (ADMWrapper.isSupported());
  }
  
  public static void startRegistration(Context paramContext)
  {
    if (isADMSupported()) {
      ADMWrapper.startRegistration(paramContext);
    }
  }
  
  public static void validateManifest()
  {
    if (isADMAvailable())
    {
      ADMWrapper.validateManifest();
      return;
    }
    Logger.warn("ADM is not available on this device.");
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.amazon.ADMUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */