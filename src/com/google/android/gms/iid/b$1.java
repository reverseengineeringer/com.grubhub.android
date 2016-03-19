package com.google.android.gms.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class b$1
  extends Handler
{
  b$1(b paramb, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    b.zza(a, paramMessage, MessengerCompat.a(paramMessage));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */