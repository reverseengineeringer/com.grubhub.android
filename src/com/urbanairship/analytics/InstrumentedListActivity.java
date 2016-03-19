package com.urbanairship.analytics;

import android.app.ListActivity;
import android.os.Bundle;
import com.urbanairship.Autopilot;

public class InstrumentedListActivity
  extends ListActivity
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
 * Qualified Name:     com.urbanairship.analytics.InstrumentedListActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */