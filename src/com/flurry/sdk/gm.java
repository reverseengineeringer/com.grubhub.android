package com.flurry.sdk;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class gm
  implements jf.a
{
  private static final String a = gm.class.getSimpleName();
  private static String b = "https://proton.flurry.com:443/sdk/v1/config";
  private final Runnable c = new jp()
  {
    public void a()
    {
      gm.a(gm.this);
    }
  };
  private final hw<hc> d = new hw()
  {
    public void a(hc paramAnonymoushc)
    {
      gm.a(gm.this);
    }
  };
  private final hw<ja> e = new hw()
  {
    public void a(ja paramAnonymousja)
    {
      switch (gm.4.a[c.ordinal()])
      {
      default: 
        return;
      case 1: 
        b();
        return;
      case 2: 
        c();
        return;
      case 3: 
        a(d);
        return;
      }
      d();
    }
  };
  private final hw<hd> f = new hw()
  {
    public void a(hd paramAnonymoushd)
    {
      gm.a(gm.this);
    }
  };
  private final hw<hg> g = new hw()
  {
    public void a(hg paramAnonymoushg)
    {
      if (a) {
        gm.a(gm.this);
      }
    }
  };
  private final if<gb> h = new if("proton config request", new gn());
  private final if<gc> i = new if("proton config response", new go());
  private hu<gk> j;
  private hu<List<gp>> k;
  private final gl l = new gl();
  private final hs<String, fz> m = new hs();
  private final List<gp> n = new ArrayList();
  private boolean o;
  private String p;
  private boolean q;
  private long r = 10000L;
  private long s;
  private boolean t;
  private gc u;
  
  public gm()
  {
    je localje = je.a();
    o = ((Boolean)localje.a("ProtonEnabled")).booleanValue();
    localje.a("ProtonEnabled", this);
    ib.a(4, a, "initSettings, protonEnabled = " + o);
    p = ((String)localje.a("ProtonConfigUrl"));
    localje.a("ProtonConfigUrl", this);
    ib.a(4, a, "initSettings, protonConfigUrl = " + p);
    hx.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", d);
    hx.a().a("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", f);
    hx.a().a("com.flurry.android.sdk.NetworkStateEvent", g);
    j = new hu(hn.a().c().getFileStreamPath(m()), ".yflurryprotonconfig.", 1, new iy()
    {
      public iv<gk> a(int paramAnonymousInt)
      {
        return new gk.a();
      }
    });
    k = new hu(hn.a().c().getFileStreamPath(n()), ".yflurryprotonreport.", 1, new iy()
    {
      public iv<List<gp>> a(int paramAnonymousInt)
      {
        return new iu(new gp.a());
      }
    });
    hn.a().b(new jp()
    {
      public void a()
      {
        gm.b(gm.this);
      }
    });
    hn.a().b(new jp()
    {
      public void a()
      {
        gm.c(gm.this);
      }
    });
  }
  
  private void a(long paramLong, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      try
      {
        ib.a(4, a, "Saving proton config response");
        gk localgk = new gk();
        localgk.a(paramLong);
        localgk.a(paramBoolean);
        localgk.a(paramArrayOfByte);
        j.a(localgk);
      }
      finally {}
    }
  }
  
  private void a(String paramString)
  {
    for (;;)
    {
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool) {
          return;
        }
        ib.a(3, a, "Firing Proton callbacks for event: " + paramString);
        Iterator localIterator = m.a("flurry.session_end").iterator();
        Object localObject;
        if (localIterator.hasNext())
        {
          localObject = (fz)localIterator.next();
          if (!gj.a.equals(c)) {
            continue;
          }
          localObject = l.a(d);
          long l1 = System.currentTimeMillis();
          localObject = new gp(ha.a().d(), paramString, (String)localObject, l1 + 259200000L);
          if ("flurry.session_end".equals(paramString)) {
            n.add(localObject);
          }
        }
        else
        {
          continue;
        }
        fu.a().e().b((il)localObject);
      }
      finally {}
    }
  }
  
  private void b(long paramLong)
  {
    try
    {
      Iterator localIterator = n.iterator();
      while (localIterator.hasNext()) {
        if (paramLong == ((gp)localIterator.next()).a()) {
          localIterator.remove();
        }
      }
    }
    finally {}
  }
  
  private void f()
  {
    boolean bool;
    final long l1;
    for (;;)
    {
      gd localgd;
      try
      {
        bool = o;
        if (!bool) {
          return;
        }
        if ((!q) || (!hb.a().c())) {
          continue;
        }
        l1 = System.currentTimeMillis();
        if (!hb.a().e())
        {
          bool = true;
          if (u != null)
          {
            if (t == bool) {
              break label460;
            }
            ib.a(3, a, "Limit ad tracking value has changed, purging");
            u = null;
          }
          hl.a().a(this);
          ib.a(3, a, "Requesting proton config");
          try
          {
            gb localgb = new gb();
            a = hn.a().d();
            b = jk.c(hn.a().c());
            c = jk.d(hn.a().c());
            d = ho.a();
            e = 3;
            f = hk.a().c();
            g = bool;
            h = new ge();
            h.a = new fy();
            h.a.a = Build.MODEL;
            h.a.b = Build.BRAND;
            h.a.c = Build.ID;
            h.a.d = Build.DEVICE;
            h.a.e = Build.PRODUCT;
            h.a.f = Build.VERSION.RELEASE;
            i = new ArrayList();
            localObject2 = hb.a().h().entrySet().iterator();
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
            localObject3 = (Map.Entry)((Iterator)localObject2).next();
            localgd = new gd();
            a = getKeyd;
            if (!getKeye) {
              break label537;
            }
            b = new String((byte[])((Map.Entry)localObject3).getValue());
            i.add(localgd);
            continue;
          }
          catch (Exception localException)
          {
            ib.a(5, a, "Proton config request failed with exception: " + localException);
          }
        }
        bool = false;
      }
      finally {}
      continue;
      label460:
      if (System.currentTimeMillis() < s + u.b * 1000L)
      {
        ib.a(3, a, "Cached Proton config valid, no need to refresh");
      }
      else if (System.currentTimeMillis() >= s + u.c * 1000L)
      {
        ib.a(3, a, "Cached Proton config expired, purging");
        u = null;
        continue;
        label537:
        b = jn.b((byte[])((Map.Entry)localObject3).getValue());
      }
    }
    Object localObject2 = hf.a().e();
    if (localObject2 != null)
    {
      j = new gg();
      j.a = new gf();
      j.a.a = ((Location)localObject2).getLatitude();
      j.a.b = ((Location)localObject2).getLongitude();
      j.a.c = ((Location)localObject2).getAccuracy();
    }
    localObject2 = h.a(localObject1);
    Object localObject3 = new ii();
    if (TextUtils.isEmpty(p)) {}
    for (String str = b;; str = p)
    {
      ((ii)localObject3).a(str);
      ((ii)localObject3).a(5000);
      ((ii)localObject3).a(ij.a.c);
      ((ii)localObject3).a("Content-Type", "application/x-flurry;version=1");
      ((ii)localObject3).a("Accept", "application/x-flurry;version=1");
      ((ii)localObject3).a("FM-Checksum", Integer.toString(if.c((byte[])localObject2)));
      ((ii)localObject3).a(new ir());
      ((ii)localObject3).b(new ir());
      ((ii)localObject3).a(localObject2);
      ((ii)localObject3).a(new ii.a()
      {
        public void a(ii<byte[], byte[]> paramAnonymousii, byte[] paramAnonymousArrayOfByte)
        {
          int i = paramAnonymousii.f();
          ib.a(3, gm.e(), "Proton config request: HTTP status code is:" + i);
          if ((i == 400) || (i == 406) || (i == 412) || (i == 415))
          {
            gm.a(gm.this, 10000L);
            return;
          }
          if ((paramAnonymousii.d()) && (paramAnonymousArrayOfByte != null)) {
            gm.a(gm.this, l1, b, paramAnonymousArrayOfByte);
          }
          for (;;)
          {
            try
            {
              paramAnonymousArrayOfByte = (gc)gm.d(gm.this).d(paramAnonymousArrayOfByte);
              arrayOfByte = paramAnonymousArrayOfByte;
              if (paramAnonymousArrayOfByte != null)
              {
                gm.a(gm.this, 10000L);
                gm.b(gm.this, l1);
                gm.a(gm.this, b);
                gm.a(gm.this, paramAnonymousArrayOfByte);
                gm.e(gm.this);
                arrayOfByte = paramAnonymousArrayOfByte;
              }
              if (arrayOfByte != null) {
                break;
              }
              l1 = gm.f(gm.this);
              if (i == 429)
              {
                paramAnonymousii = paramAnonymousii.b("Retry-After");
                if (!paramAnonymousii.isEmpty())
                {
                  paramAnonymousii = (String)paramAnonymousii.get(0);
                  ib.a(3, gm.e(), "Server returned retry time: " + paramAnonymousii);
                }
              }
            }
            catch (Exception paramAnonymousArrayOfByte)
            {
              long l1;
              try
              {
                long l2 = Long.parseLong(paramAnonymousii);
                l1 = l2 * 1000L;
                gm.a(gm.this, l1);
                ib.a(3, gm.e(), "Proton config request failed, backing off: " + gm.f(gm.this) + "ms");
                hn.a().b(gm.g(gm.this), gm.f(gm.this));
                return;
              }
              catch (NumberFormatException paramAnonymousii)
              {
                ib.a(3, gm.e(), "Server returned nonsensical retry time");
              }
              paramAnonymousArrayOfByte = paramAnonymousArrayOfByte;
              ib.a(5, gm.e(), "Failed to decode proton config response: " + paramAnonymousArrayOfByte);
              paramAnonymousArrayOfByte = null;
              continue;
              l1 <<= 1;
              continue;
            }
            byte[] arrayOfByte = null;
          }
        }
      });
      hl.a().a(this, (jq)localObject3);
      break;
    }
  }
  
  private void g()
  {
    label7:
    Object localObject1;
    if (u == null)
    {
      return;
    }
    else
    {
      do
      {
        do
        {
          m.a();
          localObject1 = u.e;
        } while (localObject1 == null);
        localObject1 = b;
      } while (localObject1 == null);
      localObject1 = ((List)localObject1).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject1).hasNext()) {
        break label7;
      }
      fz localfz = (fz)((Iterator)localObject1).next();
      Object localObject2 = b;
      if (localObject2 == null) {
        break;
      }
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        if (!TextUtils.isEmpty(str)) {
          m.a(str, localfz);
        }
      }
    }
  }
  
  /* Error */
  private void h()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 236	com/flurry/sdk/gm:j	Lcom/flurry/sdk/hu;
    //   6: invokevirtual 650	com/flurry/sdk/hu:a	()Ljava/lang/Object;
    //   9: checkcast 257	com/flurry/sdk/gk
    //   12: astore_2
    //   13: aload_2
    //   14: ifnull +64 -> 78
    //   17: aload_0
    //   18: getfield 126	com/flurry/sdk/gm:i	Lcom/flurry/sdk/if;
    //   21: aload_2
    //   22: invokevirtual 653	com/flurry/sdk/gk:c	()[B
    //   25: invokevirtual 656	com/flurry/sdk/if:d	([B)Ljava/lang/Object;
    //   28: checkcast 522	com/flurry/sdk/gc
    //   31: astore_1
    //   32: aload_1
    //   33: ifnull +45 -> 78
    //   36: iconst_4
    //   37: getstatic 82	com/flurry/sdk/gm:a	Ljava/lang/String;
    //   40: ldc_w 658
    //   43: invokestatic 188	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   46: aload_0
    //   47: ldc2_w 142
    //   50: putfield 145	com/flurry/sdk/gm:r	J
    //   53: aload_0
    //   54: aload_2
    //   55: invokevirtual 659	com/flurry/sdk/gk:a	()J
    //   58: putfield 364	com/flurry/sdk/gm:s	J
    //   61: aload_0
    //   62: aload_2
    //   63: invokevirtual 661	com/flurry/sdk/gk:b	()Z
    //   66: putfield 362	com/flurry/sdk/gm:t	Z
    //   69: aload_0
    //   70: aload_1
    //   71: putfield 252	com/flurry/sdk/gm:u	Lcom/flurry/sdk/gc;
    //   74: aload_0
    //   75: invokespecial 376	com/flurry/sdk/gm:g	()V
    //   78: aload_0
    //   79: iconst_1
    //   80: putfield 381	com/flurry/sdk/gm:q	Z
    //   83: invokestatic 217	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   86: new 18	com/flurry/sdk/gm$3
    //   89: dup
    //   90: aload_0
    //   91: invokespecial 662	com/flurry/sdk/gm$3:<init>	(Lcom/flurry/sdk/gm;)V
    //   94: invokevirtual 247	com/flurry/sdk/hn:b	(Ljava/lang/Runnable;)V
    //   97: aload_0
    //   98: monitorexit
    //   99: return
    //   100: astore_1
    //   101: iconst_5
    //   102: getstatic 82	com/flurry/sdk/gm:a	Ljava/lang/String;
    //   105: new 170	java/lang/StringBuilder
    //   108: dup
    //   109: invokespecial 171	java/lang/StringBuilder:<init>	()V
    //   112: ldc_w 664
    //   115: invokevirtual 177	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: aload_1
    //   119: invokevirtual 520	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   122: invokevirtual 183	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: invokestatic 188	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   128: aload_0
    //   129: getfield 236	com/flurry/sdk/gm:j	Lcom/flurry/sdk/hu;
    //   132: invokevirtual 665	com/flurry/sdk/hu:b	()Z
    //   135: pop
    //   136: aconst_null
    //   137: astore_1
    //   138: goto -106 -> 32
    //   141: astore_1
    //   142: aload_0
    //   143: monitorexit
    //   144: aload_1
    //   145: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	this	gm
    //   31	40	1	localgc	gc
    //   100	19	1	localException	Exception
    //   137	1	1	localObject1	Object
    //   141	4	1	localObject2	Object
    //   12	51	2	localgk	gk
    // Exception table:
    //   from	to	target	type
    //   17	32	100	java/lang/Exception
    //   2	13	141	finally
    //   17	32	141	finally
    //   36	78	141	finally
    //   78	97	141	finally
    //   101	136	141	finally
  }
  
  private void i()
  {
    try
    {
      ib.a(4, a, "Sending " + n.size() + " queued reports.");
      Iterator localIterator = n.iterator();
      while (localIterator.hasNext())
      {
        gp localgp = (gp)localIterator.next();
        fu.a().e().b(localgp);
      }
      l();
    }
    finally {}
  }
  
  private void j()
  {
    try
    {
      ib.a(4, a, "Loading queued report data.");
      List localList = (List)k.a();
      if (localList != null) {
        n.addAll(localList);
      }
      return;
    }
    finally {}
  }
  
  private void k()
  {
    try
    {
      ib.a(4, a, "Saving queued report data.");
      k.a(n);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void l()
  {
    try
    {
      n.clear();
      k.b();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private String m()
  {
    return ".yflurryprotonconfig." + Long.toString(jn.i(hn.a().d()), 16);
  }
  
  private String n()
  {
    return ".yflurryprotonreport." + Long.toString(jn.i(hn.a().d()), 16);
  }
  
  public void a()
  {
    hn.a().c(c);
    hx.a().b("com.flurry.android.sdk.NetworkStateEvent", g);
    hx.a().b("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", f);
    hx.a().b("com.flurry.android.sdk.IdProviderFinishedEvent", d);
    je.a().b("ProtonEnabled", this);
  }
  
  /* Error */
  public void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 165	com/flurry/sdk/gm:o	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 705	com/flurry/sdk/jn:b	()V
    //   17: aload_0
    //   18: lload_1
    //   19: invokespecial 707	com/flurry/sdk/gm:b	(J)V
    //   22: aload_0
    //   23: ldc_w 286
    //   26: invokespecial 708	com/flurry/sdk/gm:a	(Ljava/lang/String;)V
    //   29: aload_0
    //   30: invokespecial 710	com/flurry/sdk/gm:k	()V
    //   33: goto -22 -> 11
    //   36: astore 4
    //   38: aload_0
    //   39: monitorexit
    //   40: aload 4
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	gm
    //   0	43	1	paramLong	long
    //   6	2	3	bool	boolean
    //   36	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	36	finally
    //   14	33	36	finally
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
        ib.a(6, a, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("ProtonEnabled"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("ProtonConfigUrl")) {
            i1 = 1;
          }
        }
        break;
      }
    }
    o = ((Boolean)paramObject).booleanValue();
    ib.a(4, a, "onSettingUpdate, protonEnabled = " + o);
    return;
    p = ((String)paramObject);
    ib.a(4, a, "onSettingUpdate, protonConfigUrl = " + p);
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 165	com/flurry/sdk/gm:o	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 705	com/flurry/sdk/jn:b	()V
    //   17: aload_0
    //   18: invokespecial 272	com/flurry/sdk/gm:f	()V
    //   21: goto -10 -> 11
    //   24: astore_2
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_2
    //   28: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	29	0	this	gm
    //   6	2	1	bool	boolean
    //   24	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	24	finally
    //   14	21	24	finally
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 165	com/flurry/sdk/gm:o	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 705	com/flurry/sdk/jn:b	()V
    //   17: aload_0
    //   18: invokestatic 335	com/flurry/sdk/ha:a	()Lcom/flurry/sdk/ha;
    //   21: invokevirtual 337	com/flurry/sdk/ha:d	()J
    //   24: invokespecial 707	com/flurry/sdk/gm:b	(J)V
    //   27: aload_0
    //   28: invokespecial 722	com/flurry/sdk/gm:i	()V
    //   31: goto -20 -> 11
    //   34: astore_2
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_2
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	gm
    //   6	2	1	bool	boolean
    //   34	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	34	finally
    //   14	31	34	finally
  }
  
  /* Error */
  public void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 165	com/flurry/sdk/gm:o	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 705	com/flurry/sdk/jn:b	()V
    //   17: aload_0
    //   18: invokespecial 722	com/flurry/sdk/gm:i	()V
    //   21: goto -10 -> 11
    //   24: astore_2
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_2
    //   28: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	29	0	this	gm
    //   6	2	1	bool	boolean
    //   24	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	24	finally
    //   14	21	24	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */