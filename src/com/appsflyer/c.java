package com.appsflyer;

import android.content.Context;
import java.lang.ref.WeakReference;

class c
  implements Runnable
{
  private WeakReference<Context> a = null;
  
  public c(Context paramContext)
  {
    a = new WeakReference(paramContext);
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: invokestatic 31	com/appsflyer/AppsFlyerLib:c	()Z
    //   3: ifeq +4 -> 7
    //   6: return
    //   7: invokestatic 37	java/lang/System:currentTimeMillis	()J
    //   10: invokestatic 40	com/appsflyer/AppsFlyerLib:a	(J)J
    //   13: pop2
    //   14: aload_0
    //   15: getfield 16	com/appsflyer/c:a	Ljava/lang/ref/WeakReference;
    //   18: ifnull -12 -> 6
    //   21: iconst_1
    //   22: invokestatic 43	com/appsflyer/AppsFlyerLib:a	(Z)Z
    //   25: pop
    //   26: ldc 45
    //   28: invokestatic 48	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   31: astore_2
    //   32: aload_0
    //   33: getfield 16	com/appsflyer/c:a	Ljava/lang/ref/WeakReference;
    //   36: astore_1
    //   37: aload_1
    //   38: monitorenter
    //   39: invokestatic 53	com/appsflyer/a/a:a	()Lcom/appsflyer/a/a;
    //   42: aload_0
    //   43: getfield 16	com/appsflyer/c:a	Ljava/lang/ref/WeakReference;
    //   46: invokevirtual 57	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   49: checkcast 59	android/content/Context
    //   52: invokevirtual 63	com/appsflyer/a/a:b	(Landroid/content/Context;)Ljava/util/List;
    //   55: invokeinterface 69 1 0
    //   60: astore_3
    //   61: aload_3
    //   62: invokeinterface 74 1 0
    //   67: ifeq +152 -> 219
    //   70: aload_3
    //   71: invokeinterface 77 1 0
    //   76: checkcast 79	com/appsflyer/a/b
    //   79: astore 4
    //   81: aload_0
    //   82: getfield 16	com/appsflyer/c:a	Ljava/lang/ref/WeakReference;
    //   85: invokevirtual 57	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   88: checkcast 59	android/content/Context
    //   91: invokestatic 83	com/appsflyer/AppsFlyerLib:f	(Landroid/content/Context;)Z
    //   94: ifeq +32 -> 126
    //   97: ldc 85
    //   99: new 87	java/lang/StringBuilder
    //   102: dup
    //   103: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   106: ldc 90
    //   108: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: aload 4
    //   113: invokevirtual 97	com/appsflyer/a/b:c	()Ljava/lang/String;
    //   116: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokestatic 106	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   125: pop
    //   126: new 87	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   133: aload 4
    //   135: invokevirtual 97	com/appsflyer/a/b:c	()Ljava/lang/String;
    //   138: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc 108
    //   143: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: aload 4
    //   151: invokevirtual 110	com/appsflyer/a/b:b	()Ljava/lang/String;
    //   154: aload_2
    //   155: aload_0
    //   156: getfield 16	com/appsflyer/c:a	Ljava/lang/ref/WeakReference;
    //   159: aload 4
    //   161: invokevirtual 113	com/appsflyer/a/b:d	()Ljava/lang/String;
    //   164: ldc 85
    //   166: iconst_0
    //   167: invokestatic 116	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    //   170: goto -109 -> 61
    //   173: astore 4
    //   175: ldc 85
    //   177: ldc 118
    //   179: invokestatic 106	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   182: pop
    //   183: goto -122 -> 61
    //   186: astore_2
    //   187: aload_1
    //   188: monitorexit
    //   189: aload_2
    //   190: athrow
    //   191: astore_1
    //   192: ldc 85
    //   194: ldc 120
    //   196: invokestatic 123	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   199: pop
    //   200: iconst_0
    //   201: invokestatic 43	com/appsflyer/AppsFlyerLib:a	(Z)Z
    //   204: pop
    //   205: invokestatic 126	com/appsflyer/AppsFlyerLib:d	()Ljava/util/concurrent/ScheduledExecutorService;
    //   208: invokeinterface 131 1 0
    //   213: aconst_null
    //   214: invokestatic 134	com/appsflyer/AppsFlyerLib:a	(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    //   217: pop
    //   218: return
    //   219: aload_1
    //   220: monitorexit
    //   221: iconst_0
    //   222: invokestatic 43	com/appsflyer/AppsFlyerLib:a	(Z)Z
    //   225: pop
    //   226: goto -21 -> 205
    //   229: astore_1
    //   230: iconst_0
    //   231: invokestatic 43	com/appsflyer/AppsFlyerLib:a	(Z)Z
    //   234: pop
    //   235: aload_1
    //   236: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	237	0	this	c
    //   191	29	1	localException1	Exception
    //   229	7	1	localObject1	Object
    //   31	124	2	str	String
    //   186	4	2	localObject2	Object
    //   60	11	3	localIterator	java.util.Iterator
    //   79	81	4	localb	com.appsflyer.a.b
    //   173	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   126	170	173	java/lang/Exception
    //   39	61	186	finally
    //   61	126	186	finally
    //   126	170	186	finally
    //   175	183	186	finally
    //   187	189	186	finally
    //   219	221	186	finally
    //   26	39	191	java/lang/Exception
    //   189	191	191	java/lang/Exception
    //   26	39	229	finally
    //   189	191	229	finally
    //   192	200	229	finally
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */