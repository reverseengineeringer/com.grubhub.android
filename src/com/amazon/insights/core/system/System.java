package com.amazon.insights.core.system;

public abstract interface System
{
  public abstract AppDetails getAppDetails();
  
  public abstract Connectivity getConnectivity();
  
  public abstract DeviceDetails getDeviceDetails();
  
  public abstract FileManager getFileManager();
  
  public abstract Preferences getPreferences();
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.System
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */