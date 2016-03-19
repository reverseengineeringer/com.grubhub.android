package com.crashlytics.android.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

public final class v
  extends p
{
  private b a = new B(m.a);
  private AtomicReference<q> b = new AtomicReference();
  private boolean c;
  private File d;
  private Application e;
  private WeakReference<Activity> f;
  private String g;
  private int h = 4;
  private ConcurrentHashMap<Class<? extends u>, u> i = new ConcurrentHashMap();
  
  public static v a()
  {
    return y.a();
  }
  
  private v a(Activity paramActivity)
  {
    f = new WeakReference(paramActivity);
    return this;
  }
  
  public static void a(Context paramContext, u... paramVarArgs)
  {
    for (;;)
    {
      try
      {
        boolean bool = y.a().isInitialized();
        if (bool) {
          return;
        }
        v localv = y.a();
        e = r.b(paramContext);
        localv = localv.a(r.a(paramContext));
        int k = paramVarArgs.length;
        int j = 0;
        if (j < k)
        {
          u localu = paramVarArgs[j];
          if (!i.containsKey(paramVarArgs)) {
            i.putIfAbsent(localu.getClass(), localu);
          }
        }
        else
        {
          localv.a(paramContext);
          continue;
        }
        j += 1;
      }
      finally {}
    }
  }
  
  public final <T extends u> T a(Class<T> paramClass)
  {
    return (u)i.get(paramClass);
  }
  
  public final void a(q paramq)
  {
    b.set(paramq);
  }
  
  public final void a(String paramString)
  {
    g = paramString;
  }
  
  public final void a(boolean paramBoolean)
  {
    c = paramBoolean;
    if (paramBoolean) {}
    for (int j = 3;; j = 4)
    {
      h = j;
      return;
    }
  }
  
  public final q b()
  {
    Object localObject2 = (q)b.get();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = new r();
      localObject1 = localObject2;
      if (!b.compareAndSet(null, localObject2)) {
        localObject1 = (q)b.get();
      }
    }
    return (q)localObject1;
  }
  
  protected final void c()
  {
    Context localContext = getContext();
    d = new File(localContext.getFilesDir(), "com.crashlytics.sdk.android");
    if (!d.exists()) {
      d.mkdirs();
    }
    if (Build.VERSION.SDK_INT >= 14) {
      w.a(new w(this, (byte)0), e);
    }
    Object localObject;
    if ((c) && (Log.isLoggable("CrashlyticsInternal", 3)))
    {
      localObject = new StringBuilder();
      Iterator localIterator = i.values().iterator();
      while (localIterator.hasNext())
      {
        p localp = (p)localIterator.next();
        long l = System.nanoTime();
        localp.a(localContext);
        ((StringBuilder)localObject).append("sdkPerfStart.").append(localp.getClass().getName()).append('=').append(System.nanoTime() - l).append('\n');
      }
      Log.d("CrashlyticsInternal", ((StringBuilder)localObject).toString());
    }
    for (;;)
    {
      return;
      localObject = i.values().iterator();
      while (((Iterator)localObject).hasNext()) {
        ((p)((Iterator)localObject).next()).a(localContext);
      }
    }
  }
  
  public final Application d()
  {
    return e;
  }
  
  public final Activity e()
  {
    if (f != null) {
      return (Activity)f.get();
    }
    return null;
  }
  
  public final boolean f()
  {
    return c;
  }
  
  public final int g()
  {
    return h;
  }
  
  public final String getVersion()
  {
    return "1.1.13.29";
  }
  
  public final File h()
  {
    return d;
  }
  
  public final String i()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */