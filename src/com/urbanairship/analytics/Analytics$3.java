package com.urbanairship.analytics;

import android.app.Activity;
import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;

final class Analytics$3
  implements UAirship.OnReadyCallback
{
  Analytics$3(Activity paramActivity, long paramLong) {}
  
  public void onAirshipReady(UAirship paramUAirship)
  {
    Analytics.access$200(paramUAirship.getAnalytics(), val$activity, 0, val$timeMS);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.Analytics.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */