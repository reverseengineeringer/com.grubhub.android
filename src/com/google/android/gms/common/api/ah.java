package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class ah
  extends Handler
{
  ah(zzg paramzzg, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      Log.w("GoogleApiClientImpl", "Unknown message id: " + what);
      return;
    case 1: 
      zzg.d(a);
      return;
    }
    zzg.c(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */