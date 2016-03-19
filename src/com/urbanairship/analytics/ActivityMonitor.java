package com.urbanairship.analytics;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;

class ActivityMonitor
{
  static final int AUTO_INSTRUMENTATION = 1;
  private static final int BACKGROUND_DELAY_MS = 2000;
  static final int MANUAL_INSTRUMENTATION = 0;
  private final SparseArray<ActivityState> activityStates = new SparseArray();
  private final boolean analyticsEnabled;
  private final int currentSdkVersion;
  private boolean isForeground = false;
  private ActivityMonitor.Listener listener;
  private final int minSdkVersion;
  
  ActivityMonitor(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    minSdkVersion = paramInt1;
    currentSdkVersion = paramInt2;
    analyticsEnabled = paramBoolean;
  }
  
  private ActivityState getActivityState(Activity paramActivity)
  {
    ActivityState localActivityState2 = (ActivityState)activityStates.get(paramActivity.hashCode());
    ActivityState localActivityState1 = localActivityState2;
    if (localActivityState2 == null)
    {
      localActivityState1 = new ActivityState(paramActivity.toString(), minSdkVersion, currentSdkVersion, analyticsEnabled);
      activityStates.put(paramActivity.hashCode(), localActivityState1);
    }
    return localActivityState1;
  }
  
  void activityStarted(Activity paramActivity, int paramInt, long paramLong)
  {
    getActivityState(paramActivity).setStarted(paramInt, paramLong);
    updateForegroundState();
  }
  
  void activityStopped(Activity paramActivity, int paramInt, long paramLong)
  {
    getActivityState(paramActivity).setStopped(paramInt, paramLong);
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public void run()
      {
        updateForegroundState();
      }
    }, 2000L);
  }
  
  void setListener(ActivityMonitor.Listener paramListener)
  {
    try
    {
      listener = paramListener;
      return;
    }
    finally {}
  }
  
  void updateForegroundState()
  {
    int i = 0;
    long l2 = 0L;
    long l1 = 0L;
    boolean bool2 = false;
    if (i < activityStates.size())
    {
      ActivityState localActivityState = (ActivityState)activityStates.valueAt(i);
      boolean bool1;
      long l3;
      long l4;
      if (localActivityState.isForeground())
      {
        bool2 = true;
        bool1 = bool2;
        l3 = l2;
        l4 = l1;
        if (localActivityState.getLastModifiedTime() > l1)
        {
          l4 = localActivityState.getLastModifiedTime();
          l3 = l2;
          bool1 = bool2;
        }
      }
      for (;;)
      {
        i += 1;
        bool2 = bool1;
        l2 = l3;
        l1 = l4;
        break;
        bool1 = bool2;
        l3 = l2;
        l4 = l1;
        if (localActivityState.getLastModifiedTime() > l2)
        {
          l3 = localActivityState.getLastModifiedTime();
          bool1 = bool2;
          l4 = l1;
        }
      }
    }
    if (isForeground != bool2)
    {
      isForeground = bool2;
      if (bool2) {}
      for (;;)
      {
        try
        {
          if (listener != null) {
            listener.onForeground(l1);
          }
          return;
        }
        finally {}
        if (listener != null) {
          listener.onBackground(l2);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.ActivityMonitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */