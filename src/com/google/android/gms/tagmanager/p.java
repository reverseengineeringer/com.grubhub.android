package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.a.a.a;
import com.google.android.gms.a.a.b;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.d.bc;
import com.google.android.gms.d.bd;
import java.io.IOException;

class p
{
  private static Object j = new Object();
  private static p k;
  private volatile long a = 900000L;
  private volatile long b = 30000L;
  private volatile boolean c = false;
  private volatile b d;
  private volatile long e;
  private final Context f;
  private final bc g;
  private final Thread h;
  private q i = new q()
  {
    public b a()
    {
      try
      {
        b localb = a.b(p.a(p.this));
        return localb;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        ba.b("IllegalStateException getting Advertising Id Info");
        return null;
      }
      catch (d locald)
      {
        ba.b("GooglePlayServicesRepairableException getting Advertising Id Info");
        return null;
      }
      catch (IOException localIOException)
      {
        ba.b("IOException getting Ad Id Info");
        return null;
      }
      catch (c localc)
      {
        ba.b("GooglePlayServicesNotAvailableException getting Advertising Id Info");
        return null;
      }
      catch (Exception localException)
      {
        ba.b("Unknown exception. Could not get the Advertising Id Info.");
      }
      return null;
    }
  };
  
  private p(Context paramContext)
  {
    this(paramContext, null, bd.c());
  }
  
  p(Context paramContext, q paramq, bc parambc)
  {
    g = parambc;
    if (paramContext != null) {}
    for (f = paramContext.getApplicationContext();; f = paramContext)
    {
      if (paramq != null) {
        i = paramq;
      }
      h = new Thread(new Runnable()
      {
        public void run()
        {
          p.b(p.this);
        }
      });
      return;
    }
  }
  
  static p a(Context paramContext)
  {
    if (k == null) {}
    synchronized (j)
    {
      if (k == null)
      {
        k = new p(paramContext);
        k.d();
      }
      return k;
    }
  }
  
  private void e()
  {
    Process.setThreadPriority(10);
    while (!c) {
      try
      {
        d = i.a();
        Thread.sleep(a);
      }
      catch (InterruptedException localInterruptedException)
      {
        ba.c("sleep interrupted in AdvertiserDataPoller thread; continuing");
      }
    }
  }
  
  private void f()
  {
    if (g.a() - e < b) {
      return;
    }
    c();
    e = g.a();
  }
  
  public String a()
  {
    f();
    if (d == null) {
      return null;
    }
    return d.a();
  }
  
  public boolean b()
  {
    f();
    if (d == null) {
      return true;
    }
    return d.b();
  }
  
  void c()
  {
    h.interrupt();
  }
  
  void d()
  {
    h.start();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */