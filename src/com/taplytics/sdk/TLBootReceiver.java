package com.taplytics.sdk;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.taplytics.am;
import com.taplytics.fy;

public class TLBootReceiver
  extends WakefulBroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    fy.e().a(new am(this, paramIntent));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.TLBootReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */