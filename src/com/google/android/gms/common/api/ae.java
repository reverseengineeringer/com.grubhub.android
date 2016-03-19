package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.aq;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

class ae
  implements p
{
  private final WeakReference<ab> a;
  private final c<?> b;
  private final int c;
  
  public ae(ab paramab, c<?> paramc, int paramInt)
  {
    a = new WeakReference(paramab);
    b = paramc;
    c = paramInt;
  }
  
  public void a(ConnectionResult paramConnectionResult)
  {
    boolean bool = false;
    ab localab = (ab)a.get();
    if (localab == null) {
      return;
    }
    if (Looper.myLooper() == ab.b(localab).getLooper()) {
      bool = true;
    }
    aq.a(bool, "onReportServiceBinding must be called on the GoogleApiClient handler thread");
    ab.a(localab).lock();
    try
    {
      bool = ab.a(localab, 0);
      if (!bool) {
        return;
      }
      if (!paramConnectionResult.b()) {
        ab.a(localab, paramConnectionResult, b, c);
      }
      if (ab.f(localab)) {
        ab.g(localab);
      }
      return;
    }
    finally
    {
      ab.a(localab).unlock();
    }
  }
  
  public void b(ConnectionResult paramConnectionResult)
  {
    boolean bool = true;
    ab localab = (ab)a.get();
    if (localab == null) {
      return;
    }
    if (Looper.myLooper() == ab.b(localab).getLooper()) {}
    for (;;)
    {
      aq.a(bool, "onReportAccountValidation must be called on the GoogleApiClient handler thread");
      ab.a(localab).lock();
      try
      {
        bool = ab.a(localab, 1);
        if (!bool)
        {
          return;
          bool = false;
          continue;
        }
        if (!paramConnectionResult.b()) {
          ab.a(localab, paramConnectionResult, b, c);
        }
        if (ab.f(localab)) {
          ab.h(localab);
        }
        return;
      }
      finally
      {
        ab.a(localab).unlock();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */