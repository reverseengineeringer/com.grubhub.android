package com.urbanairship.analytics;

import com.urbanairship.Logger;

class ActivityState
{
  private static final int NONE = 2;
  private static final int STARTED = 0;
  private static final int STOPPED = 1;
  private final String activityName;
  private final boolean analyticsEnabled;
  private int autoInstrumentedState = 2;
  private final int currentSdkVersion;
  private long lastModifiedTimeMS = 0L;
  private int manualInstrumentedState = 2;
  private final int minSdkVersion;
  
  public ActivityState(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    activityName = paramString;
    minSdkVersion = paramInt1;
    currentSdkVersion = paramInt2;
    analyticsEnabled = paramBoolean;
    lastModifiedTimeMS = System.currentTimeMillis();
  }
  
  long getLastModifiedTime()
  {
    return lastModifiedTimeMS;
  }
  
  boolean isForeground()
  {
    if (currentSdkVersion >= 14) {
      if (autoInstrumentedState != 0) {}
    }
    while (manualInstrumentedState == 0)
    {
      return true;
      return false;
    }
    return false;
  }
  
  void setStarted(int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      if ((manualInstrumentedState == 0) && (analyticsEnabled)) {
        Logger.warn("Activity " + activityName + " already added without being removed first. Call Analytics.activityStopped(this) in every activity's onStop() method.");
      }
      manualInstrumentedState = 0;
    }
    for (;;)
    {
      lastModifiedTimeMS = paramLong;
      return;
      autoInstrumentedState = 0;
    }
  }
  
  void setStopped(int paramInt, long paramLong)
  {
    if (paramInt == 0) {
      if ((manualInstrumentedState != 0) && (analyticsEnabled))
      {
        Logger.warn("Activity " + activityName + " removed without being manually added first. Call Analytics.activityStarted(this) in every activity's onStart() method.");
        manualInstrumentedState = 1;
      }
    }
    for (;;)
    {
      lastModifiedTimeMS = paramLong;
      return;
      if ((currentSdkVersion < 14) || (autoInstrumentedState != 2) || (!analyticsEnabled)) {
        break;
      }
      Logger.warn("Activity " + activityName + " removed in Analytics not during the activity's onStop() method.");
      break;
      if ((minSdkVersion < 14) && (manualInstrumentedState == 2) && (analyticsEnabled)) {
        Logger.warn("Activity " + activityName + " was not manually added during onStart(). Call Analytics.activityStarted(this) in every activity's onStart() method.");
      }
      autoInstrumentedState = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.ActivityState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */