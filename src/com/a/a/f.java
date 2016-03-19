package com.a.a;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.a.d;
import com.a.e;
import java.util.Date;

public class f
  extends a
  implements LocationListener
{
  boolean h;
  private LocationManager i;
  private Location j;
  private Date k = new Date();
  
  public f(Activity paramActivity, c paramc, d paramd, long paramLong)
  {
    super(paramActivity, paramc, paramd, b.GEO_LOCATION, paramLong);
    i = ((LocationManager)paramActivity.getApplicationContext().getSystemService("location"));
  }
  
  @TargetApi(9)
  private void a(String paramString)
  {
    i.requestSingleUpdate(paramString, this, null);
  }
  
  private boolean a(Location paramLocation1, Location paramLocation2)
  {
    if (paramLocation2 == null) {}
    int n;
    int i1;
    label41:
    int m;
    label68:
    label74:
    label77:
    for (;;)
    {
      return true;
      long l = paramLocation1.getTime() - paramLocation2.getTime();
      if (l > 3600000L)
      {
        n = 1;
        if (l >= 3600000L) {
          break label68;
        }
        i1 = 1;
        if (l <= 0L) {
          break label74;
        }
      }
      for (m = 1;; m = 0)
      {
        if (n != 0) {
          break label77;
        }
        if (i1 == 0) {
          break label79;
        }
        return false;
        n = 0;
        break;
        i1 = 0;
        break label41;
      }
    }
    label79:
    int i2 = (int)(paramLocation1.getAccuracy() - paramLocation2.getAccuracy());
    if (i2 > 0)
    {
      n = 1;
      label99:
      if (i2 >= 0) {
        break label168;
      }
      i1 = 1;
      label107:
      if (i2 <= 200) {
        break label174;
      }
    }
    label168:
    label174:
    for (i2 = 1;; i2 = 0)
    {
      boolean bool = a(paramLocation1.getProvider(), paramLocation2.getProvider());
      if ((i1 != 0) || ((m != 0) && (n == 0)) || ((m != 0) && (i2 == 0) && (bool))) {
        break;
      }
      return false;
      n = 0;
      break label99;
      i1 = 0;
      break label107;
    }
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return paramString2 == null;
    }
    return paramString1.equals(paramString2);
  }
  
  private void b(String paramString)
  {
    i.requestLocationUpdates(paramString, 1000L, 1.0F, this);
  }
  
  private void g()
  {
    if (j != null)
    {
      long l = (j.getTime() - k.getTime()) / 1000L;
      a("Time it took:" + l, new Object[0]);
      b.a(e.LATITUDE, "" + j.getLatitude());
      b.a(e.LONGITUDE, "" + j.getLongitude());
      b.a(e.GEO_DATE, "" + j.getTime() / 1000L);
      b.a(e.GEO_PROVIDER, "" + j.getProvider());
      h = true;
    }
    for (;;)
    {
      g = true;
      h();
      a(e, f);
      return;
      a("No Location found.", new Object[0]);
      if (e == null)
      {
        e = g.SERVICE_UNAVAILABLE;
        f = new RuntimeException("No location found");
      }
    }
  }
  
  private void h()
  {
    if (i != null) {
      i.removeUpdates(this);
    }
  }
  
  /* Error */
  protected void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: putfield 155	com/a/a/f:h	Z
    //   5: aconst_null
    //   6: astore_1
    //   7: aload_0
    //   8: ldc -63
    //   10: iconst_0
    //   11: anewarray 115	java/lang/Object
    //   14: invokevirtual 118	com/a/a/f:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   17: aload_0
    //   18: getfield 50	com/a/a/f:i	Landroid/location/LocationManager;
    //   21: iconst_1
    //   22: invokevirtual 197	android/location/LocationManager:getProviders	(Z)Ljava/util/List;
    //   25: astore_2
    //   26: aload_2
    //   27: invokeinterface 203 1 0
    //   32: ifne +24 -> 56
    //   35: aload_0
    //   36: getstatic 177	com/a/a/g:SERVICE_UNAVAILABLE	Lcom/a/a/g;
    //   39: new 179	java/lang/RuntimeException
    //   42: dup
    //   43: getstatic 177	com/a/a/g:SERVICE_UNAVAILABLE	Lcom/a/a/g;
    //   46: invokevirtual 206	com/a/a/g:name	()Ljava/lang/String;
    //   49: invokespecial 183	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   52: invokevirtual 170	com/a/a/f:a	(Lcom/a/a/g;Ljava/lang/Exception;)V
    //   55: return
    //   56: aload_2
    //   57: invokeinterface 210 1 0
    //   62: astore 5
    //   64: aload_1
    //   65: astore_2
    //   66: aload 5
    //   68: invokeinterface 216 1 0
    //   73: ifeq +188 -> 261
    //   76: aload 5
    //   78: invokeinterface 220 1 0
    //   83: checkcast 83	java/lang/String
    //   86: astore 4
    //   88: aload_1
    //   89: astore_3
    //   90: aload_0
    //   91: invokevirtual 223	com/a/a/f:isCancelled	()Z
    //   94: ifne +312 -> 406
    //   97: aload_0
    //   98: new 100	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   105: ldc -31
    //   107: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload 4
    //   112: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: ldc -29
    //   117: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 113	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: iconst_0
    //   124: anewarray 115	java/lang/Object
    //   127: invokevirtual 118	com/a/a/f:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   130: aload_1
    //   131: astore_2
    //   132: aload_1
    //   133: ifnonnull +6 -> 139
    //   136: aload 4
    //   138: astore_2
    //   139: aload_0
    //   140: getfield 50	com/a/a/f:i	Landroid/location/LocationManager;
    //   143: ldc -27
    //   145: invokevirtual 233	android/location/LocationManager:getLastKnownLocation	(Ljava/lang/String;)Landroid/location/Location;
    //   148: astore_1
    //   149: aload_2
    //   150: astore_3
    //   151: aload_1
    //   152: ifnull +254 -> 406
    //   155: aload_2
    //   156: astore_3
    //   157: aload_0
    //   158: getfield 32	com/a/a/f:k	Ljava/util/Date;
    //   161: invokevirtual 98	java/util/Date:getTime	()J
    //   164: aload_1
    //   165: invokevirtual 68	android/location/Location:getTime	()J
    //   168: lsub
    //   169: ldc2_w 69
    //   172: lcmp
    //   173: ifge +233 -> 406
    //   176: aload_0
    //   177: new 100	java/lang/StringBuilder
    //   180: dup
    //   181: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   184: ldc -21
    //   186: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: aload_1
    //   190: invokevirtual 78	android/location/Location:getProvider	()Ljava/lang/String;
    //   193: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: invokevirtual 113	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   199: iconst_0
    //   200: anewarray 115	java/lang/Object
    //   203: invokevirtual 118	com/a/a/f:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   206: aload_0
    //   207: aload_1
    //   208: aload_0
    //   209: getfield 97	com/a/a/f:j	Landroid/location/Location;
    //   212: invokespecial 237	com/a/a/f:a	(Landroid/location/Location;Landroid/location/Location;)Z
    //   215: ifeq +46 -> 261
    //   218: aload_0
    //   219: new 100	java/lang/StringBuilder
    //   222: dup
    //   223: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   226: aload_1
    //   227: invokevirtual 78	android/location/Location:getProvider	()Ljava/lang/String;
    //   230: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: ldc -17
    //   235: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: invokevirtual 113	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   241: iconst_0
    //   242: anewarray 115	java/lang/Object
    //   245: invokevirtual 118	com/a/a/f:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   248: aload_0
    //   249: aload_1
    //   250: putfield 97	com/a/a/f:j	Landroid/location/Location;
    //   253: aload_0
    //   254: iconst_1
    //   255: putfield 155	com/a/a/f:h	Z
    //   258: aload 4
    //   260: astore_2
    //   261: aload_0
    //   262: invokevirtual 223	com/a/a/f:isCancelled	()Z
    //   265: ifne +219 -> 484
    //   268: aload_0
    //   269: getfield 163	com/a/a/f:e	Lcom/a/a/g;
    //   272: ifnonnull +212 -> 484
    //   275: aload_0
    //   276: getfield 155	com/a/a/f:h	Z
    //   279: ifeq +7 -> 286
    //   282: aload_2
    //   283: ifnonnull +197 -> 480
    //   286: aload_0
    //   287: ldc -15
    //   289: iconst_0
    //   290: anewarray 115	java/lang/Object
    //   293: invokevirtual 118	com/a/a/f:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   296: aload_0
    //   297: monitorenter
    //   298: invokestatic 246	android/os/Looper:prepare	()V
    //   301: getstatic 252	android/os/Build$VERSION:SDK_INT	I
    //   304: bipush 8
    //   306: if_icmple +131 -> 437
    //   309: aload_0
    //   310: aload_2
    //   311: invokespecial 254	com/a/a/f:a	(Ljava/lang/String;)V
    //   314: aload_0
    //   315: getfield 157	com/a/a/f:g	Z
    //   318: ifne +80 -> 398
    //   321: aload_0
    //   322: invokevirtual 223	com/a/a/f:isCancelled	()Z
    //   325: ifne +73 -> 398
    //   328: aload_0
    //   329: ldc_w 256
    //   332: iconst_1
    //   333: anewarray 115	java/lang/Object
    //   336: dup
    //   337: iconst_0
    //   338: new 100	java/lang/StringBuilder
    //   341: dup
    //   342: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   345: ldc -127
    //   347: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: aload_0
    //   351: invokevirtual 258	com/a/a/f:f	()J
    //   354: invokevirtual 110	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   357: invokevirtual 113	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   360: aastore
    //   361: invokevirtual 118	com/a/a/f:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   364: aload_0
    //   365: aload_0
    //   366: invokevirtual 258	com/a/a/f:f	()J
    //   369: invokevirtual 262	java/lang/Object:wait	(J)V
    //   372: aload_0
    //   373: ldc_w 264
    //   376: iconst_0
    //   377: anewarray 115	java/lang/Object
    //   380: invokevirtual 118	com/a/a/f:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   383: aload_0
    //   384: getfield 155	com/a/a/f:h	Z
    //   387: ifne +11 -> 398
    //   390: aload_0
    //   391: invokespecial 159	com/a/a/f:h	()V
    //   394: aload_0
    //   395: invokevirtual 266	com/a/a/f:e	()V
    //   398: aload_0
    //   399: monitorexit
    //   400: return
    //   401: astore_1
    //   402: aload_0
    //   403: monitorexit
    //   404: aload_1
    //   405: athrow
    //   406: aload_3
    //   407: astore_1
    //   408: goto -344 -> 64
    //   411: astore_1
    //   412: aload_0
    //   413: aload_1
    //   414: invokevirtual 269	java/lang/SecurityException:getMessage	()Ljava/lang/String;
    //   417: iconst_0
    //   418: anewarray 115	java/lang/Object
    //   421: invokevirtual 118	com/a/a/f:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   424: aload_0
    //   425: getstatic 272	com/a/a/g:PERMISSION_DENIED	Lcom/a/a/g;
    //   428: putfield 163	com/a/a/f:e	Lcom/a/a/g;
    //   431: aload_0
    //   432: aload_1
    //   433: putfield 167	com/a/a/f:f	Ljava/lang/Exception;
    //   436: return
    //   437: aload_0
    //   438: aload_2
    //   439: invokespecial 274	com/a/a/f:b	(Ljava/lang/String;)V
    //   442: goto -128 -> 314
    //   445: astore_1
    //   446: aload_0
    //   447: new 100	java/lang/StringBuilder
    //   450: dup
    //   451: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   454: ldc_w 276
    //   457: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   460: aload_1
    //   461: invokevirtual 277	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   464: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   467: invokevirtual 113	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   470: iconst_0
    //   471: anewarray 115	java/lang/Object
    //   474: invokevirtual 118	com/a/a/f:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   477: goto -79 -> 398
    //   480: aload_0
    //   481: invokespecial 279	com/a/a/f:g	()V
    //   484: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	485	0	this	f
    //   6	244	1	localLocation	Location
    //   401	4	1	localObject1	Object
    //   407	1	1	localObject2	Object
    //   411	22	1	localSecurityException	SecurityException
    //   445	16	1	localException	Exception
    //   25	414	2	localObject3	Object
    //   89	318	3	localObject4	Object
    //   86	173	4	str	String
    //   62	15	5	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   298	314	401	finally
    //   314	398	401	finally
    //   398	400	401	finally
    //   402	404	401	finally
    //   437	442	401	finally
    //   446	477	401	finally
    //   7	55	411	java/lang/SecurityException
    //   56	64	411	java/lang/SecurityException
    //   66	88	411	java/lang/SecurityException
    //   90	130	411	java/lang/SecurityException
    //   139	149	411	java/lang/SecurityException
    //   157	206	411	java/lang/SecurityException
    //   206	258	411	java/lang/SecurityException
    //   298	314	445	java/lang/Exception
    //   314	398	445	java/lang/Exception
    //   437	442	445	java/lang/Exception
  }
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
    h();
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    if (a(paramLocation, j)) {
      j = paramLocation;
    }
    g();
  }
  
  public void onProviderDisabled(String paramString)
  {
    g();
  }
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    if ((paramInt == 0) || (paramInt == 1)) {
      g();
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */