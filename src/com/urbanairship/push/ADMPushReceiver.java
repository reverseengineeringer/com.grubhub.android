package com.urbanairship.push;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;

public class ADMPushReceiver
  extends WakefulBroadcastReceiver
{
  @SuppressLint({"NewApi"})
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Autopilot.automaticTakeOff(paramContext);
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {
      return;
    }
    Logger.verbose("ADMPushReceiver - Received intent: " + paramIntent.getAction());
    if (Build.VERSION.SDK_INT < 15)
    {
      Logger.error("ADMPushReceiver - Received intent from ADM transport on an unsupported API version.");
      return;
    }
    String str = paramIntent.getAction();
    label92:
    int i;
    switch (str.hashCode())
    {
    default: 
      i = -1;
      label94:
      switch (i)
      {
      }
      break;
    }
    while (isOrderedBroadcast())
    {
      setResultCode(-1);
      return;
      if (!str.equals("com.amazon.device.messaging.intent.RECEIVE")) {
        break label92;
      }
      i = 0;
      break label94;
      if (!str.equals("com.amazon.device.messaging.intent.REGISTRATION")) {
        break label92;
      }
      i = 1;
      break label94;
      startWakefulService(paramContext, new Intent(paramContext, PushService.class).setAction("com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE").putExtra("com.urbanairship.push.EXTRA_INTENT", paramIntent));
      continue;
      startWakefulService(paramContext, new Intent(paramContext, PushService.class).setAction("com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED").putExtra("com.urbanairship.push.EXTRA_INTENT", paramIntent));
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.ADMPushReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */