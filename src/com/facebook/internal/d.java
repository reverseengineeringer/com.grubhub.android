package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Looper;
import com.facebook.h;
import java.lang.reflect.Method;

public class d
{
  private static final String a = d.class.getCanonicalName();
  private static d g;
  private String b;
  private String c;
  private String d;
  private boolean e;
  private long f;
  
  /* Error */
  public static d a(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 36	com/facebook/internal/d:g	Lcom/facebook/internal/d;
    //   3: ifnull +26 -> 29
    //   6: invokestatic 42	java/lang/System:currentTimeMillis	()J
    //   9: getstatic 36	com/facebook/internal/d:g	Lcom/facebook/internal/d;
    //   12: getfield 44	com/facebook/internal/d:f	J
    //   15: lsub
    //   16: ldc2_w 45
    //   19: lcmp
    //   20: ifge +9 -> 29
    //   23: getstatic 36	com/facebook/internal/d:g	Lcom/facebook/internal/d;
    //   26: astore_0
    //   27: aload_0
    //   28: areturn
    //   29: aload_0
    //   30: invokestatic 48	com/facebook/internal/d:b	(Landroid/content/Context;)Lcom/facebook/internal/d;
    //   33: astore 5
    //   35: aload_0
    //   36: invokevirtual 54	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   39: ldc 56
    //   41: iconst_0
    //   42: invokevirtual 62	android/content/pm/PackageManager:resolveContentProvider	(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   45: ifnull +51 -> 96
    //   48: ldc 64
    //   50: invokestatic 70	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   53: astore 4
    //   55: aload_0
    //   56: invokestatic 73	com/facebook/internal/d:e	(Landroid/content/Context;)Ljava/lang/String;
    //   59: astore 6
    //   61: aload 6
    //   63: ifnull +10 -> 73
    //   66: aload 5
    //   68: aload 6
    //   70: putfield 75	com/facebook/internal/d:d	Ljava/lang/String;
    //   73: aload 4
    //   75: ifnonnull +44 -> 119
    //   78: aload 5
    //   80: invokestatic 78	com/facebook/internal/d:a	(Lcom/facebook/internal/d;)Lcom/facebook/internal/d;
    //   83: astore_0
    //   84: iconst_0
    //   85: ifeq -58 -> 27
    //   88: new 80	java/lang/NullPointerException
    //   91: dup
    //   92: invokespecial 81	java/lang/NullPointerException:<init>	()V
    //   95: athrow
    //   96: aload_0
    //   97: invokevirtual 54	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   100: ldc 83
    //   102: iconst_0
    //   103: invokevirtual 62	android/content/pm/PackageManager:resolveContentProvider	(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   106: ifnull +298 -> 404
    //   109: ldc 85
    //   111: invokestatic 70	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   114: astore 4
    //   116: goto -61 -> 55
    //   119: aload_0
    //   120: invokevirtual 89	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   123: aload 4
    //   125: iconst_3
    //   126: anewarray 91	java/lang/String
    //   129: dup
    //   130: iconst_0
    //   131: ldc 93
    //   133: aastore
    //   134: dup
    //   135: iconst_1
    //   136: ldc 95
    //   138: aastore
    //   139: dup
    //   140: iconst_2
    //   141: ldc 97
    //   143: aastore
    //   144: aconst_null
    //   145: aconst_null
    //   146: aconst_null
    //   147: invokevirtual 103	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   150: astore 4
    //   152: aload 4
    //   154: ifnull +16 -> 170
    //   157: aload 4
    //   159: astore_0
    //   160: aload 4
    //   162: invokeinterface 109 1 0
    //   167: ifne +31 -> 198
    //   170: aload 4
    //   172: astore_0
    //   173: aload 5
    //   175: invokestatic 78	com/facebook/internal/d:a	(Lcom/facebook/internal/d;)Lcom/facebook/internal/d;
    //   178: astore 5
    //   180: aload 5
    //   182: astore_0
    //   183: aload 4
    //   185: ifnull -158 -> 27
    //   188: aload 4
    //   190: invokeinterface 112 1 0
    //   195: aload 5
    //   197: areturn
    //   198: aload 4
    //   200: astore_0
    //   201: aload 4
    //   203: ldc 93
    //   205: invokeinterface 116 2 0
    //   210: istore_3
    //   211: aload 4
    //   213: astore_0
    //   214: aload 4
    //   216: ldc 95
    //   218: invokeinterface 116 2 0
    //   223: istore_2
    //   224: aload 4
    //   226: astore_0
    //   227: aload 4
    //   229: ldc 97
    //   231: invokeinterface 116 2 0
    //   236: istore_1
    //   237: aload 4
    //   239: astore_0
    //   240: aload 5
    //   242: aload 4
    //   244: iload_3
    //   245: invokeinterface 120 2 0
    //   250: putfield 122	com/facebook/internal/d:b	Ljava/lang/String;
    //   253: iload_2
    //   254: ifle +53 -> 307
    //   257: iload_1
    //   258: ifle +49 -> 307
    //   261: aload 4
    //   263: astore_0
    //   264: aload 5
    //   266: invokevirtual 124	com/facebook/internal/d:b	()Ljava/lang/String;
    //   269: ifnonnull +38 -> 307
    //   272: aload 4
    //   274: astore_0
    //   275: aload 5
    //   277: aload 4
    //   279: iload_2
    //   280: invokeinterface 120 2 0
    //   285: putfield 126	com/facebook/internal/d:c	Ljava/lang/String;
    //   288: aload 4
    //   290: astore_0
    //   291: aload 5
    //   293: aload 4
    //   295: iload_1
    //   296: invokeinterface 120 2 0
    //   301: invokestatic 132	java/lang/Boolean:parseBoolean	(Ljava/lang/String;)Z
    //   304: putfield 134	com/facebook/internal/d:e	Z
    //   307: aload 4
    //   309: ifnull +10 -> 319
    //   312: aload 4
    //   314: invokeinterface 112 1 0
    //   319: aload 5
    //   321: invokestatic 78	com/facebook/internal/d:a	(Lcom/facebook/internal/d;)Lcom/facebook/internal/d;
    //   324: areturn
    //   325: astore 5
    //   327: aconst_null
    //   328: astore 4
    //   330: aload 4
    //   332: astore_0
    //   333: getstatic 27	com/facebook/internal/d:a	Ljava/lang/String;
    //   336: new 136	java/lang/StringBuilder
    //   339: dup
    //   340: invokespecial 137	java/lang/StringBuilder:<init>	()V
    //   343: ldc -117
    //   345: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: aload 5
    //   350: invokevirtual 146	java/lang/Exception:toString	()Ljava/lang/String;
    //   353: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   359: invokestatic 152	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   362: pop
    //   363: aload 4
    //   365: ifnull +10 -> 375
    //   368: aload 4
    //   370: invokeinterface 112 1 0
    //   375: aconst_null
    //   376: areturn
    //   377: astore 4
    //   379: aconst_null
    //   380: astore_0
    //   381: aload_0
    //   382: ifnull +9 -> 391
    //   385: aload_0
    //   386: invokeinterface 112 1 0
    //   391: aload 4
    //   393: athrow
    //   394: astore 4
    //   396: goto -15 -> 381
    //   399: astore 5
    //   401: goto -71 -> 330
    //   404: aconst_null
    //   405: astore 4
    //   407: goto -352 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	410	0	paramContext	Context
    //   236	60	1	i	int
    //   223	57	2	j	int
    //   210	35	3	k	int
    //   53	316	4	localObject1	Object
    //   377	15	4	localObject2	Object
    //   394	1	4	localObject3	Object
    //   405	1	4	localObject4	Object
    //   33	287	5	locald	d
    //   325	24	5	localException1	Exception
    //   399	1	5	localException2	Exception
    //   59	10	6	str	String
    // Exception table:
    //   from	to	target	type
    //   35	55	325	java/lang/Exception
    //   55	61	325	java/lang/Exception
    //   66	73	325	java/lang/Exception
    //   78	84	325	java/lang/Exception
    //   96	116	325	java/lang/Exception
    //   119	152	325	java/lang/Exception
    //   35	55	377	finally
    //   55	61	377	finally
    //   66	73	377	finally
    //   78	84	377	finally
    //   96	116	377	finally
    //   119	152	377	finally
    //   160	170	394	finally
    //   173	180	394	finally
    //   201	211	394	finally
    //   214	224	394	finally
    //   227	237	394	finally
    //   240	253	394	finally
    //   264	272	394	finally
    //   275	288	394	finally
    //   291	307	394	finally
    //   333	363	394	finally
    //   160	170	399	java/lang/Exception
    //   173	180	399	java/lang/Exception
    //   201	211	399	java/lang/Exception
    //   214	224	399	java/lang/Exception
    //   227	237	399	java/lang/Exception
    //   240	253	399	java/lang/Exception
    //   264	272	399	java/lang/Exception
    //   275	288	399	java/lang/Exception
    //   291	307	399	java/lang/Exception
  }
  
  private static d a(d paramd)
  {
    f = System.currentTimeMillis();
    g = paramd;
    return paramd;
  }
  
  private static d b(Context paramContext)
  {
    d locald = c(paramContext);
    Object localObject = locald;
    if (locald == null)
    {
      paramContext = d(paramContext);
      localObject = paramContext;
      if (paramContext == null) {
        localObject = new d();
      }
    }
    return (d)localObject;
  }
  
  private static d c(Context paramContext)
  {
    try
    {
      if (Looper.myLooper() == Looper.getMainLooper()) {
        throw new h("getAndroidId cannot be called on the main thread.");
      }
    }
    catch (Exception paramContext)
    {
      al.a("android_id", paramContext);
      return null;
    }
    Object localObject = al.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class });
    if (localObject == null) {
      return null;
    }
    localObject = al.a(null, (Method)localObject, new Object[] { paramContext });
    if (((localObject instanceof Integer)) && (((Integer)localObject).intValue() == 0))
    {
      localObject = al.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class });
      if (localObject == null) {
        return null;
      }
      paramContext = al.a(null, (Method)localObject, new Object[] { paramContext });
      if (paramContext == null) {
        return null;
      }
      localObject = al.a(paramContext.getClass(), "getId", new Class[0]);
      Method localMethod = al.a(paramContext.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
      if ((localObject != null) && (localMethod != null))
      {
        d locald = new d();
        c = ((String)al.a(paramContext, (Method)localObject, new Object[0]));
        e = ((Boolean)al.a(paramContext, localMethod, new Object[0])).booleanValue();
        return locald;
      }
    }
    else
    {
      return null;
    }
    return null;
  }
  
  private static d d(Context paramContext)
  {
    f localf = new f(null);
    Object localObject1 = new Intent("com.google.android.gms.ads.identifier.service.START");
    ((Intent)localObject1).setPackage("com.google.android.gms");
    if (paramContext.bindService((Intent)localObject1, localf, 1)) {}
    try
    {
      localObject1 = new e(localf.a());
      d locald = new d();
      c = ((e)localObject1).a();
      e = ((e)localObject1).b();
      return locald;
    }
    catch (Exception localException)
    {
      al.a("android_id", localException);
      return null;
    }
    finally
    {
      paramContext.unbindService(localf);
    }
  }
  
  private static String e(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    if (localPackageManager != null) {
      return localPackageManager.getInstallerPackageName(paramContext.getPackageName());
    }
    return null;
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public boolean d()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */