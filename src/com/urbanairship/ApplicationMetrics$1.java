package com.urbanairship;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class ApplicationMetrics$1
  extends BroadcastReceiver
{
  ApplicationMetrics$1(ApplicationMetrics paramApplicationMetrics) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ApplicationMetrics.access$000(this$0).put("com.urbanairship.application.metrics.LAST_OPEN", System.currentTimeMillis());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.ApplicationMetrics.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */