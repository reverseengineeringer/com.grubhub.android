package com.urbanairship.analytics;

import android.app.Activity;
import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;

class Analytics$4$1
  implements UAirship.OnReadyCallback
{
  Analytics$4$1(Analytics.4 param4, Activity paramActivity, long paramLong) {}
  
  public void onAirshipReady(UAirship paramUAirship)
  {
    Analytics.access$100(paramUAirship.getAnalytics(), val$activity, 1, val$timeStamp);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.Analytics.4.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */