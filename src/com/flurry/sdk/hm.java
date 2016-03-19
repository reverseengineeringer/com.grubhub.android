package com.flurry.sdk;

import android.content.Context;
import android.os.SystemClock;
import java.lang.ref.WeakReference;

public class hm
{
  private static final String a = hm.class.getSimpleName();
  private final hw<ja> b = new hw()
  {
    public void a(ja paramAnonymousja)
    {
      if ((hm.a(hm.this) != null) && (b != hm.a(hm.this).get())) {
        return;
      }
      switch (hm.3.a[c.ordinal()])
      {
      default: 
        return;
      case 1: 
        a(b, (Context)a.get());
        return;
      case 2: 
        a((Context)a.get());
        return;
      case 3: 
        b((Context)a.get());
        return;
      }
      hx.a().b("com.flurry.android.sdk.FlurrySessionEvent", hm.b(hm.this));
      a();
    }
  };
  private WeakReference<iz> c;
  private volatile long d = 0L;
  private volatile long e = 0L;
  private volatile long f = -1L;
  private volatile long g = 0L;
  private volatile long h = 0L;
  
  public hm()
  {
    hx.a().a("com.flurry.android.sdk.FlurrySessionEvent", b);
  }
  
  private void b(iz paramiz, Context paramContext)
  {
    if ((paramiz == null) || (paramContext == null))
    {
      ib.a(3, a, "Flurry session id cannot be created.");
      return;
    }
    ib.a(3, a, "Flurry session id started:" + d);
    ja localja = new ja();
    a = new WeakReference(paramContext);
    b = paramiz;
    c = ja.a.b;
    localja.b();
  }
  
  public void a() {}
  
  public void a(Context paramContext)
  {
    long l1 = jb.a().c();
    if (l1 > 0L)
    {
      long l2 = g;
      g = (System.currentTimeMillis() - l1 + l2);
    }
  }
  
  public void a(iz paramiz, Context paramContext)
  {
    c = new WeakReference(paramiz);
    d = System.currentTimeMillis();
    e = SystemClock.elapsedRealtime();
    b(paramiz, paramContext);
    hn.a().b(new jp()
    {
      public void a()
      {
        hf.a().c();
      }
    });
  }
  
  public String b()
  {
    return Long.toString(d);
  }
  
  public void b(Context paramContext)
  {
    f = (SystemClock.elapsedRealtime() - e);
  }
  
  public long c()
  {
    return d;
  }
  
  public long d()
  {
    return e;
  }
  
  public long e()
  {
    return f;
  }
  
  public long f()
  {
    return g;
  }
  
  /* Error */
  public long g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 133	android/os/SystemClock:elapsedRealtime	()J
    //   5: aload_0
    //   6: getfield 47	com/flurry/sdk/hm:e	J
    //   9: lsub
    //   10: lstore_1
    //   11: lload_1
    //   12: aload_0
    //   13: getfield 55	com/flurry/sdk/hm:h	J
    //   16: lcmp
    //   17: ifle +17 -> 34
    //   20: aload_0
    //   21: lload_1
    //   22: putfield 55	com/flurry/sdk/hm:h	J
    //   25: aload_0
    //   26: getfield 55	com/flurry/sdk/hm:h	J
    //   29: lstore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: lload_1
    //   33: lreturn
    //   34: aload_0
    //   35: getfield 55	com/flurry/sdk/hm:h	J
    //   38: lconst_1
    //   39: ladd
    //   40: lstore_1
    //   41: aload_0
    //   42: lload_1
    //   43: putfield 55	com/flurry/sdk/hm:h	J
    //   46: goto -26 -> 20
    //   49: astore_3
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_3
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	hm
    //   10	33	1	l	long
    //   49	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	49	finally
    //   20	30	49	finally
    //   34	46	49	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */