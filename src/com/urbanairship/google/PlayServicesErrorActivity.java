package com.urbanairship.google;

import android.content.Intent;
import android.support.v4.app.q;
import android.support.v4.app.w;
import com.google.android.gms.common.e;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.push.PushManager;

public class PlayServicesErrorActivity
  extends q
{
  private static final String DIALOG_TAG = "error_dialog";
  private static final int REQUEST_RESOLVE_ERROR = 1000;
  
  private void checkPlayServices()
  {
    Logger.info("Checking Google Play services.");
    int i = e.a(this);
    if (i == 0)
    {
      Logger.info("Google Play services available!");
      finish();
      return;
    }
    if (e.b(i))
    {
      Logger.info("Google Play services recoverable error: " + i);
      PlayServicesErrorActivity.ErrorDialogFragment.createInstance(i).show(getSupportFragmentManager(), "error_dialog");
      return;
    }
    Logger.error("Unrecoverable Google Play services error: " + i);
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1000)
    {
      if (paramInt2 == -1)
      {
        Logger.info("Google Play services resolution received result ok.");
        checkPlayServices();
      }
    }
    else {
      return;
    }
    Logger.error("Google Play services resolution canceled.");
    finish();
  }
  
  protected void onStart()
  {
    super.onStart();
    Analytics.activityStarted(this);
    if (getSupportFragmentManager().a("error_dialog") == null) {
      checkPlayServices();
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    Analytics.activityStopped(this);
    if ((isFinishing()) && (e.a(this) == 0) && (UAirship.shared().getPushManager().isPushEnabled())) {
      UAirship.shared().getPushManager().updateRegistration();
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.google.PlayServicesErrorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */