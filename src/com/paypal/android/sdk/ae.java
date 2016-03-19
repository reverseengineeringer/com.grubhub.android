package com.paypal.android.sdk;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

final class ae
  extends Handler
{
  private WeakReference a;
  
  public ae(ad paramad)
  {
    a = new WeakReference(paramad);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    ad localad;
    do
    {
      return;
      localad = (ad)a.get();
    } while (localad == null);
    ad.a(localad, (dz)obj);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */