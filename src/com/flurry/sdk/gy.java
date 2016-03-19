package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.flurry.android.FlurryEventRecordStatus;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class gy
  implements jf.a
{
  static int a = 100;
  static int b = 10;
  static int c = 1000;
  static int d = 160000;
  static int e = 50;
  private static final String f = gy.class.getSimpleName();
  private final List<gr> A = new ArrayList();
  private int B = 0;
  private int C = 0;
  private final fv D = new fv();
  private final hw<hc> E = new hw()
  {
    public void a(hc paramAnonymoushc)
    {
      hn.a().b(new jp()
      {
        public void a()
        {
          gy.a(gy.this, true, ha.a().d());
        }
      });
    }
  };
  private final AtomicInteger g = new AtomicInteger(0);
  private final AtomicInteger h = new AtomicInteger(0);
  private final AtomicInteger i = new AtomicInteger(0);
  private final hw<ja> j = new hw()
  {
    public void a(ja paramAnonymousja)
    {
      if ((gy.a(gy.this) != null) && (b != gy.a(gy.this).get())) {
        return;
      }
      switch (gy.7.a[c.ordinal()])
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
      hx.a().b("com.flurry.android.sdk.FlurrySessionEvent", gy.b(gy.this));
      a(d);
    }
  };
  private WeakReference<iz> k;
  private File l;
  private hu<List<gw>> m;
  private boolean n;
  private long o;
  private boolean p;
  private String q;
  private byte r;
  private Long s;
  private final List<gw> t = new ArrayList();
  private final Map<String, List<String>> u = new HashMap();
  private final Map<String, String> v = new HashMap();
  private final Map<String, gs> w = new HashMap();
  private final List<gt> x = new ArrayList();
  private boolean y = true;
  private int z = 0;
  
  public gy()
  {
    hx.a().a("com.flurry.android.sdk.FlurrySessionEvent", j);
  }
  
  @TargetApi(18)
  private void a(boolean paramBoolean)
  {
    int i2 = -1;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    label247:
    label311:
    boolean bool;
    if (paramBoolean)
    {
      v.put("boot.time", Long.toString(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
      localObject1 = new StatFs(Environment.getRootDirectory().getAbsolutePath());
      localObject2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
      if (Build.VERSION.SDK_INT >= 18)
      {
        v.put("disk.size.total.internal", Long.toString(((StatFs)localObject1).getAvailableBlocksLong()));
        v.put("disk.size.available.internal", Long.toString(((StatFs)localObject1).getAvailableBlocksLong()));
        v.put("disk.size.total.external", Long.toString(((StatFs)localObject2).getAvailableBlocksLong()));
        v.put("disk.size.available.external", Long.toString(((StatFs)localObject2).getAvailableBlocksLong()));
        v.put("carrier.name", hi.a().c());
        v.put("carrier.details", hi.a().d());
      }
    }
    else
    {
      localObject1 = (ActivityManager)hn.a().c().getSystemService("activity");
      localObject2 = new ActivityManager.MemoryInfo();
      ((ActivityManager)localObject1).getMemoryInfo((ActivityManager.MemoryInfo)localObject2);
      localObject3 = v;
      StringBuilder localStringBuilder = new StringBuilder().append("memory.available");
      if (!paramBoolean) {
        break label612;
      }
      localObject1 = ".start";
      ((Map)localObject3).put((String)localObject1, Long.toString(availMem));
      if (Build.VERSION.SDK_INT >= 16)
      {
        localObject3 = v;
        localStringBuilder = new StringBuilder().append("memory.total");
        if (!paramBoolean) {
          break label620;
        }
        localObject1 = ".start";
        ((Map)localObject3).put((String)localObject1, Long.toString(availMem));
      }
      localObject1 = new IntentFilter("android.intent.action.BATTERY_CHANGED");
      localObject1 = hn.a().c().registerReceiver(null, (IntentFilter)localObject1);
      if (localObject1 == null) {
        break label650;
      }
      i1 = ((Intent)localObject1).getIntExtra("status", -1);
      if ((i1 != 2) && (i1 != 5)) {
        break label628;
      }
      bool = true;
      label391:
      i2 = ((Intent)localObject1).getIntExtra("level", -1);
    }
    for (int i1 = ((Intent)localObject1).getIntExtra("scale", -1);; i1 = -1)
    {
      float f1 = i2 / i1;
      localObject2 = v;
      localObject3 = new StringBuilder().append("battery.charging");
      if (paramBoolean)
      {
        localObject1 = ".start";
        label449:
        ((Map)localObject2).put((String)localObject1, Boolean.toString(bool));
        localObject2 = v;
        localObject3 = new StringBuilder().append("battery.remaining");
        if (!paramBoolean) {
          break label642;
        }
      }
      label612:
      label620:
      label628:
      label642:
      for (localObject1 = ".start";; localObject1 = ".end")
      {
        ((Map)localObject2).put((String)localObject1, Float.toString(f1));
        return;
        v.put("disk.size.total.internal", Long.toString(((StatFs)localObject1).getAvailableBlocks()));
        v.put("disk.size.available.internal", Long.toString(((StatFs)localObject1).getAvailableBlocks()));
        v.put("disk.size.total.external", Long.toString(((StatFs)localObject2).getAvailableBlocks()));
        v.put("disk.size.available.external", Long.toString(((StatFs)localObject2).getAvailableBlocks()));
        break;
        localObject1 = ".end";
        break label247;
        localObject1 = ".end";
        break label311;
        bool = false;
        break label391;
        localObject1 = ".end";
        break label449;
      }
      label650:
      bool = false;
    }
  }
  
  /* Error */
  private void a(boolean paramBoolean, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: ifne +20 -> 23
    //   6: aload_0
    //   7: getfield 140	com/flurry/sdk/gy:t	Ljava/util/List;
    //   10: invokeinterface 356 1 0
    //   15: istore_1
    //   16: iload_1
    //   17: ifeq +6 -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: iconst_3
    //   24: getstatic 104	com/flurry/sdk/gy:f	Ljava/lang/String;
    //   27: ldc_w 358
    //   30: invokestatic 363	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   33: new 365	com/flurry/sdk/gu
    //   36: dup
    //   37: invokestatic 268	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   40: invokevirtual 366	com/flurry/sdk/hn:d	()Ljava/lang/String;
    //   43: invokestatic 371	com/flurry/sdk/hk:a	()Lcom/flurry/sdk/hk;
    //   46: invokevirtual 373	com/flurry/sdk/hk:e	()Ljava/lang/String;
    //   49: aload_0
    //   50: getfield 375	com/flurry/sdk/gy:n	Z
    //   53: invokestatic 380	com/flurry/sdk/hb:a	()Lcom/flurry/sdk/hb;
    //   56: invokevirtual 382	com/flurry/sdk/hb:e	()Z
    //   59: aload_0
    //   60: getfield 384	com/flurry/sdk/gy:o	J
    //   63: lload_2
    //   64: aload_0
    //   65: getfield 140	com/flurry/sdk/gy:t	Ljava/util/List;
    //   68: invokestatic 380	com/flurry/sdk/hb:a	()Lcom/flurry/sdk/hb;
    //   71: invokevirtual 387	com/flurry/sdk/hb:h	()Ljava/util/Map;
    //   74: aload_0
    //   75: getfield 166	com/flurry/sdk/gy:D	Lcom/flurry/sdk/fv;
    //   78: iconst_0
    //   79: invokevirtual 390	com/flurry/sdk/fv:a	(Z)Ljava/util/Map;
    //   82: aload_0
    //   83: getfield 145	com/flurry/sdk/gy:u	Ljava/util/Map;
    //   86: invokestatic 395	com/flurry/sdk/hp:a	()Lcom/flurry/sdk/hp;
    //   89: invokevirtual 398	com/flurry/sdk/hp:c	()Ljava/util/HashMap;
    //   92: invokestatic 198	java/lang/System:currentTimeMillis	()J
    //   95: invokespecial 401	com/flurry/sdk/gu:<init>	(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V
    //   98: invokevirtual 404	com/flurry/sdk/gu:a	()[B
    //   101: astore 4
    //   103: aload 4
    //   105: ifnonnull +61 -> 166
    //   108: getstatic 104	com/flurry/sdk/gy:f	Ljava/lang/String;
    //   111: ldc_w 406
    //   114: invokestatic 409	com/flurry/sdk/ib:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   117: aload_0
    //   118: invokespecial 411	com/flurry/sdk/gy:j	()V
    //   121: goto -101 -> 20
    //   124: astore 4
    //   126: aload_0
    //   127: monitorexit
    //   128: aload 4
    //   130: athrow
    //   131: astore 4
    //   133: getstatic 104	com/flurry/sdk/gy:f	Ljava/lang/String;
    //   136: new 290	java/lang/StringBuilder
    //   139: dup
    //   140: invokespecial 291	java/lang/StringBuilder:<init>	()V
    //   143: ldc_w 413
    //   146: invokevirtual 297	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: aload 4
    //   151: invokevirtual 416	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 301	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: invokestatic 409	com/flurry/sdk/ib:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: aconst_null
    //   161: astore 4
    //   163: goto -60 -> 103
    //   166: iconst_3
    //   167: getstatic 104	com/flurry/sdk/gy:f	Ljava/lang/String;
    //   170: new 290	java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial 291	java/lang/StringBuilder:<init>	()V
    //   177: ldc_w 418
    //   180: invokevirtual 297	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload 4
    //   185: arraylength
    //   186: invokevirtual 421	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   189: ldc_w 423
    //   192: invokevirtual 297	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_0
    //   196: getfield 140	com/flurry/sdk/gy:t	Ljava/util/List;
    //   199: invokeinterface 426 1 0
    //   204: invokevirtual 421	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   207: ldc_w 428
    //   210: invokevirtual 297	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 301	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokestatic 363	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   219: invokestatic 433	com/flurry/sdk/fu:a	()Lcom/flurry/sdk/fu;
    //   222: invokevirtual 436	com/flurry/sdk/fu:d	()Lcom/flurry/sdk/gv;
    //   225: astore 5
    //   227: new 290	java/lang/StringBuilder
    //   230: dup
    //   231: invokespecial 291	java/lang/StringBuilder:<init>	()V
    //   234: ldc_w 438
    //   237: invokevirtual 297	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: invokestatic 442	com/flurry/sdk/ho:a	()I
    //   243: invokevirtual 421	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   246: invokevirtual 301	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   249: astore 6
    //   251: aload 5
    //   253: aload 4
    //   255: invokestatic 268	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   258: invokevirtual 366	com/flurry/sdk/hn:d	()Ljava/lang/String;
    //   261: aload 6
    //   263: invokevirtual 447	com/flurry/sdk/gv:b	([BLjava/lang/String;Ljava/lang/String;)V
    //   266: goto -149 -> 117
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	269	0	this	gy
    //   0	269	1	paramBoolean	boolean
    //   0	269	2	paramLong	long
    //   101	3	4	arrayOfByte1	byte[]
    //   124	5	4	localObject	Object
    //   131	19	4	localException	Exception
    //   161	93	4	arrayOfByte2	byte[]
    //   225	27	5	localgv	gv
    //   249	13	6	str	String
    // Exception table:
    //   from	to	target	type
    //   6	16	124	finally
    //   23	33	124	finally
    //   33	103	124	finally
    //   108	117	124	finally
    //   117	121	124	finally
    //   133	160	124	finally
    //   166	266	124	finally
    //   33	103	131	java/lang/Exception
  }
  
  private void b(long paramLong)
  {
    try
    {
      Iterator localIterator = x.iterator();
      while (localIterator.hasNext())
      {
        gt localgt = (gt)localIterator.next();
        if ((localgt.a()) && (!localgt.b())) {
          localgt.a(paramLong);
        }
      }
    }
    finally {}
  }
  
  private void c(Context paramContext)
  {
    if ((paramContext instanceof Activity))
    {
      Bundle localBundle = ((Activity)paramContext).getIntent().getExtras();
      if (localBundle != null)
      {
        ib.a(3, f, "Launch Options Bundle is present " + localBundle.toString());
        Iterator localIterator = localBundle.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str != null)
          {
            paramContext = localBundle.get(str);
            if (paramContext != null) {}
            for (paramContext = paramContext.toString();; paramContext = "null")
            {
              u.put(str, new ArrayList(Arrays.asList(new String[] { paramContext })));
              ib.a(3, f, "Launch options Key: " + str + ". Its value: " + paramContext);
              break;
            }
          }
        }
      }
    }
  }
  
  /* Error */
  private void i()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_4
    //   3: getstatic 104	com/flurry/sdk/gy:f	Ljava/lang/String;
    //   6: ldc_w 523
    //   9: invokestatic 363	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   12: aload_0
    //   13: getfield 525	com/flurry/sdk/gy:m	Lcom/flurry/sdk/hu;
    //   16: invokevirtual 529	com/flurry/sdk/hu:a	()Ljava/lang/Object;
    //   19: checkcast 352	java/util/List
    //   22: astore 6
    //   24: aload 6
    //   26: ifnull +18 -> 44
    //   29: aload_0
    //   30: getfield 140	com/flurry/sdk/gy:t	Ljava/util/List;
    //   33: aload 6
    //   35: invokeinterface 533 2 0
    //   40: pop
    //   41: aload_0
    //   42: monitorexit
    //   43: return
    //   44: aload_0
    //   45: getfield 535	com/flurry/sdk/gy:l	Ljava/io/File;
    //   48: invokevirtual 538	java/io/File:exists	()Z
    //   51: ifeq -10 -> 41
    //   54: iconst_4
    //   55: getstatic 104	com/flurry/sdk/gy:f	Ljava/lang/String;
    //   58: ldc_w 540
    //   61: invokestatic 363	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   64: aload_0
    //   65: getfield 535	com/flurry/sdk/gy:l	Ljava/io/File;
    //   68: invokestatic 545	com/flurry/sdk/fx:a	(Ljava/io/File;)Lcom/flurry/sdk/gz;
    //   71: astore 6
    //   73: aload 6
    //   75: ifnull +71 -> 146
    //   78: aload 6
    //   80: invokevirtual 548	com/flurry/sdk/gz:a	()Z
    //   83: istore_1
    //   84: aload 6
    //   86: invokevirtual 550	com/flurry/sdk/gz:b	()J
    //   89: lstore 4
    //   91: lload 4
    //   93: lstore_2
    //   94: lload 4
    //   96: lconst_0
    //   97: lcmp
    //   98: ifgt +10 -> 108
    //   101: invokestatic 555	com/flurry/sdk/ha:a	()Lcom/flurry/sdk/ha;
    //   104: invokevirtual 557	com/flurry/sdk/ha:d	()J
    //   107: lstore_2
    //   108: aload_0
    //   109: iload_1
    //   110: putfield 375	com/flurry/sdk/gy:n	Z
    //   113: aload_0
    //   114: lload_2
    //   115: putfield 384	com/flurry/sdk/gy:o	J
    //   118: aload_0
    //   119: invokespecial 520	com/flurry/sdk/gy:n	()V
    //   122: aload 6
    //   124: invokevirtual 560	com/flurry/sdk/gz:c	()Ljava/util/List;
    //   127: astore 6
    //   129: aload 6
    //   131: ifnull +15 -> 146
    //   134: aload_0
    //   135: getfield 140	com/flurry/sdk/gy:t	Ljava/util/List;
    //   138: aload 6
    //   140: invokeinterface 533 2 0
    //   145: pop
    //   146: aload_0
    //   147: getfield 535	com/flurry/sdk/gy:l	Ljava/io/File;
    //   150: invokevirtual 563	java/io/File:delete	()Z
    //   153: pop
    //   154: aload_0
    //   155: invokevirtual 565	com/flurry/sdk/gy:c	()V
    //   158: goto -117 -> 41
    //   161: astore 6
    //   163: aload_0
    //   164: monitorexit
    //   165: aload 6
    //   167: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	168	0	this	gy
    //   83	27	1	bool	boolean
    //   93	22	2	l1	long
    //   89	6	4	l2	long
    //   22	117	6	localObject1	Object
    //   161	5	6	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	24	161	finally
    //   29	41	161	finally
    //   44	73	161	finally
    //   78	91	161	finally
    //   101	108	161	finally
    //   108	129	161	finally
    //   134	146	161	finally
    //   146	158	161	finally
  }
  
  private void j()
  {
    t.clear();
    m.b();
  }
  
  private String k()
  {
    return ".flurryagent." + Integer.toString(hn.a().d().hashCode(), 16);
  }
  
  private String l()
  {
    return ".yflurryreport." + Long.toString(jn.i(hn.a().d()), 16);
  }
  
  private void m()
  {
    SharedPreferences localSharedPreferences = hn.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
    n = localSharedPreferences.getBoolean("com.flurry.sdk.previous_successful_report", false);
    o = localSharedPreferences.getLong("com.flurry.sdk.initial_run_time", ha.a().d());
  }
  
  private void n()
  {
    SharedPreferences.Editor localEditor = hn.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
    localEditor.putBoolean("com.flurry.sdk.previous_successful_report", n);
    localEditor.putLong("com.flurry.sdk.initial_run_time", o);
    localEditor.commit();
  }
  
  private int o()
  {
    return g.incrementAndGet();
  }
  
  private int p()
  {
    return h.incrementAndGet();
  }
  
  public FlurryEventRecordStatus a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
  {
    label412:
    for (;;)
    {
      try
      {
        FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
        long l1 = SystemClock.elapsedRealtime();
        long l2 = ha.a().e();
        String str = jn.b(paramString);
        if (str.length() == 0)
        {
          paramString = FlurryEventRecordStatus.kFlurryEventFailed;
          return paramString;
        }
        paramString = (gs)w.get(str);
        if (paramString == null)
        {
          if (w.size() < a)
          {
            paramString = new gs();
            a = 1;
            w.put(str, paramString);
            ib.e(f, "Event count started: " + str);
            paramString = localFlurryEventRecordStatus;
            if ((!p) || (x.size() >= c) || (z >= d)) {
              continue;
            }
            if (paramMap != null) {
              break label412;
            }
            paramString = Collections.emptyMap();
            if (paramString.size() > b)
            {
              ib.e(f, "MaxEventParams exceeded: " + paramString.size());
              paramString = FlurryEventRecordStatus.kFlurryEventParamsCountExceeded;
            }
          }
          else
          {
            ib.e(f, "Too many different events. Event not counted: " + str);
            paramString = FlurryEventRecordStatus.kFlurryEventUniqueCountExceeded;
            continue;
          }
        }
        else
        {
          a += 1;
          ib.e(f, "Event count incremented: " + str);
          paramString = FlurryEventRecordStatus.kFlurryEventRecorded;
          continue;
        }
        paramString = new gt(o(), str, paramString, l1 - l2, paramBoolean);
        if (paramString.d() + z <= d)
        {
          x.add(paramString);
          int i1 = z;
          z = (paramString.d() + i1);
          paramString = FlurryEventRecordStatus.kFlurryEventRecorded;
        }
        else
        {
          z = d;
          y = false;
          ib.e(f, "Event Log size exceeded. No more event details logged.");
          paramString = FlurryEventRecordStatus.kFlurryEventLogCountExceeded;
          continue;
          y = false;
          continue;
          paramString = paramMap;
        }
      }
      finally {}
    }
  }
  
  /* Error */
  gw a(long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 699	com/flurry/sdk/gx
    //   5: dup
    //   6: invokespecial 700	com/flurry/sdk/gx:<init>	()V
    //   9: astore 8
    //   11: aload 8
    //   13: invokestatic 371	com/flurry/sdk/hk:a	()Lcom/flurry/sdk/hk;
    //   16: invokevirtual 373	com/flurry/sdk/hk:e	()Ljava/lang/String;
    //   19: invokevirtual 702	com/flurry/sdk/gx:a	(Ljava/lang/String;)V
    //   22: aload 8
    //   24: lload_1
    //   25: invokevirtual 703	com/flurry/sdk/gx:a	(J)V
    //   28: aload 8
    //   30: lload_3
    //   31: invokevirtual 705	com/flurry/sdk/gx:b	(J)V
    //   34: aload 8
    //   36: lload 5
    //   38: invokevirtual 707	com/flurry/sdk/gx:c	(J)V
    //   41: aload 8
    //   43: aload_0
    //   44: getfield 147	com/flurry/sdk/gy:v	Ljava/util/Map;
    //   47: invokevirtual 710	com/flurry/sdk/gx:a	(Ljava/util/Map;)V
    //   50: aload 8
    //   52: invokestatic 715	com/flurry/sdk/he:a	()Lcom/flurry/sdk/he;
    //   55: invokevirtual 716	com/flurry/sdk/he:c	()Ljava/lang/String;
    //   58: invokevirtual 718	com/flurry/sdk/gx:b	(Ljava/lang/String;)V
    //   61: aload 8
    //   63: invokestatic 715	com/flurry/sdk/he:a	()Lcom/flurry/sdk/he;
    //   66: invokevirtual 719	com/flurry/sdk/he:d	()Ljava/lang/String;
    //   69: invokevirtual 721	com/flurry/sdk/gx:c	(Ljava/lang/String;)V
    //   72: aload 8
    //   74: iload 7
    //   76: invokevirtual 723	com/flurry/sdk/gx:a	(I)V
    //   79: aload 8
    //   81: invokestatic 727	com/flurry/sdk/jl:j	()I
    //   84: invokevirtual 729	com/flurry/sdk/gx:b	(I)V
    //   87: aload 8
    //   89: aload_0
    //   90: invokevirtual 730	com/flurry/sdk/gy:d	()Ljava/lang/String;
    //   93: invokevirtual 732	com/flurry/sdk/gx:d	(Ljava/lang/String;)V
    //   96: aload 8
    //   98: invokestatic 737	com/flurry/sdk/hf:a	()Lcom/flurry/sdk/hf;
    //   101: invokevirtual 740	com/flurry/sdk/hf:e	()Landroid/location/Location;
    //   104: invokevirtual 743	com/flurry/sdk/gx:a	(Landroid/location/Location;)V
    //   107: aload 8
    //   109: aload_0
    //   110: invokevirtual 745	com/flurry/sdk/gy:h	()I
    //   113: invokevirtual 747	com/flurry/sdk/gx:c	(I)V
    //   116: aload 8
    //   118: aload_0
    //   119: getfield 749	com/flurry/sdk/gy:r	B
    //   122: invokevirtual 752	com/flurry/sdk/gx:a	(B)V
    //   125: aload 8
    //   127: aload_0
    //   128: getfield 754	com/flurry/sdk/gy:s	Ljava/lang/Long;
    //   131: invokevirtual 757	com/flurry/sdk/gx:a	(Ljava/lang/Long;)V
    //   134: aload 8
    //   136: aload_0
    //   137: invokevirtual 759	com/flurry/sdk/gy:g	()Ljava/util/Map;
    //   140: invokevirtual 761	com/flurry/sdk/gx:b	(Ljava/util/Map;)V
    //   143: aload 8
    //   145: aload_0
    //   146: invokevirtual 763	com/flurry/sdk/gy:e	()Ljava/util/List;
    //   149: invokevirtual 766	com/flurry/sdk/gx:a	(Ljava/util/List;)V
    //   152: aload 8
    //   154: aload_0
    //   155: getfield 153	com/flurry/sdk/gy:y	Z
    //   158: invokevirtual 768	com/flurry/sdk/gx:a	(Z)V
    //   161: aload 8
    //   163: aload_0
    //   164: invokevirtual 770	com/flurry/sdk/gy:f	()Ljava/util/List;
    //   167: invokevirtual 772	com/flurry/sdk/gx:b	(Ljava/util/List;)V
    //   170: aload 8
    //   172: aload_0
    //   173: getfield 159	com/flurry/sdk/gy:B	I
    //   176: invokevirtual 774	com/flurry/sdk/gx:d	(I)V
    //   179: new 776	com/flurry/sdk/gw
    //   182: dup
    //   183: aload 8
    //   185: invokespecial 779	com/flurry/sdk/gw:<init>	(Lcom/flurry/sdk/gx;)V
    //   188: astore 8
    //   190: aload 8
    //   192: ifnonnull +12 -> 204
    //   195: getstatic 104	com/flurry/sdk/gy:f	Ljava/lang/String;
    //   198: ldc_w 781
    //   201: invokestatic 409	com/flurry/sdk/ib:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   204: aload_0
    //   205: monitorexit
    //   206: aload 8
    //   208: areturn
    //   209: astore 8
    //   211: iconst_5
    //   212: getstatic 104	com/flurry/sdk/gy:f	Ljava/lang/String;
    //   215: new 290	java/lang/StringBuilder
    //   218: dup
    //   219: invokespecial 291	java/lang/StringBuilder:<init>	()V
    //   222: ldc_w 783
    //   225: invokevirtual 297	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: aload 8
    //   230: invokevirtual 416	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   233: invokevirtual 301	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   236: invokestatic 363	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   239: aconst_null
    //   240: astore 8
    //   242: goto -52 -> 190
    //   245: astore 8
    //   247: aload_0
    //   248: monitorexit
    //   249: aload 8
    //   251: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	252	0	this	gy
    //   0	252	1	paramLong1	long
    //   0	252	3	paramLong2	long
    //   0	252	5	paramLong3	long
    //   0	252	7	paramInt	int
    //   9	198	8	localObject1	Object
    //   209	20	8	localIOException	java.io.IOException
    //   240	1	8	localObject2	Object
    //   245	5	8	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   179	190	209	java/io/IOException
    //   2	179	245	finally
    //   179	190	245	finally
    //   195	204	245	finally
    //   211	239	245	finally
  }
  
  public void a()
  {
    n = true;
  }
  
  public void a(final long paramLong)
  {
    try
    {
      hx.a().a(E);
      hn.a().b(new jp()
      {
        public void a()
        {
          fu.a().c().d();
          hn.a().b(new jp()
          {
            public void a()
            {
              fu.a().e().d();
            }
          });
        }
      });
      if (hb.a().c()) {
        hn.a().b(new jp()
        {
          public void a()
          {
            gy.a(gy.this, false, paramLong);
          }
        });
      }
      je.a().b("Gender", this);
      je.a().b("UserId", this);
      je.a().b("Age", this);
      je.a().b("LogEvents", this);
      return;
    }
    finally {}
  }
  
  public void a(Context paramContext)
  {
    try
    {
      hn.a().b(new jp()
      {
        public void a()
        {
          fu.a().e().e();
        }
      });
      hn.a().b(new jp()
      {
        public void a()
        {
          fu.a().c().c();
        }
      });
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public void a(iz paramiz, Context paramContext)
  {
    k = new WeakReference(paramiz);
    paramiz = je.a();
    p = ((Boolean)paramiz.a("LogEvents")).booleanValue();
    paramiz.a("LogEvents", this);
    ib.a(4, f, "initSettings, LogEvents = " + p);
    q = ((String)paramiz.a("UserId"));
    paramiz.a("UserId", this);
    ib.a(4, f, "initSettings, UserId = " + q);
    r = ((Byte)paramiz.a("Gender")).byteValue();
    paramiz.a("Gender", this);
    ib.a(4, f, "initSettings, Gender = " + r);
    s = ((Long)paramiz.a("Age"));
    paramiz.a("Age", this);
    ib.a(4, f, "initSettings, BirthDate = " + s);
    l = paramContext.getFileStreamPath(k());
    m = new hu(paramContext.getFileStreamPath(l()), ".yflurryreport.", 1, new iy()
    {
      public iv<List<gw>> a(int paramAnonymousInt)
      {
        return new iu(new gw.a());
      }
    });
    c(paramContext);
    a(true);
    hn.a().b(new jp()
    {
      public void a()
      {
        fu.a().c().b();
      }
    });
    hn.a().b(new jp()
    {
      public void a()
      {
        gy.c(gy.this);
      }
    });
    hn.a().b(new jp()
    {
      public void a()
      {
        gy.d(gy.this);
      }
    });
    if (hb.a().c())
    {
      hn.a().b(new jp()
      {
        public void a()
        {
          gy.a(gy.this, true, ha.a().d());
        }
      });
      return;
    }
    hx.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", E);
  }
  
  public void a(String paramString, Object paramObject)
  {
    int i1 = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        ib.a(6, f, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("LogEvents"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("UserId"))
          {
            i1 = 1;
            continue;
            if (paramString.equals("Gender"))
            {
              i1 = 2;
              continue;
              if (paramString.equals("Age")) {
                i1 = 3;
              }
            }
          }
        }
        break;
      }
    }
    p = ((Boolean)paramObject).booleanValue();
    ib.a(4, f, "onSettingUpdate, LogEvents = " + p);
    return;
    q = ((String)paramObject);
    ib.a(4, f, "onSettingUpdate, UserId = " + q);
    return;
    r = ((Byte)paramObject).byteValue();
    ib.a(4, f, "onSettingUpdate, Gender = " + r);
    return;
    s = ((Long)paramObject);
    ib.a(4, f, "onSettingUpdate, Birthdate = " + s);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, Throwable paramThrowable)
  {
    if (paramString1 != null) {}
    for (;;)
    {
      try
      {
        long l1;
        if ("uncaught".equals(paramString1))
        {
          i1 = 1;
          B += 1;
          if (A.size() < e)
          {
            l1 = System.currentTimeMillis();
            paramString1 = new gr(p(), Long.valueOf(l1).longValue(), paramString1, paramString2, paramString3, paramThrowable);
            A.add(paramString1);
            ib.e(f, "Error logged: " + paramString1.c());
          }
        }
        else
        {
          i1 = 0;
          continue;
        }
        if (i1 == 0) {
          break label243;
        }
        int i1 = 0;
        if (i1 >= A.size()) {
          continue;
        }
        gr localgr = (gr)A.get(i1);
        if ((localgr.c() != null) && (!"uncaught".equals(localgr.c())))
        {
          l1 = System.currentTimeMillis();
          paramString1 = new gr(p(), Long.valueOf(l1).longValue(), paramString1, paramString2, paramString3, paramThrowable);
          A.set(i1, paramString1);
          continue;
        }
        i1 += 1;
      }
      finally {}
      continue;
      label243:
      ib.e(f, "Max errors logged. No more errors logged.");
    }
  }
  
  public void a(String paramString, Map<String, String> paramMap)
  {
    for (;;)
    {
      try
      {
        Iterator localIterator = x.iterator();
        gt localgt;
        int i1;
        if (localIterator.hasNext())
        {
          localgt = (gt)localIterator.next();
          if (!localgt.a(paramString)) {
            continue;
          }
          long l1 = SystemClock.elapsedRealtime();
          long l2 = ha.a().e();
          if ((paramMap != null) && (paramMap.size() > 0) && (z < d))
          {
            i1 = z - localgt.d();
            paramString = new HashMap(localgt.c());
            localgt.a(paramMap);
            if (localgt.d() + i1 > d) {
              break label212;
            }
            if (localgt.c().size() > b)
            {
              ib.e(f, "MaxEventParams exceeded on endEvent: " + localgt.c().size());
              localgt.b(paramString);
            }
          }
          else
          {
            localgt.a(l1 - l2);
          }
        }
        else
        {
          return;
        }
        z = (i1 + localgt.d());
        continue;
        localgt.b(paramString);
      }
      finally {}
      label212:
      y = false;
      z = d;
      ib.e(f, "Event Log size exceeded. No more event details logged.");
    }
  }
  
  public void b()
  {
    try
    {
      C += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void b(Context paramContext)
  {
    try
    {
      a(false);
      final long l1 = ha.a().d();
      long l2 = ha.a().f();
      final long l3 = ha.a().h();
      int i1 = ha.a().i().a();
      b(ha.a().f());
      hn.a().b(new jp()
      {
        public void a()
        {
          fu.a().c().a(l1);
        }
      });
      hn.a().b(new jp()
      {
        public void a()
        {
          gy.e(gy.this);
        }
      });
      if (hb.a().c()) {
        hn.a().b(new jp()
        {
          public void a()
          {
            gw localgw = a(l1, l3, c, d);
            gy.f(gy.this).clear();
            gy.f(gy.this).add(localgw);
            c();
          }
        });
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public void c()
  {
    try
    {
      ib.a(4, f, "Saving persistent agent data.");
      m.a(t);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  String d()
  {
    if (q == null) {
      return "";
    }
    return q;
  }
  
  List<gt> e()
  {
    return x;
  }
  
  List<gr> f()
  {
    return A;
  }
  
  Map<String, gs> g()
  {
    return w;
  }
  
  int h()
  {
    return C;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */