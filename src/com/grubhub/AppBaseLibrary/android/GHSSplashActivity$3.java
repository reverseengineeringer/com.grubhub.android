package com.grubhub.AppBaseLibrary.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class GHSSplashActivity$3
  extends BroadcastReceiver
{
  GHSSplashActivity$3(GHSSplashActivity paramGHSSplashActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.grubhub.AppBaseLibrary.android.utils.BROADCAST".equals(paramIntent.getAction()))
    {
      GHSSplashActivity.a(a, true);
      GHSSplashActivity.d(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSSplashActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */