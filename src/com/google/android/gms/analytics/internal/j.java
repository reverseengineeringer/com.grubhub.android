package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bc;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.GZIPOutputStream;

class j
  extends t
{
  private static final byte[] c = "\n".getBytes();
  private final String a = a("GoogleAnalytics", u.a, Build.VERSION.RELEASE, p.a(Locale.getDefault()), Build.MODEL, Build.ID);
  private final n b;
  
  j(v paramv)
  {
    super(paramv);
    b = new n(paramv.d());
  }
  
  /* Error */
  private int a(URL paramURL, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 9
    //   9: aconst_null
    //   10: astore 7
    //   12: aload_1
    //   13: invokestatic 82	com/google/android/gms/common/internal/aq:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   16: pop
    //   17: aload_2
    //   18: invokestatic 82	com/google/android/gms/common/internal/aq:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   21: pop
    //   22: aload_0
    //   23: ldc 84
    //   25: aload_2
    //   26: arraylength
    //   27: invokestatic 90	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   30: aload_1
    //   31: invokevirtual 94	com/google/android/gms/analytics/internal/j:zzb	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   34: aload_0
    //   35: invokevirtual 98	com/google/android/gms/analytics/internal/j:zzhZ	()Z
    //   38: ifeq +17 -> 55
    //   41: aload_0
    //   42: ldc 100
    //   44: new 16	java/lang/String
    //   47: dup
    //   48: aload_2
    //   49: invokespecial 103	java/lang/String:<init>	([B)V
    //   52: invokevirtual 107	com/google/android/gms/analytics/internal/j:zza	(Ljava/lang/String;Ljava/lang/Object;)V
    //   55: aload_0
    //   56: aload_1
    //   57: invokevirtual 110	com/google/android/gms/analytics/internal/j:a	(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   60: astore_1
    //   61: aload_1
    //   62: astore 6
    //   64: aload 8
    //   66: astore_1
    //   67: aload 6
    //   69: astore 5
    //   71: aload 9
    //   73: astore 7
    //   75: aload 6
    //   77: iconst_1
    //   78: invokevirtual 116	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   81: aload 8
    //   83: astore_1
    //   84: aload 6
    //   86: astore 5
    //   88: aload 9
    //   90: astore 7
    //   92: aload 6
    //   94: aload_2
    //   95: arraylength
    //   96: invokevirtual 120	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   99: aload 8
    //   101: astore_1
    //   102: aload 6
    //   104: astore 5
    //   106: aload 9
    //   108: astore 7
    //   110: aload 6
    //   112: invokevirtual 123	java/net/HttpURLConnection:connect	()V
    //   115: aload 8
    //   117: astore_1
    //   118: aload 6
    //   120: astore 5
    //   122: aload 9
    //   124: astore 7
    //   126: aload 6
    //   128: invokevirtual 127	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   131: astore 8
    //   133: aload 8
    //   135: astore_1
    //   136: aload 6
    //   138: astore 5
    //   140: aload 8
    //   142: astore 7
    //   144: aload 8
    //   146: aload_2
    //   147: invokevirtual 132	java/io/OutputStream:write	([B)V
    //   150: aload 8
    //   152: astore_1
    //   153: aload 6
    //   155: astore 5
    //   157: aload 8
    //   159: astore 7
    //   161: aload_0
    //   162: aload 6
    //   164: invokespecial 135	com/google/android/gms/analytics/internal/j:a	(Ljava/net/HttpURLConnection;)V
    //   167: aload 8
    //   169: astore_1
    //   170: aload 6
    //   172: astore 5
    //   174: aload 8
    //   176: astore 7
    //   178: aload 6
    //   180: invokevirtual 139	java/net/HttpURLConnection:getResponseCode	()I
    //   183: istore 4
    //   185: iload 4
    //   187: sipush 200
    //   190: if_icmpne +21 -> 211
    //   193: aload 8
    //   195: astore_1
    //   196: aload 6
    //   198: astore 5
    //   200: aload 8
    //   202: astore 7
    //   204: aload_0
    //   205: invokevirtual 143	com/google/android/gms/analytics/internal/j:zzhl	()Lcom/google/android/gms/analytics/internal/r;
    //   208: invokevirtual 148	com/google/android/gms/analytics/internal/r:g	()V
    //   211: aload 8
    //   213: astore_1
    //   214: aload 6
    //   216: astore 5
    //   218: aload 8
    //   220: astore 7
    //   222: aload_0
    //   223: ldc -106
    //   225: iload 4
    //   227: invokestatic 90	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   230: invokevirtual 152	com/google/android/gms/analytics/internal/j:zzb	(Ljava/lang/String;Ljava/lang/Object;)V
    //   233: aload 8
    //   235: ifnull +8 -> 243
    //   238: aload 8
    //   240: invokevirtual 155	java/io/OutputStream:close	()V
    //   243: iload 4
    //   245: istore_3
    //   246: aload 6
    //   248: ifnull +11 -> 259
    //   251: aload 6
    //   253: invokevirtual 158	java/net/HttpURLConnection:disconnect	()V
    //   256: iload 4
    //   258: istore_3
    //   259: iload_3
    //   260: ireturn
    //   261: astore_1
    //   262: aload_0
    //   263: ldc -96
    //   265: aload_1
    //   266: invokevirtual 163	com/google/android/gms/analytics/internal/j:zze	(Ljava/lang/String;Ljava/lang/Object;)V
    //   269: goto -26 -> 243
    //   272: astore_2
    //   273: aconst_null
    //   274: astore 6
    //   276: aload 7
    //   278: astore_1
    //   279: aload 6
    //   281: astore 5
    //   283: aload_0
    //   284: ldc -91
    //   286: aload_2
    //   287: invokevirtual 168	com/google/android/gms/analytics/internal/j:zzd	(Ljava/lang/String;Ljava/lang/Object;)V
    //   290: iconst_0
    //   291: istore_3
    //   292: aload 7
    //   294: ifnull +8 -> 302
    //   297: aload 7
    //   299: invokevirtual 155	java/io/OutputStream:close	()V
    //   302: aload 6
    //   304: ifnull -45 -> 259
    //   307: aload 6
    //   309: invokevirtual 158	java/net/HttpURLConnection:disconnect	()V
    //   312: iconst_0
    //   313: ireturn
    //   314: astore_1
    //   315: aload_0
    //   316: ldc -96
    //   318: aload_1
    //   319: invokevirtual 163	com/google/android/gms/analytics/internal/j:zze	(Ljava/lang/String;Ljava/lang/Object;)V
    //   322: goto -20 -> 302
    //   325: astore_2
    //   326: aconst_null
    //   327: astore 5
    //   329: aload 6
    //   331: astore_1
    //   332: aload_1
    //   333: ifnull +7 -> 340
    //   336: aload_1
    //   337: invokevirtual 155	java/io/OutputStream:close	()V
    //   340: aload 5
    //   342: ifnull +8 -> 350
    //   345: aload 5
    //   347: invokevirtual 158	java/net/HttpURLConnection:disconnect	()V
    //   350: aload_2
    //   351: athrow
    //   352: astore_1
    //   353: aload_0
    //   354: ldc -96
    //   356: aload_1
    //   357: invokevirtual 163	com/google/android/gms/analytics/internal/j:zze	(Ljava/lang/String;Ljava/lang/Object;)V
    //   360: goto -20 -> 340
    //   363: astore_2
    //   364: goto -32 -> 332
    //   367: astore_2
    //   368: goto -92 -> 276
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	371	0	this	j
    //   0	371	1	paramURL	URL
    //   0	371	2	paramArrayOfByte	byte[]
    //   245	47	3	i	int
    //   183	74	4	j	int
    //   69	277	5	localURL1	URL
    //   1	329	6	localURL2	URL
    //   10	288	7	localObject1	Object
    //   4	235	8	localOutputStream	java.io.OutputStream
    //   7	116	9	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   238	243	261	java/io/IOException
    //   55	61	272	java/io/IOException
    //   297	302	314	java/io/IOException
    //   55	61	325	finally
    //   336	340	352	java/io/IOException
    //   75	81	363	finally
    //   92	99	363	finally
    //   110	115	363	finally
    //   126	133	363	finally
    //   144	150	363	finally
    //   161	167	363	finally
    //   178	185	363	finally
    //   204	211	363	finally
    //   222	233	363	finally
    //   283	290	363	finally
    //   75	81	367	java/io/IOException
    //   92	99	367	java/io/IOException
    //   110	115	367	java/io/IOException
    //   126	133	367	java/io/IOException
    //   144	150	367	java/io/IOException
    //   161	167	367	java/io/IOException
    //   178	185	367	java/io/IOException
    //   204	211	367	java/io/IOException
    //   222	233	367	java/io/IOException
  }
  
  private static String a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { paramString1, paramString2, paramString3, paramString4, paramString5, paramString6 });
  }
  
  private URL a(c paramc, String paramString)
  {
    if (paramc.f()) {}
    for (paramc = zzhR().o() + zzhR().q() + "?" + paramString;; paramc = zzhR().p() + zzhR().q() + "?" + paramString) {
      try
      {
        paramc = new URL(paramc);
        return paramc;
      }
      catch (MalformedURLException paramc)
      {
        zze("Error trying to parse the hardcoded host url", paramc);
      }
    }
    return null;
  }
  
  private void a(StringBuilder paramStringBuilder, String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    if (paramStringBuilder.length() != 0) {
      paramStringBuilder.append('&');
    }
    paramStringBuilder.append(URLEncoder.encode(paramString1, "UTF-8"));
    paramStringBuilder.append('=');
    paramStringBuilder.append(URLEncoder.encode(paramString2, "UTF-8"));
  }
  
  private void a(HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    localHttpURLConnection = null;
    try
    {
      paramHttpURLConnection = paramHttpURLConnection.getInputStream();
      localHttpURLConnection = paramHttpURLConnection;
      byte[] arrayOfByte = new byte['Ѐ'];
      int i;
      do
      {
        localHttpURLConnection = paramHttpURLConnection;
        i = paramHttpURLConnection.read(arrayOfByte);
      } while (i > 0);
      if (paramHttpURLConnection != null) {}
      try
      {
        paramHttpURLConnection.close();
        return;
      }
      catch (IOException paramHttpURLConnection)
      {
        zze("Error closing http connection input stream", paramHttpURLConnection);
        return;
      }
      try
      {
        localHttpURLConnection.close();
        throw paramHttpURLConnection;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          zze("Error closing http connection input stream", localIOException);
        }
      }
    }
    finally
    {
      if (localHttpURLConnection == null) {}
    }
  }
  
  private boolean a(c paramc)
  {
    aq.a(paramc);
    boolean bool;
    Object localObject;
    if (!paramc.f())
    {
      bool = true;
      localObject = a(paramc, bool);
      if (localObject != null) {
        break label43;
      }
      zzhQ().a(paramc, "Error formatting hit for upload");
    }
    label43:
    label90:
    do
    {
      do
      {
        return true;
        bool = false;
        break;
        if (((String)localObject).length() > zzhR().d()) {
          break label90;
        }
        paramc = a(paramc, (String)localObject);
        if (paramc == null)
        {
          zzaX("Failed to build collect GET endpoint url");
          return false;
        }
      } while (b(paramc) == 200);
      return false;
      localObject = a(paramc, false);
      if (localObject == null)
      {
        zzhQ().a(paramc, "Error formatting hit for POST upload");
        return true;
      }
      localObject = ((String)localObject).getBytes();
      if (localObject.length > zzhR().f())
      {
        zzhQ().a(paramc, "Hit payload exceeds size limit");
        return true;
      }
      paramc = b(paramc);
      if (paramc == null)
      {
        zzaX("Failed to build collect POST endpoint url");
        return false;
      }
    } while (a(paramc, (byte[])localObject) == 200);
    return false;
  }
  
  private static byte[] a(byte[] paramArrayOfByte)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    localGZIPOutputStream.write(paramArrayOfByte);
    localGZIPOutputStream.close();
    localByteArrayOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }
  
  private int b(URL paramURL)
  {
    aq.a(paramURL);
    zzb("GET request", paramURL);
    localObject = null;
    localURL = null;
    try
    {
      paramURL = a(paramURL);
      localURL = paramURL;
      localObject = paramURL;
      paramURL.connect();
      localURL = paramURL;
      localObject = paramURL;
      a(paramURL);
      localURL = paramURL;
      localObject = paramURL;
      int j = paramURL.getResponseCode();
      if (j == 200)
      {
        localURL = paramURL;
        localObject = paramURL;
        zzhl().g();
      }
      localURL = paramURL;
      localObject = paramURL;
      zzb("GET status", Integer.valueOf(j));
      i = j;
      if (paramURL != null)
      {
        paramURL.disconnect();
        i = j;
      }
    }
    catch (IOException paramURL)
    {
      do
      {
        localObject = localURL;
        zzd("Network GET connection error", paramURL);
        int i = 0;
      } while (localURL == null);
      localURL.disconnect();
      return 0;
    }
    finally
    {
      if (localObject == null) {
        break label146;
      }
      ((HttpURLConnection)localObject).disconnect();
    }
    return i;
  }
  
  /* Error */
  private int b(URL paramURL, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_1
    //   7: invokestatic 82	com/google/android/gms/common/internal/aq:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: pop
    //   11: aload_2
    //   12: invokestatic 82	com/google/android/gms/common/internal/aq:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   15: pop
    //   16: aload_2
    //   17: invokestatic 315	com/google/android/gms/analytics/internal/j:a	([B)[B
    //   20: astore 7
    //   22: aload_0
    //   23: ldc_w 317
    //   26: aload 7
    //   28: arraylength
    //   29: invokestatic 90	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   32: ldc2_w 318
    //   35: aload 7
    //   37: arraylength
    //   38: i2l
    //   39: lmul
    //   40: aload_2
    //   41: arraylength
    //   42: i2l
    //   43: ldiv
    //   44: invokestatic 324	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   47: aload_1
    //   48: invokevirtual 327	com/google/android/gms/analytics/internal/j:zza	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   51: aload 7
    //   53: arraylength
    //   54: aload_2
    //   55: arraylength
    //   56: if_icmple +21 -> 77
    //   59: aload_0
    //   60: ldc_w 329
    //   63: aload 7
    //   65: arraylength
    //   66: invokestatic 90	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   69: aload_2
    //   70: arraylength
    //   71: invokestatic 90	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   74: invokevirtual 332	com/google/android/gms/analytics/internal/j:zzc	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   77: aload_0
    //   78: invokevirtual 98	com/google/android/gms/analytics/internal/j:zzhZ	()Z
    //   81: ifeq +36 -> 117
    //   84: aload_0
    //   85: ldc_w 334
    //   88: new 186	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   95: ldc 14
    //   97: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: new 16	java/lang/String
    //   103: dup
    //   104: aload_2
    //   105: invokespecial 103	java/lang/String:<init>	([B)V
    //   108: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   114: invokevirtual 107	com/google/android/gms/analytics/internal/j:zza	(Ljava/lang/String;Ljava/lang/Object;)V
    //   117: aload_0
    //   118: aload_1
    //   119: invokevirtual 110	com/google/android/gms/analytics/internal/j:a	(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   122: astore_1
    //   123: aload_1
    //   124: iconst_1
    //   125: invokevirtual 116	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   128: aload_1
    //   129: ldc_w 336
    //   132: ldc_w 338
    //   135: invokevirtual 342	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   138: aload_1
    //   139: aload 7
    //   141: arraylength
    //   142: invokevirtual 120	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   145: aload_1
    //   146: invokevirtual 123	java/net/HttpURLConnection:connect	()V
    //   149: aload_1
    //   150: invokevirtual 127	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   153: astore_2
    //   154: aload_2
    //   155: aload 7
    //   157: invokevirtual 132	java/io/OutputStream:write	([B)V
    //   160: aload_2
    //   161: invokevirtual 155	java/io/OutputStream:close	()V
    //   164: aload_0
    //   165: aload_1
    //   166: invokespecial 135	com/google/android/gms/analytics/internal/j:a	(Ljava/net/HttpURLConnection;)V
    //   169: aload_1
    //   170: invokevirtual 139	java/net/HttpURLConnection:getResponseCode	()I
    //   173: istore 4
    //   175: iload 4
    //   177: sipush 200
    //   180: if_icmpne +10 -> 190
    //   183: aload_0
    //   184: invokevirtual 143	com/google/android/gms/analytics/internal/j:zzhl	()Lcom/google/android/gms/analytics/internal/r;
    //   187: invokevirtual 148	com/google/android/gms/analytics/internal/r:g	()V
    //   190: aload_0
    //   191: ldc -106
    //   193: iload 4
    //   195: invokestatic 90	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   198: invokevirtual 152	com/google/android/gms/analytics/internal/j:zzb	(Ljava/lang/String;Ljava/lang/Object;)V
    //   201: iconst_0
    //   202: ifeq +11 -> 213
    //   205: new 344	java/lang/NullPointerException
    //   208: dup
    //   209: invokespecial 345	java/lang/NullPointerException:<init>	()V
    //   212: athrow
    //   213: iload 4
    //   215: istore_3
    //   216: aload_1
    //   217: ifnull +10 -> 227
    //   220: aload_1
    //   221: invokevirtual 158	java/net/HttpURLConnection:disconnect	()V
    //   224: iload 4
    //   226: istore_3
    //   227: iload_3
    //   228: ireturn
    //   229: astore_2
    //   230: aload_0
    //   231: ldc_w 347
    //   234: aload_2
    //   235: invokevirtual 163	com/google/android/gms/analytics/internal/j:zze	(Ljava/lang/String;Ljava/lang/Object;)V
    //   238: goto -25 -> 213
    //   241: astore_2
    //   242: aconst_null
    //   243: astore_1
    //   244: aload_0
    //   245: ldc_w 349
    //   248: aload_2
    //   249: invokevirtual 168	com/google/android/gms/analytics/internal/j:zzd	(Ljava/lang/String;Ljava/lang/Object;)V
    //   252: iconst_0
    //   253: istore_3
    //   254: aload 5
    //   256: ifnull +8 -> 264
    //   259: aload 5
    //   261: invokevirtual 155	java/io/OutputStream:close	()V
    //   264: aload_1
    //   265: ifnull -38 -> 227
    //   268: aload_1
    //   269: invokevirtual 158	java/net/HttpURLConnection:disconnect	()V
    //   272: iconst_0
    //   273: ireturn
    //   274: astore_2
    //   275: aload_0
    //   276: ldc_w 347
    //   279: aload_2
    //   280: invokevirtual 163	com/google/android/gms/analytics/internal/j:zze	(Ljava/lang/String;Ljava/lang/Object;)V
    //   283: goto -19 -> 264
    //   286: astore_2
    //   287: aconst_null
    //   288: astore_1
    //   289: aload 6
    //   291: astore 5
    //   293: aload 5
    //   295: ifnull +8 -> 303
    //   298: aload 5
    //   300: invokevirtual 155	java/io/OutputStream:close	()V
    //   303: aload_1
    //   304: ifnull +7 -> 311
    //   307: aload_1
    //   308: invokevirtual 158	java/net/HttpURLConnection:disconnect	()V
    //   311: aload_2
    //   312: athrow
    //   313: astore 5
    //   315: aload_0
    //   316: ldc_w 347
    //   319: aload 5
    //   321: invokevirtual 163	com/google/android/gms/analytics/internal/j:zze	(Ljava/lang/String;Ljava/lang/Object;)V
    //   324: goto -21 -> 303
    //   327: astore_2
    //   328: aload 6
    //   330: astore 5
    //   332: goto -39 -> 293
    //   335: astore 6
    //   337: aload_2
    //   338: astore 5
    //   340: aload 6
    //   342: astore_2
    //   343: goto -50 -> 293
    //   346: astore_2
    //   347: goto -54 -> 293
    //   350: astore_2
    //   351: goto -107 -> 244
    //   354: astore 6
    //   356: aload_2
    //   357: astore 5
    //   359: aload 6
    //   361: astore_2
    //   362: goto -118 -> 244
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	365	0	this	j
    //   0	365	1	paramURL	URL
    //   0	365	2	paramArrayOfByte	byte[]
    //   215	39	3	i	int
    //   173	52	4	j	int
    //   4	295	5	localObject1	Object
    //   313	7	5	localIOException1	IOException
    //   330	28	5	localObject2	Object
    //   1	328	6	localObject3	Object
    //   335	6	6	localObject4	Object
    //   354	6	6	localIOException2	IOException
    //   20	136	7	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   205	213	229	java/io/IOException
    //   16	77	241	java/io/IOException
    //   77	117	241	java/io/IOException
    //   117	123	241	java/io/IOException
    //   259	264	274	java/io/IOException
    //   16	77	286	finally
    //   77	117	286	finally
    //   117	123	286	finally
    //   298	303	313	java/io/IOException
    //   123	154	327	finally
    //   164	175	327	finally
    //   183	190	327	finally
    //   190	201	327	finally
    //   154	164	335	finally
    //   244	252	346	finally
    //   123	154	350	java/io/IOException
    //   164	175	350	java/io/IOException
    //   183	190	350	java/io/IOException
    //   190	201	350	java/io/IOException
    //   154	164	354	java/io/IOException
  }
  
  private URL b(c paramc)
  {
    if (paramc.f()) {}
    for (paramc = zzhR().o() + zzhR().q();; paramc = zzhR().p() + zzhR().q()) {
      try
      {
        paramc = new URL(paramc);
        return paramc;
      }
      catch (MalformedURLException paramc)
      {
        zze("Error trying to parse the hardcoded host url", paramc);
      }
    }
    return null;
  }
  
  private String c(c paramc)
  {
    return String.valueOf(paramc.c());
  }
  
  private URL c()
  {
    Object localObject = zzhR().o() + zzhR().r();
    try
    {
      localObject = new URL((String)localObject);
      return (URL)localObject;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      zze("Error trying to parse the hardcoded host url", localMalformedURLException);
    }
    return null;
  }
  
  String a(c paramc, boolean paramBoolean)
  {
    aq.a(paramc);
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      Iterator localIterator = paramc.b().entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str = (String)localEntry.getKey();
        if ((!"ht".equals(str)) && (!"qt".equals(str)) && (!"AppUID".equals(str)) && (!"z".equals(str)) && (!"_gmsv".equals(str))) {
          a(localStringBuilder, str, (String)localEntry.getValue());
        }
      }
      a(localStringBuilder, "ht", String.valueOf(paramc.d()));
    }
    catch (UnsupportedEncodingException paramc)
    {
      zze("Failed to encode name or value", paramc);
      return null;
    }
    a(localStringBuilder, "qt", String.valueOf(zzhP().a() - paramc.d()));
    if (zzhR().a()) {
      a(localStringBuilder, "_gmsv", u.a);
    }
    long l;
    if (paramBoolean)
    {
      l = paramc.g();
      if (l == 0L) {
        break label251;
      }
    }
    label251:
    for (paramc = String.valueOf(l);; paramc = c(paramc))
    {
      a(localStringBuilder, "z", paramc);
      return localStringBuilder.toString();
    }
  }
  
  HttpURLConnection a(URL paramURL)
    throws IOException
  {
    paramURL = paramURL.openConnection();
    if (!(paramURL instanceof HttpURLConnection)) {
      throw new IOException("Failed to obtain http connection");
    }
    paramURL = (HttpURLConnection)paramURL;
    paramURL.setDefaultUseCaches(false);
    paramURL.setConnectTimeout(zzhR().D());
    paramURL.setReadTimeout(zzhR().E());
    paramURL.setInstanceFollowRedirects(false);
    paramURL.setRequestProperty("User-Agent", a);
    paramURL.setDoInput(true);
    return paramURL;
  }
  
  public List<Long> a(List<c> paramList)
  {
    boolean bool = true;
    zzhO();
    zzia();
    aq.a(paramList);
    int j;
    if ((zzhR().u().isEmpty()) || (!b.a(zzhR().n() * 1000L)))
    {
      bool = false;
      j = 0;
      if (j != 0) {
        return a(paramList, bool);
      }
    }
    else
    {
      if (zzhR().s() != ae.zzKz) {}
      for (int i = 1;; i = 0)
      {
        j = i;
        if (zzhR().t() == ag.zzKL) {
          break;
        }
        bool = false;
        j = i;
        break;
      }
    }
    return b(paramList);
  }
  
  List<Long> a(List<c> paramList, boolean paramBoolean)
  {
    boolean bool;
    k localk;
    ArrayList localArrayList;
    if (!paramList.isEmpty())
    {
      bool = true;
      aq.b(bool);
      zza("Uploading batched hits. compression, count", Boolean.valueOf(paramBoolean), Integer.valueOf(paramList.size()));
      localk = new k(this);
      localArrayList = new ArrayList();
      paramList = paramList.iterator();
    }
    for (;;)
    {
      c localc;
      if (paramList.hasNext())
      {
        localc = (c)paramList.next();
        if (localk.a(localc)) {}
      }
      else
      {
        if (localk.a() != 0) {
          break label129;
        }
        return localArrayList;
        bool = false;
        break;
      }
      localArrayList.add(Long.valueOf(localc.c()));
    }
    label129:
    paramList = c();
    if (paramList == null)
    {
      zzaX("Failed to build batching endpoint url");
      return Collections.emptyList();
    }
    if (paramBoolean) {}
    for (int i = b(paramList, localk.b()); 200 == i; i = a(paramList, localk.b()))
    {
      zza("Batched upload completed. Hits batched", Integer.valueOf(localk.a()));
      return localArrayList;
    }
    zza("Network error uploading hits. status code", Integer.valueOf(i));
    if (zzhR().u().contains(Integer.valueOf(i)))
    {
      zzaW("Server instructed the client to stop batching");
      b.a();
    }
    return Collections.emptyList();
  }
  
  public boolean a()
  {
    zzhO();
    zzia();
    Object localObject1 = (ConnectivityManager)getContext().getSystemService("connectivity");
    try
    {
      localObject1 = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
      if ((localObject1 == null) || (!((NetworkInfo)localObject1).isConnected()))
      {
        zzaT("No network connectivity");
        return false;
      }
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        Object localObject2 = null;
      }
    }
    return true;
  }
  
  List<Long> b(List<c> paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    paramList = paramList.iterator();
    do
    {
      c localc;
      if (paramList.hasNext())
      {
        localc = (c)paramList.next();
        if (a(localc)) {}
      }
      else
      {
        return localArrayList;
      }
      localArrayList.add(Long.valueOf(localc.c()));
    } while (localArrayList.size() < zzhR().l());
    return localArrayList;
  }
  
  protected void zzhn()
  {
    zza("Network initialized. User agent", a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */