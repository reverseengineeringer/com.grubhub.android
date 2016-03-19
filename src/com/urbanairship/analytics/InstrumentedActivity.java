package com.urbanairship.analytics;

import android.app.Activity;
import android.os.Bundle;
import com.urbanairship.Autopilot;

public class InstrumentedActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Autopilot.automaticTakeOff(getApplication());
  }
  
  public void onStart()
  {
    super.onStart();
    Analytics.activityStarted(this);
  }
  
  public void onStop()
  {
    super.onStop();
    Analytics.activityStopped(this);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.InstrumentedActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */