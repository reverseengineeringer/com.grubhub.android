package com.amazon.insights.core.system;

import android.os.Build;
import android.os.Build.VERSION;
import java.util.Locale;

public class AndroidDeviceDetails
  implements DeviceDetails
{
  public Locale locale()
  {
    return Locale.getDefault();
  }
  
  public String manufacturer()
  {
    return Build.MANUFACTURER;
  }
  
  public String model()
  {
    return Build.MODEL;
  }
  
  public String platform()
  {
    return "ANDROID";
  }
  
  public String platformVersion()
  {
    return Build.VERSION.RELEASE;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.AndroidDeviceDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */