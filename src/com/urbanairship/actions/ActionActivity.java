package com.urbanairship.actions;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;
import com.urbanairship.analytics.Analytics;

public class ActionActivity
  extends Activity
{
  public static final String RESULT_INTENT_EXTRA = "com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA";
  public static final String RESULT_RECEIVER_EXTRA = "com.urbanairship.actions.actionactivity.RESULT_RECEIVER_EXTRA";
  public static final String START_ACTIVITY_INTENT_EXTRA = "com.urbanairship.actions.START_ACTIVITY_INTENT_EXTRA";
  private static int requestCode = 0;
  private ResultReceiver actionResultReceiver;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (actionResultReceiver != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA", paramIntent);
      actionResultReceiver.send(paramInt2, localBundle);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    finish();
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Autopilot.automaticTakeOff(getApplication());
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      Logger.warn("ActionActivity - Started with null intent");
      finish();
    }
    while (paramBundle != null) {
      return;
    }
    paramBundle = (Intent)localIntent.getParcelableExtra("com.urbanairship.actions.START_ACTIVITY_INTENT_EXTRA");
    if (paramBundle != null)
    {
      actionResultReceiver = ((ResultReceiver)localIntent.getParcelableExtra("com.urbanairship.actions.actionactivity.RESULT_RECEIVER_EXTRA"));
      int i = requestCode + 1;
      requestCode = i;
      startActivityForResult(paramBundle, i);
      return;
    }
    Logger.warn("ActionActivity - Started without START_ACTIVITY_INTENT_EXTRA extra.");
    finish();
  }
  
  protected void onStart()
  {
    super.onStart();
    Analytics.activityStarted(this);
  }
  
  protected void onStop()
  {
    super.onStop();
    Analytics.activityStopped(this);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */