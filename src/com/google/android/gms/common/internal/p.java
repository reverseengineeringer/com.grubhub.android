package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import java.util.concurrent.atomic.AtomicInteger;

final class p
  extends Handler
{
  public p(n paramn, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  private void a(Message paramMessage)
  {
    paramMessage = (q)obj;
    paramMessage.b();
    paramMessage.d();
  }
  
  private boolean b(Message paramMessage)
  {
    return (what == 2) || (what == 1) || (what == 5) || (what == 6);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (a.b.get() != arg1)
    {
      if (b(paramMessage)) {
        a(paramMessage);
      }
      return;
    }
    if (((what == 1) || (what == 5) || (what == 6)) && (!a.h()))
    {
      a(paramMessage);
      return;
    }
    if (what == 3)
    {
      paramMessage = new ConnectionResult(arg2, null);
      n.a(a).a(paramMessage);
      a.a(paramMessage);
      return;
    }
    if (what == 4)
    {
      n.a(a, 4, null);
      if (n.b(a) != null) {
        n.b(a).onConnectionSuspended(arg2);
      }
      a.a(arg2);
      n.a(a, 4, 1, null);
      return;
    }
    if ((what == 2) && (!a.b()))
    {
      a(paramMessage);
      return;
    }
    if (b(paramMessage))
    {
      ((q)obj).c();
      return;
    }
    Log.wtf("GmsClient", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */