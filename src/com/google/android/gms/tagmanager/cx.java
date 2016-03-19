package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class cx
  extends cw
{
  private static final Object a = new Object();
  private static cx n;
  private Context b;
  private al c;
  private volatile aj d;
  private int e = 1800000;
  private boolean f = true;
  private boolean g = false;
  private boolean h = true;
  private boolean i = true;
  private am j = new am()
  {
    public void a(boolean paramAnonymousBoolean)
    {
      a(paramAnonymousBoolean, cx.a(cx.this));
    }
  };
  private Handler k;
  private zzbl l;
  private boolean m = false;
  
  public static cx c()
  {
    if (n == null) {
      n = new cx();
    }
    return n;
  }
  
  private void f()
  {
    l = new zzbl(this);
    l.a(b);
  }
  
  private void g()
  {
    k = new Handler(b.getMainLooper(), new Handler.Callback()
    {
      public boolean handleMessage(Message paramAnonymousMessage)
      {
        if ((1 == what) && (cx.e().equals(obj)))
        {
          a();
          if ((cx.b(cx.this) > 0) && (!cx.c(cx.this))) {
            cx.d(cx.this).sendMessageDelayed(cx.d(cx.this).obtainMessage(1, cx.e()), cx.b(cx.this));
          }
        }
        return true;
      }
    });
    if (e > 0) {
      k.sendMessageDelayed(k.obtainMessage(1, a), e);
    }
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 52	com/google/android/gms/tagmanager/cx:g	Z
    //   6: ifne +16 -> 22
    //   9: ldc 110
    //   11: invokestatic 115	com/google/android/gms/tagmanager/ba:e	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 50	com/google/android/gms/tagmanager/cx:f	Z
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield 117	com/google/android/gms/tagmanager/cx:d	Lcom/google/android/gms/tagmanager/aj;
    //   26: new 10	com/google/android/gms/tagmanager/cx$3
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 118	com/google/android/gms/tagmanager/cx$3:<init>	(Lcom/google/android/gms/tagmanager/cx;)V
    //   34: invokeinterface 123 2 0
    //   39: goto -20 -> 19
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	cx
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	42	finally
    //   22	39	42	finally
  }
  
  /* Error */
  void a(Context paramContext, aj paramaj)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 85	com/google/android/gms/tagmanager/cx:b	Landroid/content/Context;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual 128	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   19: putfield 85	com/google/android/gms/tagmanager/cx:b	Landroid/content/Context;
    //   22: aload_0
    //   23: getfield 117	com/google/android/gms/tagmanager/cx:d	Lcom/google/android/gms/tagmanager/aj;
    //   26: ifnonnull -15 -> 11
    //   29: aload_0
    //   30: aload_2
    //   31: putfield 117	com/google/android/gms/tagmanager/cx:d	Lcom/google/android/gms/tagmanager/aj;
    //   34: goto -23 -> 11
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	cx
    //   0	42	1	paramContext	Context
    //   0	42	2	paramaj	aj
    //   6	2	3	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   2	7	37	finally
    //   14	34	37	finally
  }
  
  void a(boolean paramBoolean)
  {
    try
    {
      a(m, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      String str1;
      try
      {
        if (m == paramBoolean1)
        {
          boolean bool = h;
          if (bool == paramBoolean2) {
            return;
          }
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (e > 0)) {
          k.removeMessages(1, a);
        }
        if ((!paramBoolean1) && (paramBoolean2) && (e > 0)) {
          k.sendMessageDelayed(k.obtainMessage(1, a), e);
        }
        localStringBuilder = new StringBuilder().append("PowerSaveMode ");
        if (paramBoolean1) {
          break label153;
        }
        if (paramBoolean2) {
          break label146;
        }
      }
      finally {}
      ba.e(str1);
      m = paramBoolean1;
      h = paramBoolean2;
      continue;
      label146:
      String str2 = "terminated.";
      continue;
      label153:
      str2 = "initiated.";
    }
  }
  
  void b()
  {
    try
    {
      if ((!m) && (h) && (e > 0))
      {
        k.removeMessages(1, a);
        k.sendMessage(k.obtainMessage(1, a));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  al d()
  {
    try
    {
      if (c != null) {
        break label50;
      }
      if (b == null) {
        throw new IllegalStateException("Cant get a store unless we have a context");
      }
    }
    finally {}
    c = new bs(j, b);
    label50:
    if (k == null) {
      g();
    }
    g = true;
    if (f)
    {
      a();
      f = false;
    }
    if ((l == null) && (i)) {
      f();
    }
    al localal = c;
    return localal;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */