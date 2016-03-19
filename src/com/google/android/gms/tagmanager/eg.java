package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.d.bc;
import com.google.android.gms.d.bd;
import com.google.android.gms.d.co;
import com.google.android.gms.d.cs;
import com.google.android.gms.d.i;
import com.google.android.gms.d.m;

public class eg
  extends com.google.android.gms.common.api.a<f>
{
  private final bc b;
  private final ek c;
  private final Looper d;
  private final cb e;
  private final int f;
  private final Context g;
  private final n h;
  private final String i;
  private em j;
  private co k;
  private volatile ed l;
  private volatile boolean m;
  private m n;
  private long o;
  private String p;
  private el q;
  private eh r;
  
  eg(Context paramContext, n paramn, Looper paramLooper, String paramString, int paramInt, em paramem, el paramel, co paramco, bc parambc, cb paramcb) {}
  
  public eg(Context paramContext, n paramn, Looper paramLooper, String paramString, int paramInt, ep paramep)
  {
    this(paramContext, paramn, paramLooper, paramString, paramInt, new cn(paramContext, paramString), new ck(paramContext, paramString, paramep), new co(paramContext), bd.c(), new ax(30, 900000L, 5000L, "refreshing", bd.c()));
    k.a(paramep.a());
  }
  
  /* Error */
  private void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 67	com/google/android/gms/tagmanager/eg:q	Lcom/google/android/gms/tagmanager/el;
    //   6: ifnonnull +11 -> 17
    //   9: ldc -108
    //   11: invokestatic 152	com/google/android/gms/tagmanager/ba:b	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield 67	com/google/android/gms/tagmanager/eg:q	Lcom/google/android/gms/tagmanager/el;
    //   21: lload_1
    //   22: aload_0
    //   23: getfield 83	com/google/android/gms/tagmanager/eg:n	Lcom/google/android/gms/d/m;
    //   26: getfield 154	com/google/android/gms/d/m:c	Ljava/lang/String;
    //   29: invokeinterface 159 4 0
    //   34: goto -20 -> 14
    //   37: astore_3
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_3
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	eg
    //   0	42	1	paramLong	long
    //   37	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	37	finally
    //   17	34	37	finally
  }
  
  private void a(m paramm)
  {
    try
    {
      if (j != null)
      {
        com.google.android.gms.d.cn localcn = new com.google.android.gms.d.cn();
        a = o;
        b = new i();
        c = paramm;
        j.a(localcn);
      }
      return;
    }
    finally
    {
      paramm = finally;
      throw paramm;
    }
  }
  
  private void a(m paramm, long paramLong, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        paramBoolean = m;
        if (paramBoolean) {
          return;
        }
        if ((a()) && (l == null)) {}
        n = paramm;
        o = paramLong;
        a(Math.max(0L, Math.min(43200000L, o + 43200000L - b.a())));
        paramm = new a(g, h.a(), i, paramLong, paramm);
        if (l == null)
        {
          l = new ed(h, d, paramm, c);
          if ((!a()) && (r.a(paramm))) {
            a(l);
          }
        }
        else
        {
          l.a(paramm);
        }
      }
      finally {}
    }
  }
  
  private void a(final boolean paramBoolean)
  {
    j.a(new ei(this, null));
    q.a(new ej(this, null));
    cs localcs = j.a(f);
    if (localcs != null) {
      l = new ed(h, d, new a(g, h.a(), i, 0L, localcs), c);
    }
    r = new eh()
    {
      public boolean a(a paramAnonymousa)
      {
        if (paramBoolean) {
          if (paramAnonymousa.a() + 43200000L < eg.b(eg.this).a()) {}
        }
        while (!paramAnonymousa.b())
        {
          return true;
          return false;
        }
        return false;
      }
    };
    if (f())
    {
      q.a(0L, "");
      return;
    }
    j.a();
  }
  
  private boolean f()
  {
    by localby = by.a();
    return ((localby.b() == bz.zzaMJ) || (localby.b() == bz.zzaMK)) && (i.equals(localby.d()));
  }
  
  void a(String paramString)
  {
    try
    {
      p = paramString;
      if (q != null) {
        q.a(paramString);
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  protected f c(Status paramStatus)
  {
    if (l != null) {
      return l;
    }
    if (paramStatus == Status.d) {
      ba.a("timer expired: setting result to failure");
    }
    return new ed(paramStatus);
  }
  
  public void e()
  {
    a(false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */