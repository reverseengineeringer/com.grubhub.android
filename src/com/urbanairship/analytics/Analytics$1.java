package com.urbanairship.analytics;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.o;

class Analytics$1
  extends ActivityMonitor.Listener
{
  Analytics$1(Analytics paramAnalytics, Context paramContext) {}
  
  public void onBackground(long paramLong)
  {
    Analytics.access$002(this$0, true);
    this$0.addEvent(new AppBackgroundEvent(paramLong));
    o.a(val$context).a(new Intent("com.urbanairship.analytics.APP_BACKGROUND"));
    this$0.setConversionSendId(null);
  }
  
  public void onForeground(long paramLong)
  {
    this$0.startNewSession();
    Analytics.access$002(this$0, false);
    o.a(val$context).a(new Intent("com.urbanairship.analytics.APP_FOREGROUND"));
    this$0.addEvent(new AppForegroundEvent(paramLong));
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.Analytics.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */