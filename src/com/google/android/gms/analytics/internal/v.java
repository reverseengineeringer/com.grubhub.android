package com.google.android.gms.analytics.internal;

import android.app.Application;
import android.content.Context;
import com.google.android.gms.analytics.e;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bc;
import com.google.android.gms.d.bd;
import com.google.android.gms.d.bs;

public class v
{
  private static v a;
  private final Context b;
  private final Context c;
  private final bc d;
  private final ak e;
  private final i f;
  private final bs g;
  private final r h;
  private final ao i;
  private final q j;
  private final l k;
  private final e l;
  private final af m;
  private final a n;
  private final ac o;
  private final an p;
  
  protected v(w paramw)
  {
    Object localObject1 = paramw.a();
    aq.a(localObject1, "Application context can't be null");
    aq.b(localObject1 instanceof Application, "getApplicationContext didn't return the application");
    Object localObject2 = paramw.b();
    aq.a(localObject2);
    b = ((Context)localObject1);
    c = ((Context)localObject2);
    d = paramw.h(this);
    e = paramw.g(this);
    localObject2 = paramw.f(this);
    ((i)localObject2).zza();
    f = ((i)localObject2);
    if (e().a()) {
      f().zzaV("Google Analytics " + u.a + " is starting up.");
    }
    for (;;)
    {
      localObject2 = paramw.q(this);
      ((l)localObject2).zza();
      k = ((l)localObject2);
      localObject2 = paramw.e(this);
      ((q)localObject2).zza();
      j = ((q)localObject2);
      localObject2 = paramw.l(this);
      af localaf = paramw.d(this);
      a locala = paramw.c(this);
      ac localac = paramw.b(this);
      an localan = paramw.a(this);
      localObject1 = paramw.a((Context)localObject1);
      ((bs)localObject1).a(a());
      g = ((bs)localObject1);
      localObject1 = paramw.i(this);
      localaf.zza();
      m = localaf;
      locala.zza();
      n = locala;
      localac.zza();
      o = localac;
      localan.zza();
      p = localan;
      paramw = paramw.p(this);
      paramw.zza();
      i = paramw;
      ((r)localObject2).zza();
      h = ((r)localObject2);
      if (e().a()) {
        f().zzb("Device AnalyticsService version", u.a);
      }
      ((e)localObject1).a();
      l = ((e)localObject1);
      ((r)localObject2).a();
      return;
      f().zzaV("Google Analytics " + u.a + " is starting up. " + "To enable debug logging on a device run:\n" + "  adb shell setprop log.tag.GAv4 DEBUG\n" + "  adb logcat -s GAv4");
    }
  }
  
  public static v a(Context paramContext)
  {
    aq.a(paramContext);
    if (a == null) {}
    try
    {
      if (a == null)
      {
        bc localbc = bd.c();
        long l1 = localbc.b();
        paramContext = new v(new w(paramContext.getApplicationContext()));
        a = paramContext;
        e.d();
        l1 = localbc.b() - l1;
        long l2 = ((Long)ar.Q.a()).longValue();
        if (l1 > l2) {
          paramContext.f().zzc("Slow initialization (ms)", Long.valueOf(l1), Long.valueOf(l2));
        }
      }
      return a;
    }
    finally {}
  }
  
  private void a(t paramt)
  {
    aq.a(paramt, "Analytics service not created/initialized");
    aq.b(paramt.isInitialized(), "Analytics service not initialized");
  }
  
  protected Thread.UncaughtExceptionHandler a()
  {
    new Thread.UncaughtExceptionHandler()
    {
      public void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
      {
        paramAnonymousThread = g();
        if (paramAnonymousThread != null) {
          paramAnonymousThread.zze("Job execution failed", paramAnonymousThrowable);
        }
      }
    };
  }
  
  public Context b()
  {
    return b;
  }
  
  public Context c()
  {
    return c;
  }
  
  public bc d()
  {
    return d;
  }
  
  public ak e()
  {
    return e;
  }
  
  public i f()
  {
    a(f);
    return f;
  }
  
  public i g()
  {
    return f;
  }
  
  public bs h()
  {
    aq.a(g);
    return g;
  }
  
  public r i()
  {
    a(h);
    return h;
  }
  
  public ao j()
  {
    a(i);
    return i;
  }
  
  public e k()
  {
    aq.a(l);
    aq.b(l.c(), "Analytics instance not initialized");
    return l;
  }
  
  public q l()
  {
    a(j);
    return j;
  }
  
  public l m()
  {
    a(k);
    return k;
  }
  
  public l n()
  {
    if ((k == null) || (!k.isInitialized())) {
      return null;
    }
    return k;
  }
  
  public a o()
  {
    a(n);
    return n;
  }
  
  public af p()
  {
    a(m);
    return m;
  }
  
  public ac q()
  {
    a(o);
    return o;
  }
  
  public an r()
  {
    return p;
  }
  
  public void s() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */