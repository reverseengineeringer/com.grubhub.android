package com.grubhub.AppBaseLibrary.android.views;

import android.os.Handler;
import android.os.Message;

class u
  extends Handler
{
  private s a;
  private GHSLoadingViewFlipper b;
  
  public u(GHSLoadingViewFlipper paramGHSLoadingViewFlipper)
  {
    b = paramGHSLoadingViewFlipper;
  }
  
  public void a(s params)
  {
    a = params;
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    do
    {
      return;
      if (b != null) {
        b.a();
      }
      paramMessage = (String)obj;
    } while (a == null);
    a.e(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */