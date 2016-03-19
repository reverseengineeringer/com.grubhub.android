package com.taplytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.taplytics.sdk.TLGcmBroadcastReceiver;
import com.taplytics.sdk.TLGcmIntentService;

public class av
  implements Runnable
{
  public av(TLGcmBroadcastReceiver paramTLGcmBroadcastReceiver, Context paramContext, Intent paramIntent) {}
  
  public void run()
  {
    if ((!fy.e().j()) || (iz.a(kb.buffalo))) {}
    do
    {
      return;
      if (ck.c()) {
        ck.a("Receiving push notification");
      }
    } while ((fy.e() == null) || (fy.e().p() == null) || (fy.e().p().getPackageName() == null) || (!iz.a(fy.e().p(), "android.permission.WAKE_LOCK")));
    ComponentName localComponentName = new ComponentName(fy.e().p().getPackageName(), TLGcmIntentService.class.getName());
    WakefulBroadcastReceiver.startWakefulService(a, b.setComponent(localComponentName));
    c.setResultCode(-1);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */