package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Bundle;
import com.facebook.internal.aa;
import com.facebook.internal.ap;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class m
{
  private static final String a = m.class.getCanonicalName();
  private static final HashSet<ad> b = new HashSet(Arrays.asList(new ad[] { ad.DEVELOPER_ERRORS }));
  private static volatile Executor c;
  private static volatile String d;
  private static volatile String e;
  private static volatile String f;
  private static volatile int g;
  private static volatile String h = "facebook.com";
  private static AtomicLong i = new AtomicLong(65536L);
  private static volatile boolean j = false;
  private static boolean k = false;
  private static aa<File> l;
  private static Context m;
  private static int n = 64206;
  private static final Object o = new Object();
  private static final BlockingQueue<Runnable> p = new LinkedBlockingQueue(10);
  private static final ThreadFactory q = new ThreadFactory()
  {
    private final AtomicInteger a = new AtomicInteger(0);
    
    public Thread newThread(Runnable paramAnonymousRunnable)
    {
      return new Thread(paramAnonymousRunnable, "FacebookSdk #" + a.incrementAndGet());
    }
  };
  private static Boolean r = Boolean.valueOf(false);
  
  public static void a(int paramInt)
  {
    g = paramInt;
  }
  
  public static void a(Context paramContext)
  {
    try
    {
      a(paramContext, null);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  /* Error */
  public static void a(Context paramContext, n paramn)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 115	com/facebook/m:r	Ljava/lang/Boolean;
    //   6: invokevirtual 126	java/lang/Boolean:booleanValue	()Z
    //   9: ifeq +17 -> 26
    //   12: aload_1
    //   13: ifnull +9 -> 22
    //   16: aload_1
    //   17: invokeinterface 130 1 0
    //   22: ldc 2
    //   24: monitorexit
    //   25: return
    //   26: aload_0
    //   27: ldc -124
    //   29: invokestatic 137	com/facebook/internal/ap:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   32: aload_0
    //   33: iconst_0
    //   34: invokestatic 140	com/facebook/internal/ap:b	(Landroid/content/Context;Z)V
    //   37: aload_0
    //   38: iconst_0
    //   39: invokestatic 142	com/facebook/internal/ap:a	(Landroid/content/Context;Z)V
    //   42: aload_0
    //   43: invokevirtual 148	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   46: putstatic 150	com/facebook/m:m	Landroid/content/Context;
    //   49: getstatic 150	com/facebook/m:m	Landroid/content/Context;
    //   52: invokestatic 152	com/facebook/m:c	(Landroid/content/Context;)V
    //   55: getstatic 150	com/facebook/m:m	Landroid/content/Context;
    //   58: getstatic 154	com/facebook/m:d	Ljava/lang/String;
    //   61: invokestatic 159	com/facebook/internal/al:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   64: invokestatic 163	com/facebook/internal/ac:b	()V
    //   67: getstatic 150	com/facebook/m:m	Landroid/content/Context;
    //   70: invokestatic 168	com/facebook/internal/BoltsMeasurementEventListener:a	(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;
    //   73: pop
    //   74: new 170	com/facebook/internal/aa
    //   77: dup
    //   78: new 8	com/facebook/m$2
    //   81: dup
    //   82: invokespecial 171	com/facebook/m$2:<init>	()V
    //   85: invokespecial 174	com/facebook/internal/aa:<init>	(Ljava/util/concurrent/Callable;)V
    //   88: putstatic 176	com/facebook/m:l	Lcom/facebook/internal/aa;
    //   91: new 178	java/util/concurrent/FutureTask
    //   94: dup
    //   95: new 10	com/facebook/m$3
    //   98: dup
    //   99: aload_1
    //   100: invokespecial 181	com/facebook/m$3:<init>	(Lcom/facebook/n;)V
    //   103: invokespecial 182	java/util/concurrent/FutureTask:<init>	(Ljava/util/concurrent/Callable;)V
    //   106: astore_0
    //   107: invokestatic 185	com/facebook/m:d	()Ljava/util/concurrent/Executor;
    //   110: aload_0
    //   111: invokeinterface 191 2 0
    //   116: iconst_1
    //   117: invokestatic 113	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   120: putstatic 115	com/facebook/m:r	Ljava/lang/Boolean;
    //   123: goto -101 -> 22
    //   126: astore_0
    //   127: ldc 2
    //   129: monitorexit
    //   130: aload_0
    //   131: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	132	0	paramContext	Context
    //   0	132	1	paramn	n
    // Exception table:
    //   from	to	target	type
    //   3	12	126	finally
    //   16	22	126	finally
    //   26	123	126	finally
  }
  
  public static boolean a()
  {
    try
    {
      boolean bool = r.booleanValue();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static boolean a(ad paramad)
  {
    for (;;)
    {
      synchronized (b)
      {
        if ((b()) && (b.contains(paramad)))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public static boolean b()
  {
    return j;
  }
  
  public static boolean b(Context paramContext)
  {
    ap.b();
    return paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
  }
  
  static void c(Context paramContext)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return;
      try
      {
        paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
        if ((paramContext != null) && (metaData != null))
        {
          Object localObject;
          if (d == null)
          {
            localObject = metaData.get("com.facebook.sdk.ApplicationId");
            if (!(localObject instanceof String)) {
              break label148;
            }
            localObject = (String)localObject;
            if (!((String)localObject).toLowerCase(Locale.ROOT).startsWith("fb")) {
              break label141;
            }
            d = ((String)localObject).substring(2);
          }
          label141:
          label148:
          while (!(localObject instanceof Integer)) {
            for (;;)
            {
              if (e == null) {
                e = metaData.getString("com.facebook.sdk.ApplicationName");
              }
              if (f == null) {
                f = metaData.getString("com.facebook.sdk.ClientToken");
              }
              if (g != 0) {
                break;
              }
              a(metaData.getInt("com.facebook.sdk.WebDialogTheme"));
              return;
              d = (String)localObject;
            }
          }
          throw new h("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
  }
  
  public static boolean c()
  {
    return k;
  }
  
  /* Error */
  public static String d(Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 200	com/facebook/internal/ap:b	()V
    //   3: aload_0
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: invokevirtual 220	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull -8 -> 7
    //   18: aload_0
    //   19: invokevirtual 223	android/content/Context:getPackageName	()Ljava/lang/String;
    //   22: astore_0
    //   23: aload_1
    //   24: aload_0
    //   25: bipush 64
    //   27: invokevirtual 301	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   30: astore_0
    //   31: aload_0
    //   32: getfield 307	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   35: astore_1
    //   36: aload_1
    //   37: ifnull -30 -> 7
    //   40: aload_1
    //   41: arraylength
    //   42: ifeq -35 -> 7
    //   45: ldc_w 309
    //   48: invokestatic 315	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   51: astore_1
    //   52: aload_1
    //   53: aload_0
    //   54: getfield 307	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   57: iconst_0
    //   58: aaload
    //   59: invokevirtual 321	android/content/pm/Signature:toByteArray	()[B
    //   62: invokevirtual 325	java/security/MessageDigest:update	([B)V
    //   65: aload_1
    //   66: invokevirtual 328	java/security/MessageDigest:digest	()[B
    //   69: bipush 9
    //   71: invokestatic 334	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   74: areturn
    //   75: astore_0
    //   76: aconst_null
    //   77: areturn
    //   78: astore_0
    //   79: aconst_null
    //   80: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	paramContext	Context
    //   13	53	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   23	31	75	android/content/pm/PackageManager$NameNotFoundException
    //   45	52	78	java/security/NoSuchAlgorithmException
  }
  
  public static Executor d()
  {
    synchronized (o)
    {
      if (c == null) {
        c = AsyncTask.THREAD_POOL_EXECUTOR;
      }
      return c;
    }
  }
  
  public static String e()
  {
    return h;
  }
  
  public static Context f()
  {
    ap.b();
    return m;
  }
  
  public static String g()
  {
    return "4.7.0";
  }
  
  public static long h()
  {
    ap.b();
    return i.get();
  }
  
  public static String i()
  {
    ap.b();
    return d;
  }
  
  public static String j()
  {
    ap.b();
    return e;
  }
  
  public static String k()
  {
    ap.b();
    return f;
  }
  
  public static int l()
  {
    ap.b();
    return g;
  }
  
  public static File m()
  {
    ap.b();
    return (File)l.a();
  }
  
  public static int n()
  {
    ap.b();
    return n;
  }
}

/* Location:
 * Qualified Name:     com.facebook.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */