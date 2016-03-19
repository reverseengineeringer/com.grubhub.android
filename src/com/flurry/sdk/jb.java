package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public class jb
  implements jf.a
{
  private static jb a;
  private static final String b = jb.class.getSimpleName();
  private final Map<Context, iz> c = new WeakHashMap();
  private final jc d = new jc();
  private final Object e = new Object();
  private long f;
  private long g;
  private iz h;
  private hw<jd> i = new hw()
  {
    public void a(jd paramAnonymousjd)
    {
      jb.a(jb.this);
    }
  };
  private hw<hq> j = new hw()
  {
    public void a(hq paramAnonymoushq)
    {
      switch (jb.5.a[b.ordinal()])
      {
      default: 
        return;
      case 1: 
        ib.a(3, jb.h(), "Automatic onStartSession for context:" + a);
        jb.a(jb.this, a);
        return;
      case 2: 
        ib.a(3, jb.h(), "Automatic onEndSession for context:" + a);
        d(a);
        return;
      }
      ib.a(3, jb.h(), "Automatic onEndSession (destroyed) for context:" + a);
      d(a);
    }
  };
  
  private jb()
  {
    je localje = je.a();
    f = 0L;
    g = ((Long)localje.a("ContinueSessionMillis")).longValue();
    localje.a("ContinueSessionMillis", this);
    ib.a(4, b, "initSettings, ContinueSessionMillis = " + g);
    hx.a().a("com.flurry.android.sdk.ActivityLifecycleEvent", j);
    hx.a().a("com.flurry.android.sdk.FlurrySessionTimerEvent", i);
  }
  
  public static jb a()
  {
    try
    {
      if (a == null) {
        a = new jb();
      }
      jb localjb = a;
      return localjb;
    }
    finally {}
  }
  
  private void a(iz paramiz)
  {
    synchronized (e)
    {
      h = paramiz;
      return;
    }
  }
  
  public static void b()
  {
    try
    {
      if (a != null)
      {
        hx.a().a(ai);
        hx.a().a(aj);
        je.a().b("ContinueSessionMillis", a);
      }
      a = null;
      return;
    }
    finally {}
  }
  
  private void b(iz paramiz)
  {
    synchronized (e)
    {
      if (h == paramiz) {
        h = null;
      }
      return;
    }
  }
  
  private void e(Context paramContext)
  {
    for (;;)
    {
      try
      {
        if ((iz)c.get(paramContext) != null)
        {
          if (hr.a().c())
          {
            ib.a(3, b, "Session already started with context:" + paramContext);
            return;
          }
          ib.e(b, "Session already started with context:" + paramContext);
          continue;
        }
        d.a();
      }
      finally {}
      Object localObject2 = e();
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new iz();
        ib.e(b, "Flurry session started for context:" + paramContext);
        localObject2 = new ja();
        a = new WeakReference(paramContext);
        b = ((iz)localObject1);
        c = ja.a.a;
        ((ja)localObject2).b();
      }
      c.put(paramContext, localObject1);
      a((iz)localObject1);
      ib.e(b, "Flurry session resumed for context:" + paramContext);
      localObject2 = new ja();
      a = new WeakReference(paramContext);
      b = ((iz)localObject1);
      c = ja.a.c;
      ((ja)localObject2).b();
      f = 0L;
    }
  }
  
  private void i()
  {
    for (;;)
    {
      try
      {
        int k = d();
        if (k > 0)
        {
          ib.a(5, b, "Session cannot be finalized, sessionContextCount:" + k);
          return;
        }
        iz localiz1 = e();
        if (localiz1 == null)
        {
          ib.a(5, b, "Session cannot be finalized, current session not found");
          continue;
        }
        ib.e(b, "Flurry session ended");
      }
      finally {}
      ja localja = new ja();
      b = localiz2;
      c = ja.a.e;
      d = ha.a().d();
      localja.b();
      hn.a().b(new jp()
      {
        public void a()
        {
          jb.a(jb.this, localiz2);
        }
      });
    }
  }
  
  /* Error */
  public void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof 248
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 163	com/flurry/sdk/hr:a	()Lcom/flurry/sdk/hr;
    //   17: invokevirtual 166	com/flurry/sdk/hr:c	()Z
    //   20: ifeq -9 -> 11
    //   23: iconst_3
    //   24: getstatic 47	com/flurry/sdk/jb:b	Ljava/lang/String;
    //   27: new 98	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   34: ldc -6
    //   36: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: aload_1
    //   40: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokestatic 116	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   49: aload_0
    //   50: aload_1
    //   51: invokespecial 141	com/flurry/sdk/jb:e	(Landroid/content/Context;)V
    //   54: goto -43 -> 11
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	jb
    //   0	62	1	paramContext	Context
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	57	finally
    //   14	54	57	finally
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (paramString.equals("ContinueSessionMillis"))
    {
      g = ((Long)paramObject).longValue();
      ib.a(4, b, "onSettingUpdate, ContinueSessionMillis = " + g);
      return;
    }
    ib.a(6, b, "onSettingUpdate internal error!");
  }
  
  /* Error */
  public void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 163	com/flurry/sdk/hr:a	()Lcom/flurry/sdk/hr;
    //   5: invokevirtual 166	com/flurry/sdk/hr:c	()Z
    //   8: ifeq +15 -> 23
    //   11: aload_1
    //   12: instanceof 248
    //   15: istore_2
    //   16: iload_2
    //   17: ifeq +6 -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: iconst_3
    //   24: getstatic 47	com/flurry/sdk/jb:b	Ljava/lang/String;
    //   27: new 98	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   34: ldc_w 263
    //   37: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_1
    //   41: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 116	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: aload_1
    //   52: invokespecial 141	com/flurry/sdk/jb:e	(Landroid/content/Context;)V
    //   55: goto -35 -> 20
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	jb
    //   0	63	1	paramContext	Context
    //   15	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	16	58	finally
    //   23	55	58	finally
  }
  
  public long c()
  {
    return f;
  }
  
  /* Error */
  public void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 163	com/flurry/sdk/hr:a	()Lcom/flurry/sdk/hr;
    //   5: invokevirtual 166	com/flurry/sdk/hr:c	()Z
    //   8: ifeq +15 -> 23
    //   11: aload_1
    //   12: instanceof 248
    //   15: istore_2
    //   16: iload_2
    //   17: ifeq +6 -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: iconst_3
    //   24: getstatic 47	com/flurry/sdk/jb:b	Ljava/lang/String;
    //   27: new 98	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   34: ldc_w 265
    //   37: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_1
    //   41: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 116	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: aload_1
    //   52: invokevirtual 267	com/flurry/sdk/jb:d	(Landroid/content/Context;)V
    //   55: goto -35 -> 20
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	jb
    //   0	63	1	paramContext	Context
    //   15	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	16	58	finally
    //   23	55	58	finally
  }
  
  public int d()
  {
    try
    {
      int k = c.size();
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void d(Context paramContext)
  {
    for (;;)
    {
      iz localiz;
      try
      {
        localiz = (iz)c.remove(paramContext);
        if (localiz == null)
        {
          if (hr.a().c())
          {
            ib.a(3, b, "Session cannot be ended, session not found for context:" + paramContext);
            return;
          }
          ib.e(b, "Session cannot be ended, session not found for context:" + paramContext);
          continue;
        }
        ib.e(b, "Flurry session paused for context:" + paramContext);
      }
      finally {}
      ja localja = new ja();
      a = new WeakReference(paramContext);
      b = localiz;
      d = ha.a().d();
      c = ja.a.d;
      localja.b();
      if (d() == 0)
      {
        d.a(g);
        f = System.currentTimeMillis();
      }
      else
      {
        f = 0L;
      }
    }
  }
  
  public iz e()
  {
    synchronized (e)
    {
      iz localiz = h;
      return localiz;
    }
  }
  
  /* Error */
  public boolean f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 179	com/flurry/sdk/jb:e	()Lcom/flurry/sdk/iz;
    //   6: ifnonnull +19 -> 25
    //   9: iconst_2
    //   10: getstatic 47	com/flurry/sdk/jb:b	Ljava/lang/String;
    //   13: ldc_w 289
    //   16: invokestatic 116	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   19: iconst_0
    //   20: istore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: iload_1
    //   24: ireturn
    //   25: iconst_1
    //   26: istore_1
    //   27: goto -6 -> 21
    //   30: astore_2
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_2
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	jb
    //   20	7	1	bool	boolean
    //   30	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	30	finally
  }
  
  public void g()
  {
    try
    {
      Iterator localIterator = c.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        ja localja = new ja();
        a = new WeakReference(localEntry.getKey());
        b = ((iz)localEntry.getValue());
        c = ja.a.d;
        d = ha.a().d();
        localja.b();
      }
      c.clear();
    }
    finally {}
    hn.a().b(new jp()
    {
      public void a()
      {
        jb.a(jb.this);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */