package com.paypal.android.sdk;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

final class bj
  extends Handler
{
  private final WeakReference a;
  
  public bj(bf parambf)
  {
    a = new WeakReference(parambf);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    bf localbf = (bf)a.get();
    if (localbf != null) {
      localbf.a(paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */