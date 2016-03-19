package com.grubhub.AppBaseLibrary.android;

import android.os.Handler;
import android.os.Message;

class GHSSplashActivity$6
  extends Handler
{
  GHSSplashActivity$6(GHSSplashActivity paramGHSSplashActivity) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1)
    {
      if (GHSSplashActivity.a(a)) {
        GHSSplashActivity.b(a);
      }
    }
    else {
      return;
    }
    GHSSplashActivity.c(a);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSSplashActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */