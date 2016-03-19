package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import com.google.android.gms.analytics.internal.af;
import com.google.android.gms.analytics.internal.ar;
import com.google.android.gms.analytics.internal.as;
import com.google.android.gms.analytics.internal.h;
import com.google.android.gms.analytics.internal.q;
import com.google.android.gms.analytics.internal.r;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.common.internal.aq;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class e
  extends o
{
  private static List<Runnable> b = new ArrayList();
  private boolean c;
  private boolean d;
  private Set<f> e = new HashSet();
  private boolean f;
  private boolean g;
  private volatile boolean h;
  private boolean i;
  
  public e(v paramv)
  {
    super(paramv);
  }
  
  public static e a(Context paramContext)
  {
    return v.a(paramContext).k();
  }
  
  public static void d()
  {
    try
    {
      if (b != null)
      {
        Iterator localIterator = b.iterator();
        while (localIterator.hasNext()) {
          ((Runnable)localIterator.next()).run();
        }
        b = null;
      }
    }
    finally {}
  }
  
  private r p()
  {
    return k().i();
  }
  
  private q q()
  {
    return k().l();
  }
  
  public Tracker a(String paramString)
  {
    try
    {
      paramString = new Tracker(k(), paramString, null);
      paramString.zza();
      return paramString;
    }
    finally {}
  }
  
  public void a()
  {
    b();
    c = true;
  }
  
  void a(Activity paramActivity)
  {
    Iterator localIterator = e.iterator();
    while (localIterator.hasNext()) {
      ((f)localIterator.next()).a(paramActivity);
    }
  }
  
  public void a(Application paramApplication)
  {
    if ((Build.VERSION.SDK_INT >= 14) && (!f))
    {
      paramApplication.registerActivityLifecycleCallbacks(new g(this));
      f = true;
    }
  }
  
  void a(f paramf)
  {
    e.add(paramf);
    paramf = k().b();
    if ((paramf instanceof Application)) {
      a((Application)paramf);
    }
  }
  
  @Deprecated
  public void a(l paraml)
  {
    h.a(paraml);
    if (!i)
    {
      Log.i((String)ar.c.a(), "GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag." + (String)ar.c.a() + " DEBUG");
      i = true;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  void b()
  {
    q localq = q();
    if (localq.c()) {
      g().a(localq.d());
    }
    if (localq.g()) {
      a(localq.h());
    }
    if (localq.c())
    {
      l locall = h.a();
      if (locall != null) {
        locall.a(localq.d());
      }
    }
  }
  
  void b(Activity paramActivity)
  {
    Iterator localIterator = e.iterator();
    while (localIterator.hasNext()) {
      ((f)localIterator.next()).b(paramActivity);
    }
  }
  
  void b(f paramf)
  {
    e.remove(paramf);
  }
  
  public boolean c()
  {
    return (c) && (!d);
  }
  
  public boolean e()
  {
    return g;
  }
  
  public boolean f()
  {
    return h;
  }
  
  @Deprecated
  public l g()
  {
    return h.a();
  }
  
  public String h()
  {
    aq.c("getClientId can not be called from the main thread");
    return k().p().a();
  }
  
  public void i()
  {
    p().b();
  }
  
  void j()
  {
    p().c();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */