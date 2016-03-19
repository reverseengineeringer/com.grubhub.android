package com.urbanairship.analytics;

import android.app.Activity;
import android.app.Application;
import com.urbanairship.LifeCycleCallbacks;
import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;

final class Analytics$4
  extends LifeCycleCallbacks
{
  Analytics$4(Application paramApplication)
  {
    super(paramApplication);
  }
  
  public void onActivityStarted(final Activity paramActivity)
  {
    UAirship.shared(new UAirship.OnReadyCallback()
    {
      public void onAirshipReady(UAirship paramAnonymousUAirship)
      {
        Analytics.access$100(paramAnonymousUAirship.getAnalytics(), paramActivity, 1, val$timeStamp);
      }
    });
  }
  
  public void onActivityStopped(final Activity paramActivity)
  {
    UAirship.shared(new UAirship.OnReadyCallback()
    {
      public void onAirshipReady(UAirship paramAnonymousUAirship)
      {
        Analytics.access$200(paramAnonymousUAirship.getAnalytics(), paramActivity, 1, val$timeStamp);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.Analytics.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */