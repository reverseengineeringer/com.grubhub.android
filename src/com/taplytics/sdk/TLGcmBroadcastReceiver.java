package com.taplytics.sdk;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.taplytics.av;
import com.taplytics.fy;

public class TLGcmBroadcastReceiver
  extends WakefulBroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    fy.e().a(new av(this, paramContext, paramIntent));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.TLGcmBroadcastReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */