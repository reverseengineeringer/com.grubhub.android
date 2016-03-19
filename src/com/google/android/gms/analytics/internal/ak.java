package com.google.android.gms.analytics.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.common.internal.h;
import java.util.HashSet;
import java.util.Set;

public class ak
{
  private final v a;
  private Boolean b;
  private String c;
  private Set<Integer> d;
  
  protected ak(v paramv)
  {
    aq.a(paramv);
    a = paramv;
  }
  
  public String A()
  {
    return "google_analytics_v4.db";
  }
  
  public String B()
  {
    return "google_analytics2_v4.db";
  }
  
  public long C()
  {
    return 86400000L;
  }
  
  public int D()
  {
    return ((Integer)ar.E.a()).intValue();
  }
  
  public int E()
  {
    return ((Integer)ar.F.a()).intValue();
  }
  
  public long F()
  {
    return ((Long)ar.G.a()).longValue();
  }
  
  public long G()
  {
    return ((Long)ar.P.a()).longValue();
  }
  
  public boolean a()
  {
    return h.a;
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 77	com/google/android/gms/analytics/internal/ak:b	Ljava/lang/Boolean;
    //   4: ifnonnull +154 -> 158
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 77	com/google/android/gms/analytics/internal/ak:b	Ljava/lang/Boolean;
    //   13: ifnonnull +143 -> 156
    //   16: aload_0
    //   17: getfield 25	com/google/android/gms/analytics/internal/ak:a	Lcom/google/android/gms/analytics/internal/v;
    //   20: invokevirtual 82	com/google/android/gms/analytics/internal/v:b	()Landroid/content/Context;
    //   23: astore 4
    //   25: aload 4
    //   27: invokevirtual 88	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   30: astore_3
    //   31: aload_3
    //   32: ifnull +98 -> 130
    //   35: aload_3
    //   36: getfield 93	android/content/pm/ApplicationInfo:processName	Ljava/lang/String;
    //   39: astore_3
    //   40: aload 4
    //   42: ldc 95
    //   44: invokevirtual 99	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   47: checkcast 101	android/app/ActivityManager
    //   50: astore 4
    //   52: aload 4
    //   54: ifnull +76 -> 130
    //   57: invokestatic 106	android/os/Process:myPid	()I
    //   60: istore_1
    //   61: aload 4
    //   63: invokevirtual 110	android/app/ActivityManager:getRunningAppProcesses	()Ljava/util/List;
    //   66: invokeinterface 116 1 0
    //   71: astore 4
    //   73: aload 4
    //   75: invokeinterface 121 1 0
    //   80: ifeq +50 -> 130
    //   83: aload 4
    //   85: invokeinterface 124 1 0
    //   90: checkcast 126	android/app/ActivityManager$RunningAppProcessInfo
    //   93: astore 5
    //   95: iload_1
    //   96: aload 5
    //   98: getfield 130	android/app/ActivityManager$RunningAppProcessInfo:pid	I
    //   101: if_icmpne -28 -> 73
    //   104: aload_3
    //   105: ifnull +61 -> 166
    //   108: aload_3
    //   109: aload 5
    //   111: getfield 131	android/app/ActivityManager$RunningAppProcessInfo:processName	Ljava/lang/String;
    //   114: invokevirtual 137	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   117: ifeq +49 -> 166
    //   120: iconst_1
    //   121: istore_2
    //   122: aload_0
    //   123: iload_2
    //   124: invokestatic 143	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   127: putfield 77	com/google/android/gms/analytics/internal/ak:b	Ljava/lang/Boolean;
    //   130: aload_0
    //   131: getfield 77	com/google/android/gms/analytics/internal/ak:b	Ljava/lang/Boolean;
    //   134: ifnonnull +22 -> 156
    //   137: aload_0
    //   138: getstatic 146	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   141: putfield 77	com/google/android/gms/analytics/internal/ak:b	Ljava/lang/Boolean;
    //   144: aload_0
    //   145: getfield 25	com/google/android/gms/analytics/internal/ak:a	Lcom/google/android/gms/analytics/internal/v;
    //   148: invokevirtual 150	com/google/android/gms/analytics/internal/v:f	()Lcom/google/android/gms/analytics/internal/i;
    //   151: ldc -104
    //   153: invokevirtual 158	com/google/android/gms/analytics/internal/i:zzaX	(Ljava/lang/String;)V
    //   156: aload_0
    //   157: monitorexit
    //   158: aload_0
    //   159: getfield 77	com/google/android/gms/analytics/internal/ak:b	Ljava/lang/Boolean;
    //   162: invokevirtual 161	java/lang/Boolean:booleanValue	()Z
    //   165: ireturn
    //   166: iconst_0
    //   167: istore_2
    //   168: goto -46 -> 122
    //   171: astore_3
    //   172: aload_0
    //   173: monitorexit
    //   174: aload_3
    //   175: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	176	0	this	ak
    //   60	42	1	i	int
    //   121	47	2	bool	boolean
    //   30	79	3	localObject1	Object
    //   171	4	3	localObject2	Object
    //   23	61	4	localObject3	Object
    //   93	17	5	localRunningAppProcessInfo	android.app.ActivityManager.RunningAppProcessInfo
    // Exception table:
    //   from	to	target	type
    //   9	31	171	finally
    //   35	52	171	finally
    //   57	73	171	finally
    //   73	104	171	finally
    //   108	120	171	finally
    //   122	130	171	finally
    //   130	156	171	finally
    //   156	158	171	finally
    //   172	174	171	finally
  }
  
  public boolean c()
  {
    return ((Boolean)ar.b.a()).booleanValue();
  }
  
  public int d()
  {
    return ((Integer)ar.u.a()).intValue();
  }
  
  public int e()
  {
    return ((Integer)ar.y.a()).intValue();
  }
  
  public int f()
  {
    return ((Integer)ar.z.a()).intValue();
  }
  
  public int g()
  {
    return ((Integer)ar.A.a()).intValue();
  }
  
  public long h()
  {
    return ((Long)ar.j.a()).longValue();
  }
  
  public long i()
  {
    return ((Long)ar.i.a()).longValue();
  }
  
  public long j()
  {
    return ((Long)ar.m.a()).longValue();
  }
  
  public long k()
  {
    return ((Long)ar.n.a()).longValue();
  }
  
  public int l()
  {
    return ((Integer)ar.o.a()).intValue();
  }
  
  public int m()
  {
    return ((Integer)ar.p.a()).intValue();
  }
  
  public long n()
  {
    return ((Integer)ar.C.a()).intValue();
  }
  
  public String o()
  {
    return (String)ar.r.a();
  }
  
  public String p()
  {
    return (String)ar.q.a();
  }
  
  public String q()
  {
    return (String)ar.s.a();
  }
  
  public String r()
  {
    return (String)ar.t.a();
  }
  
  public ae s()
  {
    return ae.zzbc((String)ar.v.a());
  }
  
  public ag t()
  {
    return ag.zzbd((String)ar.w.a());
  }
  
  public Set<Integer> u()
  {
    String str1 = (String)ar.B.a();
    String[] arrayOfString;
    HashSet localHashSet;
    int j;
    int i;
    if ((d == null) || (c == null) || (!c.equals(str1)))
    {
      arrayOfString = TextUtils.split(str1, ",");
      localHashSet = new HashSet();
      j = arrayOfString.length;
      i = 0;
    }
    for (;;)
    {
      String str2;
      if (i < j) {
        str2 = arrayOfString[i];
      }
      try
      {
        localHashSet.add(Integer.valueOf(Integer.parseInt(str2)));
        i += 1;
        continue;
        c = str1;
        d = localHashSet;
        return d;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;) {}
      }
    }
  }
  
  public long v()
  {
    return ((Long)ar.K.a()).longValue();
  }
  
  public long w()
  {
    return ((Long)ar.L.a()).longValue();
  }
  
  public long x()
  {
    return ((Long)ar.O.a()).longValue();
  }
  
  public int y()
  {
    return ((Integer)ar.f.a()).intValue();
  }
  
  public int z()
  {
    return ((Integer)ar.h.a()).intValue();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */