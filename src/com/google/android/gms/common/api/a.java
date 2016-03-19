package com.google.android.gms.common.api;

import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.common.internal.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class a<R extends v>
  implements s<R>
{
  protected final b<R> a;
  private final Object b = new Object();
  private final CountDownLatch c = new CountDownLatch(1);
  private final ArrayList<t> d = new ArrayList();
  private w<R> e;
  private volatile R f;
  private volatile boolean g;
  private boolean h;
  private boolean i;
  private d j;
  
  protected a(Looper paramLooper)
  {
    a = new b(paramLooper);
  }
  
  static void b(v paramv)
  {
    if ((paramv instanceof u)) {}
    try
    {
      ((u)paramv).b();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.w("AbstractPendingResult", "Unable to release " + paramv, localRuntimeException);
    }
  }
  
  private void c(R paramR)
  {
    f = paramR;
    j = null;
    c.countDown();
    paramR = f.a();
    if (e != null)
    {
      a.a();
      if (!h) {
        a.a(e, g());
      }
    }
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      ((t)localIterator.next()).a(paramR);
    }
    d.clear();
  }
  
  private R g()
  {
    boolean bool = true;
    synchronized (b)
    {
      if (!g)
      {
        aq.a(bool, "Result has already been consumed.");
        aq.a(a(), "Result is not ready.");
        v localv = f;
        f = null;
        e = null;
        g = true;
        d();
        return localv;
      }
      bool = false;
    }
  }
  
  public final void a(Status paramStatus)
  {
    synchronized (b)
    {
      if (!a())
      {
        a(b(paramStatus));
        i = true;
      }
      return;
    }
  }
  
  public final void a(R paramR)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (b)
      {
        if ((i) || (h))
        {
          b(paramR);
          return;
        }
        if (!a())
        {
          bool1 = true;
          aq.a(bool1, "Results have already been set");
          if (g) {
            break label83;
          }
          bool1 = bool2;
          aq.a(bool1, "Result has already been consumed");
          c(paramR);
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label83:
      bool1 = false;
    }
  }
  
  public final void a(w<R> paramw)
  {
    if (!g) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "Result has already been consumed.");
      for (;;)
      {
        synchronized (b)
        {
          if (c()) {
            return;
          }
          if (a())
          {
            a.a(paramw, g());
            return;
          }
        }
        e = paramw;
      }
    }
  }
  
  public final void a(w<R> paramw, long paramLong, TimeUnit paramTimeUnit)
  {
    if (!g) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "Result has already been consumed.");
      for (;;)
      {
        synchronized (b)
        {
          if (c()) {
            return;
          }
          if (a())
          {
            a.a(paramw, g());
            return;
          }
        }
        e = paramw;
        a.a(this, paramTimeUnit.toMillis(paramLong));
      }
    }
  }
  
  public final boolean a()
  {
    return c.getCount() == 0L;
  }
  
  protected abstract R b(Status paramStatus);
  
  public void b()
  {
    synchronized (b)
    {
      if ((h) || (g)) {
        return;
      }
      d locald = j;
      if (locald == null) {}
    }
    try
    {
      j.a();
      b(f);
      e = null;
      h = true;
      c(b(Status.e));
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
  }
  
  public boolean c()
  {
    synchronized (b)
    {
      boolean bool = h;
      return bool;
    }
  }
  
  protected void d() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */