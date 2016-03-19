package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.d.db;
import com.google.android.gms.d.m;

class cj
  implements Runnable
{
  private final Context a;
  private final db b;
  private final String c;
  private final String d;
  private ay<m> e;
  private volatile ep f;
  private volatile String g;
  private volatile String h;
  
  cj(Context paramContext, String paramString, db paramdb, ep paramep)
  {
    a = paramContext;
    b = paramdb;
    c = paramString;
    f = paramep;
    d = ("/r?id=" + paramString);
    g = d;
    h = null;
  }
  
  public cj(Context paramContext, String paramString, ep paramep)
  {
    this(paramContext, paramString, new db(), paramep);
  }
  
  private boolean b()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)a.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      ba.e("...no network connectivity");
      return false;
    }
    return true;
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 92	com/google/android/gms/tagmanager/cj:b	()Z
    //   4: ifne +16 -> 20
    //   7: aload_0
    //   8: getfield 94	com/google/android/gms/tagmanager/cj:e	Lcom/google/android/gms/tagmanager/ay;
    //   11: getstatic 100	com/google/android/gms/tagmanager/az:zzaMi	Lcom/google/android/gms/tagmanager/az;
    //   14: invokeinterface 105 2 0
    //   19: return
    //   20: ldc 107
    //   22: invokestatic 86	com/google/android/gms/tagmanager/ba:e	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: invokevirtual 109	com/google/android/gms/tagmanager/cj:a	()Ljava/lang/String;
    //   29: astore_2
    //   30: aload_0
    //   31: getfield 29	com/google/android/gms/tagmanager/cj:b	Lcom/google/android/gms/d/db;
    //   34: invokevirtual 112	com/google/android/gms/d/db:a	()Lcom/google/android/gms/d/da;
    //   37: astore_1
    //   38: aload_1
    //   39: aload_2
    //   40: invokeinterface 117 2 0
    //   45: astore_3
    //   46: new 119	java/io/ByteArrayOutputStream
    //   49: dup
    //   50: invokespecial 120	java/io/ByteArrayOutputStream:<init>	()V
    //   53: astore 4
    //   55: aload_3
    //   56: aload 4
    //   58: invokestatic 125	com/google/android/gms/d/cp:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   61: aload 4
    //   63: invokevirtual 129	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   66: invokestatic 134	com/google/android/gms/d/m:a	([B)Lcom/google/android/gms/d/m;
    //   69: astore_3
    //   70: new 35	java/lang/StringBuilder
    //   73: dup
    //   74: invokespecial 36	java/lang/StringBuilder:<init>	()V
    //   77: ldc -120
    //   79: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: aload_3
    //   83: invokevirtual 139	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokestatic 86	com/google/android/gms/tagmanager/ba:e	(Ljava/lang/String;)V
    //   92: aload_3
    //   93: getfield 142	com/google/android/gms/d/m:b	Lcom/google/android/gms/d/i;
    //   96: ifnonnull +36 -> 132
    //   99: aload_3
    //   100: getfield 145	com/google/android/gms/d/m:a	[Lcom/google/android/gms/d/l;
    //   103: arraylength
    //   104: ifne +28 -> 132
    //   107: new 35	java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial 36	java/lang/StringBuilder:<init>	()V
    //   114: ldc -109
    //   116: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload_0
    //   120: getfield 31	com/google/android/gms/tagmanager/cj:c	Ljava/lang/String;
    //   123: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokestatic 86	com/google/android/gms/tagmanager/ba:e	(Ljava/lang/String;)V
    //   132: aload_0
    //   133: getfield 94	com/google/android/gms/tagmanager/cj:e	Lcom/google/android/gms/tagmanager/ay;
    //   136: aload_3
    //   137: invokeinterface 150 2 0
    //   142: aload_1
    //   143: invokeinterface 152 1 0
    //   148: ldc -102
    //   150: invokestatic 86	com/google/android/gms/tagmanager/ba:e	(Ljava/lang/String;)V
    //   153: return
    //   154: astore_3
    //   155: new 35	java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial 36	java/lang/StringBuilder:<init>	()V
    //   162: ldc -100
    //   164: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload_2
    //   168: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: ldc -98
    //   173: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: aload_0
    //   177: getfield 31	com/google/android/gms/tagmanager/cj:c	Ljava/lang/String;
    //   180: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: ldc -96
    //   185: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: invokestatic 162	com/google/android/gms/tagmanager/ba:b	(Ljava/lang/String;)V
    //   194: aload_0
    //   195: getfield 94	com/google/android/gms/tagmanager/cj:e	Lcom/google/android/gms/tagmanager/ay;
    //   198: getstatic 165	com/google/android/gms/tagmanager/az:zzaMk	Lcom/google/android/gms/tagmanager/az;
    //   201: invokeinterface 105 2 0
    //   206: aload_1
    //   207: invokeinterface 152 1 0
    //   212: return
    //   213: astore_3
    //   214: new 35	java/lang/StringBuilder
    //   217: dup
    //   218: invokespecial 36	java/lang/StringBuilder:<init>	()V
    //   221: ldc -89
    //   223: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: aload_2
    //   227: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: ldc -87
    //   232: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: aload_3
    //   236: invokevirtual 172	java/io/IOException:getMessage	()Ljava/lang/String;
    //   239: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   245: aload_3
    //   246: invokestatic 175	com/google/android/gms/tagmanager/ba:b	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   249: aload_0
    //   250: getfield 94	com/google/android/gms/tagmanager/cj:e	Lcom/google/android/gms/tagmanager/ay;
    //   253: getstatic 178	com/google/android/gms/tagmanager/az:zzaMj	Lcom/google/android/gms/tagmanager/az;
    //   256: invokeinterface 105 2 0
    //   261: aload_1
    //   262: invokeinterface 152 1 0
    //   267: return
    //   268: astore_3
    //   269: new 35	java/lang/StringBuilder
    //   272: dup
    //   273: invokespecial 36	java/lang/StringBuilder:<init>	()V
    //   276: ldc -76
    //   278: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: aload_2
    //   282: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: ldc -87
    //   287: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: aload_3
    //   291: invokevirtual 172	java/io/IOException:getMessage	()Ljava/lang/String;
    //   294: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: aload_3
    //   301: invokestatic 175	com/google/android/gms/tagmanager/ba:b	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   304: aload_0
    //   305: getfield 94	com/google/android/gms/tagmanager/cj:e	Lcom/google/android/gms/tagmanager/ay;
    //   308: getstatic 165	com/google/android/gms/tagmanager/az:zzaMk	Lcom/google/android/gms/tagmanager/az;
    //   311: invokeinterface 105 2 0
    //   316: aload_1
    //   317: invokeinterface 152 1 0
    //   322: return
    //   323: astore_2
    //   324: aload_1
    //   325: invokeinterface 152 1 0
    //   330: aload_2
    //   331: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	332	0	this	cj
    //   37	288	1	localda	com.google.android.gms.d.da
    //   29	253	2	str	String
    //   323	8	2	localObject1	Object
    //   45	92	3	localObject2	Object
    //   154	1	3	localFileNotFoundException	java.io.FileNotFoundException
    //   213	33	3	localIOException1	java.io.IOException
    //   268	33	3	localIOException2	java.io.IOException
    //   53	9	4	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   38	46	154	java/io/FileNotFoundException
    //   38	46	213	java/io/IOException
    //   46	132	268	java/io/IOException
    //   132	142	268	java/io/IOException
    //   38	46	323	finally
    //   46	132	323	finally
    //   132	142	323	finally
    //   155	206	323	finally
    //   214	261	323	finally
    //   269	316	323	finally
  }
  
  String a()
  {
    Object localObject2 = f.a() + g + "&v=a65833898";
    Object localObject1 = localObject2;
    if (h != null)
    {
      localObject1 = localObject2;
      if (!h.trim().equals("")) {
        localObject1 = (String)localObject2 + "&pv=" + h;
      }
    }
    localObject2 = localObject1;
    if (by.a().b().equals(bz.zzaMK)) {
      localObject2 = (String)localObject1 + "&gtm_debug=x";
    }
    return (String)localObject2;
  }
  
  void a(ay<m> paramay)
  {
    e = paramay;
  }
  
  void a(String paramString)
  {
    if (paramString == null)
    {
      g = d;
      return;
    }
    ba.d("Setting CTFE URL path: " + paramString);
    g = paramString;
  }
  
  void b(String paramString)
  {
    ba.d("Setting previous container version: " + paramString);
    h = paramString;
  }
  
  public void run()
  {
    if (e == null) {
      throw new IllegalStateException("callback must be set before execute");
    }
    e.a();
    c();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */