package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.gcm.GcmReceiver;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;

public class GCMPushReceiver
  extends GcmReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    super.onReceive(paramContext, paramIntent);
    Autopilot.automaticTakeOff(paramContext);
    Logger.verbose("GCMPushReceiver - Received intent: " + paramIntent.getAction());
    if ("com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction())) {
      startWakefulService(paramContext, new Intent(paramContext, PushService.class).setAction("com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE").putExtra("com.urbanairship.push.EXTRA_INTENT", paramIntent));
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.GCMPushReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */