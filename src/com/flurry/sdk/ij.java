package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.List;

public class ij
  extends jq
{
  private static final String a = ij.class.getSimpleName();
  private String b;
  private ij.a c;
  private int d = 10000;
  private int e = 15000;
  private boolean f = true;
  private final hs<String, String> g = new hs();
  private ij.c j;
  private HttpURLConnection k;
  private boolean l;
  private boolean m;
  private Exception n;
  private int o = -1;
  private final hs<String, String> p = new hs();
  private final Object q = new Object();
  
  private void a(InputStream paramInputStream)
    throws Exception
  {
    if (j == null) {}
    while ((c()) || (paramInputStream == null)) {
      return;
    }
    j.a(this, paramInputStream);
  }
  
  private void a(OutputStream paramOutputStream)
    throws Exception
  {
    if (j == null) {}
    while ((c()) || (paramOutputStream == null)) {
      return;
    }
    j.a(this, paramOutputStream);
  }
  
  /* Error */
  private void n()
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: getfield 90	com/flurry/sdk/ij:m	Z
    //   10: ifeq +4 -> 14
    //   13: return
    //   14: aload_0
    //   15: aload_0
    //   16: getfield 92	com/flurry/sdk/ij:b	Ljava/lang/String;
    //   19: invokestatic 97	com/flurry/sdk/jn:a	(Ljava/lang/String;)Ljava/lang/String;
    //   22: putfield 92	com/flurry/sdk/ij:b	Ljava/lang/String;
    //   25: new 99	java/net/URL
    //   28: dup
    //   29: aload_0
    //   30: getfield 92	com/flurry/sdk/ij:b	Ljava/lang/String;
    //   33: invokespecial 102	java/net/URL:<init>	(Ljava/lang/String;)V
    //   36: astore_2
    //   37: aload_0
    //   38: aload_2
    //   39: invokevirtual 106	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   42: checkcast 108	java/net/HttpURLConnection
    //   45: putfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   48: aload_0
    //   49: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   52: aload_0
    //   53: getfield 49	com/flurry/sdk/ij:d	I
    //   56: invokevirtual 112	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   59: aload_0
    //   60: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   63: aload_0
    //   64: getfield 51	com/flurry/sdk/ij:e	I
    //   67: invokevirtual 115	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   70: aload_0
    //   71: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   74: aload_0
    //   75: getfield 117	com/flurry/sdk/ij:c	Lcom/flurry/sdk/ij$a;
    //   78: invokevirtual 122	com/flurry/sdk/ij$a:toString	()Ljava/lang/String;
    //   81: invokevirtual 125	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   84: aload_0
    //   85: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   88: aload_0
    //   89: getfield 53	com/flurry/sdk/ij:f	Z
    //   92: invokevirtual 129	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   95: aload_0
    //   96: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   99: getstatic 130	com/flurry/sdk/ij$a:c	Lcom/flurry/sdk/ij$a;
    //   102: aload_0
    //   103: getfield 117	com/flurry/sdk/ij:c	Lcom/flurry/sdk/ij$a;
    //   106: invokevirtual 134	com/flurry/sdk/ij$a:equals	(Ljava/lang/Object;)Z
    //   109: invokevirtual 137	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   112: aload_0
    //   113: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   116: iconst_1
    //   117: invokevirtual 140	java/net/HttpURLConnection:setDoInput	(Z)V
    //   120: aload_0
    //   121: getfield 58	com/flurry/sdk/ij:g	Lcom/flurry/sdk/hs;
    //   124: invokevirtual 143	com/flurry/sdk/hs:b	()Ljava/util/Collection;
    //   127: invokeinterface 149 1 0
    //   132: astore_2
    //   133: aload_2
    //   134: invokeinterface 154 1 0
    //   139: ifeq +48 -> 187
    //   142: aload_2
    //   143: invokeinterface 158 1 0
    //   148: checkcast 160	java/util/Map$Entry
    //   151: astore_3
    //   152: aload_0
    //   153: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   156: aload_3
    //   157: invokeinterface 163 1 0
    //   162: checkcast 165	java/lang/String
    //   165: aload_3
    //   166: invokeinterface 168 1 0
    //   171: checkcast 165	java/lang/String
    //   174: invokevirtual 172	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   177: goto -44 -> 133
    //   180: astore_2
    //   181: aload_0
    //   182: invokespecial 174	com/flurry/sdk/ij:p	()V
    //   185: aload_2
    //   186: athrow
    //   187: getstatic 176	com/flurry/sdk/ij$a:b	Lcom/flurry/sdk/ij$a;
    //   190: aload_0
    //   191: getfield 117	com/flurry/sdk/ij:c	Lcom/flurry/sdk/ij$a;
    //   194: invokevirtual 134	com/flurry/sdk/ij$a:equals	(Ljava/lang/Object;)Z
    //   197: ifne +27 -> 224
    //   200: getstatic 130	com/flurry/sdk/ij$a:c	Lcom/flurry/sdk/ij$a;
    //   203: aload_0
    //   204: getfield 117	com/flurry/sdk/ij:c	Lcom/flurry/sdk/ij$a;
    //   207: invokevirtual 134	com/flurry/sdk/ij$a:equals	(Ljava/lang/Object;)Z
    //   210: ifne +14 -> 224
    //   213: aload_0
    //   214: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   217: ldc -78
    //   219: ldc -76
    //   221: invokevirtual 183	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   224: aload_0
    //   225: getfield 90	com/flurry/sdk/ij:m	Z
    //   228: istore_1
    //   229: iload_1
    //   230: ifeq +8 -> 238
    //   233: aload_0
    //   234: invokespecial 174	com/flurry/sdk/ij:p	()V
    //   237: return
    //   238: getstatic 130	com/flurry/sdk/ij$a:c	Lcom/flurry/sdk/ij$a;
    //   241: aload_0
    //   242: getfield 117	com/flurry/sdk/ij:c	Lcom/flurry/sdk/ij$a;
    //   245: invokevirtual 134	com/flurry/sdk/ij$a:equals	(Ljava/lang/Object;)Z
    //   248: istore_1
    //   249: iload_1
    //   250: ifeq +33 -> 283
    //   253: aload_0
    //   254: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   257: invokevirtual 187	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   260: astore_2
    //   261: new 189	java/io/BufferedOutputStream
    //   264: dup
    //   265: aload_2
    //   266: invokespecial 191	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   269: astore_3
    //   270: aload_0
    //   271: aload_3
    //   272: invokespecial 193	com/flurry/sdk/ij:a	(Ljava/io/OutputStream;)V
    //   275: aload_3
    //   276: invokestatic 196	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   279: aload_2
    //   280: invokestatic 196	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   283: aload_0
    //   284: aload_0
    //   285: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   288: invokevirtual 200	java/net/HttpURLConnection:getResponseCode	()I
    //   291: putfield 60	com/flurry/sdk/ij:o	I
    //   294: aload_0
    //   295: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   298: invokevirtual 204	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   301: invokeinterface 210 1 0
    //   306: invokeinterface 149 1 0
    //   311: astore_2
    //   312: aload_2
    //   313: invokeinterface 154 1 0
    //   318: ifeq +80 -> 398
    //   321: aload_2
    //   322: invokeinterface 158 1 0
    //   327: checkcast 160	java/util/Map$Entry
    //   330: astore_3
    //   331: aload_3
    //   332: invokeinterface 168 1 0
    //   337: checkcast 212	java/util/List
    //   340: invokeinterface 213 1 0
    //   345: astore 5
    //   347: aload 5
    //   349: invokeinterface 154 1 0
    //   354: ifeq -42 -> 312
    //   357: aload 5
    //   359: invokeinterface 158 1 0
    //   364: checkcast 165	java/lang/String
    //   367: astore 6
    //   369: aload_0
    //   370: getfield 62	com/flurry/sdk/ij:p	Lcom/flurry/sdk/hs;
    //   373: aload_3
    //   374: invokeinterface 163 1 0
    //   379: aload 6
    //   381: invokevirtual 216	com/flurry/sdk/hs:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   384: goto -37 -> 347
    //   387: aload_3
    //   388: invokestatic 196	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   391: aload 4
    //   393: invokestatic 196	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   396: aload_2
    //   397: athrow
    //   398: getstatic 176	com/flurry/sdk/ij$a:b	Lcom/flurry/sdk/ij$a;
    //   401: aload_0
    //   402: getfield 117	com/flurry/sdk/ij:c	Lcom/flurry/sdk/ij$a;
    //   405: invokevirtual 134	com/flurry/sdk/ij$a:equals	(Ljava/lang/Object;)Z
    //   408: ifne +23 -> 431
    //   411: getstatic 130	com/flurry/sdk/ij$a:c	Lcom/flurry/sdk/ij$a;
    //   414: aload_0
    //   415: getfield 117	com/flurry/sdk/ij:c	Lcom/flurry/sdk/ij$a;
    //   418: invokevirtual 134	com/flurry/sdk/ij$a:equals	(Ljava/lang/Object;)Z
    //   421: istore_1
    //   422: iload_1
    //   423: ifne +8 -> 431
    //   426: aload_0
    //   427: invokespecial 174	com/flurry/sdk/ij:p	()V
    //   430: return
    //   431: aload_0
    //   432: getfield 90	com/flurry/sdk/ij:m	Z
    //   435: istore_1
    //   436: iload_1
    //   437: ifeq +8 -> 445
    //   440: aload_0
    //   441: invokespecial 174	com/flurry/sdk/ij:p	()V
    //   444: return
    //   445: aload_0
    //   446: getfield 70	com/flurry/sdk/ij:k	Ljava/net/HttpURLConnection;
    //   449: invokevirtual 220	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   452: astore_2
    //   453: new 222	java/io/BufferedInputStream
    //   456: dup
    //   457: aload_2
    //   458: invokespecial 224	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   461: astore_3
    //   462: aload_0
    //   463: aload_3
    //   464: invokespecial 226	com/flurry/sdk/ij:a	(Ljava/io/InputStream;)V
    //   467: aload_3
    //   468: invokestatic 196	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   471: aload_2
    //   472: invokestatic 196	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   475: aload_0
    //   476: invokespecial 174	com/flurry/sdk/ij:p	()V
    //   479: return
    //   480: astore_2
    //   481: aconst_null
    //   482: astore_3
    //   483: aload 4
    //   485: invokestatic 196	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   488: aload_3
    //   489: invokestatic 196	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   492: aload_2
    //   493: athrow
    //   494: astore 5
    //   496: aload_2
    //   497: astore_3
    //   498: aload 5
    //   500: astore_2
    //   501: goto -18 -> 483
    //   504: astore 5
    //   506: aload_3
    //   507: astore 4
    //   509: aload_2
    //   510: astore_3
    //   511: aload 5
    //   513: astore_2
    //   514: goto -31 -> 483
    //   517: astore 5
    //   519: aconst_null
    //   520: astore_3
    //   521: aload_2
    //   522: astore 4
    //   524: aload 5
    //   526: astore_2
    //   527: goto -140 -> 387
    //   530: astore 5
    //   532: aload_2
    //   533: astore 4
    //   535: aload 5
    //   537: astore_2
    //   538: goto -151 -> 387
    //   541: astore_2
    //   542: aconst_null
    //   543: astore_3
    //   544: aload 5
    //   546: astore 4
    //   548: goto -161 -> 387
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	551	0	this	ij
    //   228	209	1	bool	boolean
    //   36	107	2	localObject1	Object
    //   180	6	2	localObject2	Object
    //   260	212	2	localObject3	Object
    //   480	17	2	localObject4	Object
    //   500	38	2	localObject5	Object
    //   541	1	2	localObject6	Object
    //   151	393	3	localObject7	Object
    //   1	546	4	localObject8	Object
    //   4	354	5	localIterator	java.util.Iterator
    //   494	5	5	localObject9	Object
    //   504	8	5	localObject10	Object
    //   517	8	5	localObject11	Object
    //   530	15	5	localObject12	Object
    //   367	13	6	str	String
    // Exception table:
    //   from	to	target	type
    //   37	133	180	finally
    //   133	177	180	finally
    //   187	224	180	finally
    //   224	229	180	finally
    //   238	249	180	finally
    //   275	283	180	finally
    //   283	312	180	finally
    //   312	347	180	finally
    //   347	384	180	finally
    //   387	398	180	finally
    //   398	422	180	finally
    //   431	436	180	finally
    //   467	475	180	finally
    //   483	494	180	finally
    //   445	453	480	finally
    //   453	462	494	finally
    //   462	467	504	finally
    //   261	270	517	finally
    //   270	275	530	finally
    //   253	261	541	finally
  }
  
  private void o()
  {
    if (j == null) {}
    while (c()) {
      return;
    }
    j.a(this);
  }
  
  private void p()
  {
    if (l) {}
    do
    {
      return;
      l = true;
    } while (k == null);
    k.disconnect();
  }
  
  private void q()
  {
    if (l) {}
    do
    {
      return;
      l = true;
    } while (k == null);
    new Thread()
    {
      public void run()
      {
        try
        {
          if (ij.a(ij.this) != null) {
            ij.a(ij.this).disconnect();
          }
          return;
        }
        catch (Throwable localThrowable) {}
      }
    }.start();
  }
  
  public void a()
  {
    try
    {
      String str = b;
      if (str == null) {
        return;
      }
      if (!hh.a().c())
      {
        ib.a(3, a, "Network not available, aborting http request: " + b);
        return;
      }
      if ((c == null) || (ij.a.a.equals(c))) {
        c = ij.a.b;
      }
      n();
      ib.a(4, a, "HTTP status: " + o + " for url: " + b);
      return;
    }
    catch (Exception localException)
    {
      ib.a(4, a, "HTTP status: " + o + " for url: " + b);
      ib.a(3, a, "Exception during http request: " + b, localException);
      n = localException;
      return;
    }
    finally
    {
      o();
    }
  }
  
  public void a(ij.a parama)
  {
    c = parama;
  }
  
  public void a(ij.c paramc)
  {
    j = paramc;
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    g.a(paramString1, paramString2);
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public String b()
  {
    return b;
  }
  
  public List<String> b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return p.a(paramString);
  }
  
  public boolean c()
  {
    synchronized (q)
    {
      boolean bool = m;
      return bool;
    }
  }
  
  public boolean d()
  {
    return (!g()) && (e());
  }
  
  public boolean e()
  {
    return (o >= 200) && (o < 400);
  }
  
  public int f()
  {
    return o;
  }
  
  public boolean g()
  {
    return n != null;
  }
  
  public void h()
  {
    synchronized (q)
    {
      m = true;
      q();
      return;
    }
  }
  
  public void i()
  {
    h();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */