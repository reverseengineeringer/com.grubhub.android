package com.google.android.gms.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.common.internal.aq;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

public final class bs
{
  private static volatile bs a;
  private final Context b;
  private final List<bw> c;
  private final bn d;
  private final bt e;
  private volatile by f;
  private Thread.UncaughtExceptionHandler g;
  
  bs(Context paramContext)
  {
    paramContext = paramContext.getApplicationContext();
    aq.a(paramContext);
    b = paramContext;
    e = new bt(this);
    c = new CopyOnWriteArrayList();
    d = new bn();
  }
  
  public static bs a(Context paramContext)
  {
    aq.a(paramContext);
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new bs(paramContext);
      }
      return a;
    }
    finally {}
  }
  
  private void b(bo parambo)
  {
    aq.c("deliver should be called from worker thread");
    aq.b(parambo.f(), "Measurement must be submitted");
    Object localObject = parambo.c();
    if (((List)localObject).isEmpty()) {}
    for (;;)
    {
      return;
      HashSet localHashSet = new HashSet();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        bx localbx = (bx)((Iterator)localObject).next();
        Uri localUri = localbx.a();
        if (!localHashSet.contains(localUri))
        {
          localHashSet.add(localUri);
          localbx.a(parambo);
        }
      }
    }
  }
  
  public static void d()
  {
    if (!(Thread.currentThread() instanceof bv)) {
      throw new IllegalStateException("Call expected from worker thread");
    }
  }
  
  public by a()
  {
    if (f == null) {}
    Object localObject5;
    Object localObject3;
    try
    {
      by localby;
      PackageManager localPackageManager;
      String str2;
      if (f == null)
      {
        localby = new by();
        localPackageManager = b.getPackageManager();
        str2 = b.getPackageName();
        localby.c(str2);
        localby.d(localPackageManager.getInstallerPackageName(str2));
        localObject5 = null;
        localObject3 = str2;
      }
      try
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageInfo(b.getPackageName(), 0);
        localObject4 = localObject5;
        str1 = str2;
        if (localPackageInfo != null)
        {
          localObject3 = str2;
          localObject4 = localPackageManager.getApplicationLabel(applicationInfo);
          str1 = str2;
          localObject3 = str2;
          if (!TextUtils.isEmpty((CharSequence)localObject4))
          {
            localObject3 = str2;
            str1 = ((CharSequence)localObject4).toString();
          }
          localObject3 = str1;
          localObject4 = versionName;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          String str1;
          Log.e("GAv4", "Error retrieving package info: appName set to " + (String)localObject3);
          Object localObject4 = localObject5;
          Object localObject1 = localObject3;
        }
      }
      localby.a(str1);
      localby.b((String)localObject4);
      f = localby;
      return f;
    }
    finally {}
  }
  
  public <V> Future<V> a(Callable<V> paramCallable)
  {
    aq.a(paramCallable);
    if ((Thread.currentThread() instanceof bv))
    {
      paramCallable = new FutureTask(paramCallable);
      paramCallable.run();
      return paramCallable;
    }
    return e.submit(paramCallable);
  }
  
  void a(final bo parambo)
  {
    if (parambo.j()) {
      throw new IllegalStateException("Measurement prototype can't be submitted");
    }
    if (parambo.f()) {
      throw new IllegalStateException("Measurement can only be submitted once");
    }
    parambo = parambo.a();
    parambo.g();
    e.execute(new Runnable()
    {
      public void run()
      {
        parambo.h().a(parambo);
        Iterator localIterator = bs.a(bs.this).iterator();
        while (localIterator.hasNext()) {
          ((bw)localIterator.next()).a(parambo);
        }
        bs.a(bs.this, parambo);
      }
    });
  }
  
  public void a(Runnable paramRunnable)
  {
    aq.a(paramRunnable);
    e.submit(paramRunnable);
  }
  
  public void a(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    g = paramUncaughtExceptionHandler;
  }
  
  public ca b()
  {
    DisplayMetrics localDisplayMetrics = b.getResources().getDisplayMetrics();
    ca localca = new ca();
    localca.a(p.a(Locale.getDefault()));
    localca.b(widthPixels);
    localca.c(heightPixels);
    return localca;
  }
  
  public Context c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */