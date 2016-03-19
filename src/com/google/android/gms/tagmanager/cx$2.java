package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class cx$2
  implements Handler.Callback
{
  cx$2(cx paramcx) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) && (cx.e().equals(obj)))
    {
      a.a();
      if ((cx.b(a) > 0) && (!cx.c(a))) {
        cx.d(a).sendMessageDelayed(cx.d(a).obtainMessage(1, cx.e()), cx.b(a));
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cx.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */