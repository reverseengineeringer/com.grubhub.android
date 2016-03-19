package com.amazon.insights.core.system;

import android.content.Context;
import com.amazon.insights.InsightsCredentials;

public class AndroidSystem
  implements System
{
  private final AppDetails appDetails;
  private final Connectivity connectivity;
  private final DeviceDetails deviceDetails;
  private final FileManager fileManager;
  private final Preferences preferences;
  
  public AndroidSystem(Context paramContext, InsightsCredentials paramInsightsCredentials)
  {
    preferences = new AndroidPreferences(paramContext, paramInsightsCredentials);
    fileManager = new DefaultFileManager(paramContext.getDir(paramInsightsCredentials.getApplicationKey(), 0));
    connectivity = new AndroidConnectivity(paramContext);
    appDetails = new AndroidAppDetails(paramContext);
    deviceDetails = new AndroidDeviceDetails();
  }
  
  public AppDetails getAppDetails()
  {
    return appDetails;
  }
  
  public Connectivity getConnectivity()
  {
    return connectivity;
  }
  
  public DeviceDetails getDeviceDetails()
  {
    return deviceDetails;
  }
  
  public FileManager getFileManager()
  {
    return fileManager;
  }
  
  public Preferences getPreferences()
  {
    return preferences;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.AndroidSystem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */