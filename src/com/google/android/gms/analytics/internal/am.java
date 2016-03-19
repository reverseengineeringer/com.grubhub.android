package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bc;
import com.google.android.gms.d.bs;

abstract class am
{
  private static volatile Handler b;
  private final v a;
  private final Runnable c;
  private volatile long d;
  private boolean e;
  
  am(v paramv)
  {
    aq.a(paramv);
    a = paramv;
    c = new Runnable()
    {
      public void run()
      {
        if (Looper.myLooper() == Looper.getMainLooper()) {
          am.a(am.this).h().a(this);
        }
        boolean bool;
        do
        {
          return;
          bool = c();
          am.a(am.this, 0L);
        } while ((!bool) || (am.b(am.this)));
        a();
      }
    };
  }
  
  private Handler e()
  {
    if (b != null) {
      return b;
    }
    try
    {
      if (b == null) {
        b = new Handler(a.b().getMainLooper());
      }
      Handler localHandler = b;
      return localHandler;
    }
    finally {}
  }
  
  public abstract void a();
  
  public void a(long paramLong)
  {
    d();
    if (paramLong >= 0L)
    {
      d = a.d().a();
      if (!e().postDelayed(c, paramLong)) {
        a.f().zze("Failed to schedule delayed post. time", Long.valueOf(paramLong));
      }
    }
  }
  
  public long b()
  {
    if (d == 0L) {
      return 0L;
    }
    return Math.abs(a.d().a() - d);
  }
  
  public void b(long paramLong)
  {
    long l = 0L;
    if (!c()) {
      return;
    }
    if (paramLong < 0L)
    {
      d();
      return;
    }
    paramLong -= Math.abs(a.d().a() - d);
    if (paramLong < 0L) {
      paramLong = l;
    }
    for (;;)
    {
      e().removeCallbacks(c);
      if (e().postDelayed(c, paramLong)) {
        break;
      }
      a.f().zze("Failed to adjust delayed post. time", Long.valueOf(paramLong));
      return;
    }
  }
  
  public boolean c()
  {
    return d != 0L;
  }
  
  public void d()
  {
    d = 0L;
    e().removeCallbacks(c);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */