package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;

public class b<R extends v>
  extends Handler
{
  public b()
  {
    this(Looper.getMainLooper());
  }
  
  public b(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void a()
  {
    removeMessages(2);
  }
  
  public void a(a<R> parama, long paramLong)
  {
    sendMessageDelayed(obtainMessage(2, parama), paramLong);
  }
  
  public void a(w<R> paramw, R paramR)
  {
    sendMessage(obtainMessage(1, new Pair(paramw, paramR)));
  }
  
  protected void b(w<R> paramw, R paramR)
  {
    try
    {
      paramw.a(paramR);
      return;
    }
    catch (RuntimeException paramw)
    {
      a.b(paramR);
      throw paramw;
    }
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      Log.wtf("AbstractPendingResult", "Don't know how to handle this message.");
      return;
    case 1: 
      paramMessage = (Pair)obj;
      b((w)first, (v)second);
      return;
    }
    ((a)obj).a(Status.d);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */