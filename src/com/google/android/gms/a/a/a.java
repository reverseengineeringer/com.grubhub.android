package com.google.android.gms.a.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.p;
import com.google.android.gms.d.q;
import java.io.IOException;

public class a
{
  g a;
  p b;
  boolean c;
  Object d = new Object();
  c e;
  final long f;
  private final Context g;
  
  public a(Context paramContext, long paramLong)
  {
    aq.a(paramContext);
    g = paramContext;
    c = false;
    f = paramLong;
  }
  
  static g a(Context paramContext)
    throws IOException, com.google.android.gms.common.c, d
  {
    try
    {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      g localg;
      Intent localIntent;
      throw new IOException("Connection failure");
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      try
      {
        e.b(paramContext);
        localg = new g();
        localIntent = new Intent("com.google.android.gms.ads.identifier.service.START");
        localIntent.setPackage("com.google.android.gms");
        if (!com.google.android.gms.common.stats.b.a().a(paramContext, localIntent, localg, 1)) {
          break label76;
        }
        return localg;
      }
      catch (com.google.android.gms.common.c paramContext)
      {
        throw new IOException(paramContext);
      }
      paramContext = paramContext;
      throw new com.google.android.gms.common.c(9);
    }
  }
  
  static p a(Context paramContext, g paramg)
    throws IOException
  {
    try
    {
      paramContext = q.a(paramg.a());
      return paramContext;
    }
    catch (InterruptedException paramContext)
    {
      throw new IOException("Interrupted exception");
    }
  }
  
  public static b b(Context paramContext)
    throws IOException, IllegalStateException, com.google.android.gms.common.c, d
  {
    paramContext = new a(paramContext, -1L);
    try
    {
      paramContext.a(false);
      b localb = paramContext.a();
      return localb;
    }
    finally
    {
      paramContext.b();
    }
  }
  
  private void c()
  {
    synchronized (d)
    {
      if (e != null) {
        e.a();
      }
    }
    try
    {
      e.join();
      if (f > 0L) {
        e = new c(this, f);
      }
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  public b a()
    throws IOException
  {
    // Byte code:
    //   0: ldc -111
    //   2: invokestatic 147	com/google/android/gms/common/internal/aq:c	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 34	com/google/android/gms/a/a/a:c	Z
    //   11: ifne +83 -> 94
    //   14: aload_0
    //   15: getfield 25	com/google/android/gms/a/a/a:d	Ljava/lang/Object;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: aload_0
    //   22: getfield 129	com/google/android/gms/a/a/a:e	Lcom/google/android/gms/a/a/c;
    //   25: ifnull +13 -> 38
    //   28: aload_0
    //   29: getfield 129	com/google/android/gms/a/a/a:e	Lcom/google/android/gms/a/a/c;
    //   32: invokevirtual 150	com/google/android/gms/a/a/c:b	()Z
    //   35: ifne +23 -> 58
    //   38: new 40	java/io/IOException
    //   41: dup
    //   42: ldc -104
    //   44: invokespecial 98	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   47: athrow
    //   48: astore_2
    //   49: aload_1
    //   50: monitorexit
    //   51: aload_2
    //   52: athrow
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    //   58: aload_1
    //   59: monitorexit
    //   60: aload_0
    //   61: iconst_0
    //   62: invokevirtual 122	com/google/android/gms/a/a/a:a	(Z)V
    //   65: aload_0
    //   66: getfield 34	com/google/android/gms/a/a/a:c	Z
    //   69: ifne +25 -> 94
    //   72: new 40	java/io/IOException
    //   75: dup
    //   76: ldc -102
    //   78: invokespecial 98	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   81: athrow
    //   82: astore_1
    //   83: new 40	java/io/IOException
    //   86: dup
    //   87: ldc -102
    //   89: aload_1
    //   90: invokespecial 157	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   93: athrow
    //   94: aload_0
    //   95: getfield 159	com/google/android/gms/a/a/a:a	Lcom/google/android/gms/common/g;
    //   98: invokestatic 30	com/google/android/gms/common/internal/aq:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   101: pop
    //   102: aload_0
    //   103: getfield 161	com/google/android/gms/a/a/a:b	Lcom/google/android/gms/d/p;
    //   106: invokestatic 30	com/google/android/gms/common/internal/aq:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   109: pop
    //   110: new 163	com/google/android/gms/a/a/b
    //   113: dup
    //   114: aload_0
    //   115: getfield 161	com/google/android/gms/a/a/a:b	Lcom/google/android/gms/d/p;
    //   118: invokeinterface 168 1 0
    //   123: aload_0
    //   124: getfield 161	com/google/android/gms/a/a/a:b	Lcom/google/android/gms/d/p;
    //   127: iconst_1
    //   128: invokeinterface 171 2 0
    //   133: invokespecial 174	com/google/android/gms/a/a/b:<init>	(Ljava/lang/String;Z)V
    //   136: astore_1
    //   137: aload_0
    //   138: monitorexit
    //   139: aload_0
    //   140: invokespecial 176	com/google/android/gms/a/a/a:c	()V
    //   143: aload_1
    //   144: areturn
    //   145: astore_1
    //   146: ldc -78
    //   148: ldc -76
    //   150: aload_1
    //   151: invokestatic 186	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   154: pop
    //   155: new 40	java/io/IOException
    //   158: dup
    //   159: ldc -68
    //   161: invokespecial 98	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   164: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	a
    //   53	6	1	localObject2	Object
    //   82	8	1	localException	Exception
    //   136	8	1	localb	b
    //   145	6	1	localRemoteException	android.os.RemoteException
    //   48	4	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   21	38	48	finally
    //   38	48	48	finally
    //   49	51	48	finally
    //   58	60	48	finally
    //   7	21	53	finally
    //   51	53	53	finally
    //   54	56	53	finally
    //   60	65	53	finally
    //   65	82	53	finally
    //   83	94	53	finally
    //   94	110	53	finally
    //   110	137	53	finally
    //   137	139	53	finally
    //   146	165	53	finally
    //   60	65	82	java/lang/Exception
    //   110	137	145	android/os/RemoteException
  }
  
  protected void a(boolean paramBoolean)
    throws IOException, IllegalStateException, com.google.android.gms.common.c, d
  {
    aq.c("Calling this from your main thread can lead to deadlock");
    try
    {
      if (c) {
        b();
      }
      a = a(g);
      b = a(g, a);
      c = true;
      if (paramBoolean) {
        c();
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: ldc -111
    //   2: invokestatic 147	com/google/android/gms/common/internal/aq:c	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 32	com/google/android/gms/a/a/a:g	Landroid/content/Context;
    //   11: ifnull +10 -> 21
    //   14: aload_0
    //   15: getfield 159	com/google/android/gms/a/a/a:a	Lcom/google/android/gms/common/g;
    //   18: ifnonnull +6 -> 24
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: getfield 34	com/google/android/gms/a/a/a:c	Z
    //   28: ifeq +17 -> 45
    //   31: invokestatic 86	com/google/android/gms/common/stats/b:a	()Lcom/google/android/gms/common/stats/b;
    //   34: aload_0
    //   35: getfield 32	com/google/android/gms/a/a/a:g	Landroid/content/Context;
    //   38: aload_0
    //   39: getfield 159	com/google/android/gms/a/a/a:a	Lcom/google/android/gms/common/g;
    //   42: invokevirtual 197	com/google/android/gms/common/stats/b:a	(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    //   45: aload_0
    //   46: iconst_0
    //   47: putfield 34	com/google/android/gms/a/a/a:c	Z
    //   50: aload_0
    //   51: aconst_null
    //   52: putfield 161	com/google/android/gms/a/a/a:b	Lcom/google/android/gms/d/p;
    //   55: aload_0
    //   56: aconst_null
    //   57: putfield 159	com/google/android/gms/a/a/a:a	Lcom/google/android/gms/common/g;
    //   60: aload_0
    //   61: monitorexit
    //   62: return
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: athrow
    //   68: astore_1
    //   69: ldc -78
    //   71: ldc -57
    //   73: aload_1
    //   74: invokestatic 186	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   77: pop
    //   78: goto -33 -> 45
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	a
    //   63	4	1	localObject	Object
    //   68	6	1	localIllegalArgumentException	IllegalArgumentException
    // Exception table:
    //   from	to	target	type
    //   7	21	63	finally
    //   21	23	63	finally
    //   24	45	63	finally
    //   45	62	63	finally
    //   64	66	63	finally
    //   69	78	63	finally
    //   24	45	68	java/lang/IllegalArgumentException
  }
  
  protected void finalize()
    throws Throwable
  {
    b();
    super.finalize();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */