package com.amazon.insights.core.system;

import java.util.Locale;

public abstract interface DeviceDetails
{
  public abstract Locale locale();
  
  public abstract String manufacturer();
  
  public abstract String model();
  
  public abstract String platform();
  
  public abstract String platformVersion();
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.DeviceDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */