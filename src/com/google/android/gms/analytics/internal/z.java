package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bs;

public class z
  implements ServiceConnection
{
  private volatile d b;
  private volatile boolean c;
  
  protected z(y paramy) {}
  
  /* Error */
  public d a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   4: invokevirtual 32	com/google/android/gms/analytics/internal/y:zzhO	()V
    //   7: new 34	android/content/Intent
    //   10: dup
    //   11: ldc 36
    //   13: invokespecial 39	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   16: astore_2
    //   17: aload_2
    //   18: new 41	android/content/ComponentName
    //   21: dup
    //   22: ldc 43
    //   24: ldc 45
    //   26: invokespecial 48	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   29: invokevirtual 52	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   32: pop
    //   33: aload_0
    //   34: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   37: invokevirtual 56	com/google/android/gms/analytics/internal/y:getContext	()Landroid/content/Context;
    //   40: astore_3
    //   41: aload_2
    //   42: ldc 58
    //   44: aload_3
    //   45: invokevirtual 64	android/content/Context:getPackageName	()Ljava/lang/String;
    //   48: invokevirtual 68	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   51: pop
    //   52: invokestatic 73	com/google/android/gms/common/stats/b:a	()Lcom/google/android/gms/common/stats/b;
    //   55: astore 4
    //   57: aload_0
    //   58: monitorenter
    //   59: aload_0
    //   60: aconst_null
    //   61: putfield 75	com/google/android/gms/analytics/internal/z:b	Lcom/google/android/gms/analytics/internal/d;
    //   64: aload_0
    //   65: iconst_1
    //   66: putfield 77	com/google/android/gms/analytics/internal/z:c	Z
    //   69: aload 4
    //   71: aload_3
    //   72: aload_2
    //   73: aload_0
    //   74: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   77: invokestatic 80	com/google/android/gms/analytics/internal/y:a	(Lcom/google/android/gms/analytics/internal/y;)Lcom/google/android/gms/analytics/internal/z;
    //   80: sipush 129
    //   83: invokevirtual 83	com/google/android/gms/common/stats/b:a	(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   86: istore_1
    //   87: aload_0
    //   88: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   91: ldc 85
    //   93: iload_1
    //   94: invokestatic 91	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   97: invokevirtual 95	com/google/android/gms/analytics/internal/y:zza	(Ljava/lang/String;Ljava/lang/Object;)V
    //   100: iload_1
    //   101: ifne +12 -> 113
    //   104: aload_0
    //   105: iconst_0
    //   106: putfield 77	com/google/android/gms/analytics/internal/z:c	Z
    //   109: aload_0
    //   110: monitorexit
    //   111: aconst_null
    //   112: areturn
    //   113: aload_0
    //   114: aload_0
    //   115: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   118: invokevirtual 99	com/google/android/gms/analytics/internal/y:zzhR	()Lcom/google/android/gms/analytics/internal/ak;
    //   121: invokevirtual 105	com/google/android/gms/analytics/internal/ak:w	()J
    //   124: invokevirtual 109	java/lang/Object:wait	(J)V
    //   127: aload_0
    //   128: iconst_0
    //   129: putfield 77	com/google/android/gms/analytics/internal/z:c	Z
    //   132: aload_0
    //   133: getfield 75	com/google/android/gms/analytics/internal/z:b	Lcom/google/android/gms/analytics/internal/d;
    //   136: astore_2
    //   137: aload_0
    //   138: aconst_null
    //   139: putfield 75	com/google/android/gms/analytics/internal/z:b	Lcom/google/android/gms/analytics/internal/d;
    //   142: aload_2
    //   143: ifnonnull +12 -> 155
    //   146: aload_0
    //   147: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   150: ldc 111
    //   152: invokevirtual 114	com/google/android/gms/analytics/internal/y:zzaX	(Ljava/lang/String;)V
    //   155: aload_0
    //   156: monitorexit
    //   157: aload_2
    //   158: areturn
    //   159: astore_2
    //   160: aload_0
    //   161: monitorexit
    //   162: aload_2
    //   163: athrow
    //   164: astore_2
    //   165: aload_0
    //   166: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   169: ldc 116
    //   171: invokevirtual 119	com/google/android/gms/analytics/internal/y:zzaW	(Ljava/lang/String;)V
    //   174: goto -47 -> 127
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	177	0	this	z
    //   86	15	1	bool	boolean
    //   16	142	2	localObject1	Object
    //   159	4	2	localObject2	Object
    //   164	1	2	localInterruptedException	InterruptedException
    //   40	32	3	localContext	android.content.Context
    //   55	15	4	localb	com.google.android.gms.common.stats.b
    // Exception table:
    //   from	to	target	type
    //   59	100	159	finally
    //   104	111	159	finally
    //   113	127	159	finally
    //   127	142	159	finally
    //   146	155	159	finally
    //   155	157	159	finally
    //   160	162	159	finally
    //   165	174	159	finally
    //   113	127	164	java/lang/InterruptedException
  }
  
  /* Error */
  public void onServiceConnected(final ComponentName paramComponentName, android.os.IBinder paramIBinder)
  {
    // Byte code:
    //   0: ldc 127
    //   2: invokestatic 131	com/google/android/gms/common/internal/aq:b	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_2
    //   8: ifnonnull +19 -> 27
    //   11: aload_0
    //   12: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   15: ldc -123
    //   17: invokevirtual 114	com/google/android/gms/analytics/internal/y:zzaX	(Ljava/lang/String;)V
    //   20: aload_0
    //   21: invokevirtual 136	java/lang/Object:notifyAll	()V
    //   24: aload_0
    //   25: monitorexit
    //   26: return
    //   27: aconst_null
    //   28: astore 4
    //   30: aconst_null
    //   31: astore_3
    //   32: aload 4
    //   34: astore_1
    //   35: aload_2
    //   36: invokeinterface 141 1 0
    //   41: astore 5
    //   43: aload 4
    //   45: astore_1
    //   46: ldc -113
    //   48: aload 5
    //   50: invokevirtual 149	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   53: ifeq +60 -> 113
    //   56: aload 4
    //   58: astore_1
    //   59: aload_2
    //   60: invokestatic 154	com/google/android/gms/analytics/internal/e:a	(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/d;
    //   63: astore_2
    //   64: aload_2
    //   65: astore_1
    //   66: aload_0
    //   67: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   70: ldc -100
    //   72: invokevirtual 159	com/google/android/gms/analytics/internal/y:zzaT	(Ljava/lang/String;)V
    //   75: aload_2
    //   76: astore_1
    //   77: aload_1
    //   78: ifnonnull +74 -> 152
    //   81: invokestatic 73	com/google/android/gms/common/stats/b:a	()Lcom/google/android/gms/common/stats/b;
    //   84: aload_0
    //   85: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   88: invokevirtual 56	com/google/android/gms/analytics/internal/y:getContext	()Landroid/content/Context;
    //   91: aload_0
    //   92: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   95: invokestatic 80	com/google/android/gms/analytics/internal/y:a	(Lcom/google/android/gms/analytics/internal/y;)Lcom/google/android/gms/analytics/internal/z;
    //   98: invokevirtual 162	com/google/android/gms/common/stats/b:a	(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    //   101: aload_0
    //   102: invokevirtual 136	java/lang/Object:notifyAll	()V
    //   105: aload_0
    //   106: monitorexit
    //   107: return
    //   108: astore_1
    //   109: aload_0
    //   110: monitorexit
    //   111: aload_1
    //   112: athrow
    //   113: aload 4
    //   115: astore_1
    //   116: aload_0
    //   117: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   120: ldc -92
    //   122: aload 5
    //   124: invokevirtual 167	com/google/android/gms/analytics/internal/y:zze	(Ljava/lang/String;Ljava/lang/Object;)V
    //   127: aload_3
    //   128: astore_1
    //   129: goto -52 -> 77
    //   132: astore_2
    //   133: aload_0
    //   134: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   137: ldc -87
    //   139: invokevirtual 114	com/google/android/gms/analytics/internal/y:zzaX	(Ljava/lang/String;)V
    //   142: goto -65 -> 77
    //   145: astore_1
    //   146: aload_0
    //   147: invokevirtual 136	java/lang/Object:notifyAll	()V
    //   150: aload_1
    //   151: athrow
    //   152: aload_0
    //   153: getfield 77	com/google/android/gms/analytics/internal/z:c	Z
    //   156: ifne +34 -> 190
    //   159: aload_0
    //   160: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   163: ldc -85
    //   165: invokevirtual 119	com/google/android/gms/analytics/internal/y:zzaW	(Ljava/lang/String;)V
    //   168: aload_0
    //   169: getfield 20	com/google/android/gms/analytics/internal/z:a	Lcom/google/android/gms/analytics/internal/y;
    //   172: invokevirtual 175	com/google/android/gms/analytics/internal/y:zzhS	()Lcom/google/android/gms/d/bs;
    //   175: new 8	com/google/android/gms/analytics/internal/z$1
    //   178: dup
    //   179: aload_0
    //   180: aload_1
    //   181: invokespecial 178	com/google/android/gms/analytics/internal/z$1:<init>	(Lcom/google/android/gms/analytics/internal/z;Lcom/google/android/gms/analytics/internal/d;)V
    //   184: invokevirtual 183	com/google/android/gms/d/bs:a	(Ljava/lang/Runnable;)V
    //   187: goto -86 -> 101
    //   190: aload_0
    //   191: aload_1
    //   192: putfield 75	com/google/android/gms/analytics/internal/z:b	Lcom/google/android/gms/analytics/internal/d;
    //   195: goto -94 -> 101
    //   198: astore_1
    //   199: goto -98 -> 101
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	202	0	this	z
    //   0	202	1	paramComponentName	ComponentName
    //   0	202	2	paramIBinder	android.os.IBinder
    //   31	97	3	localObject1	Object
    //   28	86	4	localObject2	Object
    //   41	82	5	str	String
    // Exception table:
    //   from	to	target	type
    //   20	26	108	finally
    //   101	107	108	finally
    //   109	111	108	finally
    //   146	152	108	finally
    //   35	43	132	android/os/RemoteException
    //   46	56	132	android/os/RemoteException
    //   59	64	132	android/os/RemoteException
    //   66	75	132	android/os/RemoteException
    //   116	127	132	android/os/RemoteException
    //   11	20	145	finally
    //   35	43	145	finally
    //   46	56	145	finally
    //   59	64	145	finally
    //   66	75	145	finally
    //   81	101	145	finally
    //   116	127	145	finally
    //   133	142	145	finally
    //   152	187	145	finally
    //   190	195	145	finally
    //   81	101	198	java/lang/IllegalArgumentException
  }
  
  public void onServiceDisconnected(final ComponentName paramComponentName)
  {
    aq.b("AnalyticsServiceConnection.onServiceDisconnected");
    a.zzhS().a(new Runnable()
    {
      public void run()
      {
        y.a(a, paramComponentName);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */