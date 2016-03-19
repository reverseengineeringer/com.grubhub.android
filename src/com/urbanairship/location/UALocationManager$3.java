package com.urbanairship.location;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.o;

class UALocationManager$3
  implements Runnable
{
  UALocationManager$3(UALocationManager paramUALocationManager) {}
  
  public void run()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.urbanairship.analytics.APP_FOREGROUND");
    localIntentFilter.addAction("com.urbanairship.analytics.APP_BACKGROUND");
    o.a(UALocationManager.access$300(this$0)).a(new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        UALocationManager.access$200(this$0);
      }
    }, localIntentFilter);
    UALocationManager.access$200(this$0);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.UALocationManager.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */