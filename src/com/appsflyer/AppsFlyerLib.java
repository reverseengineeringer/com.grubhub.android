package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Process;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.google.android.gms.a.a.b;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class AppsFlyerLib
  extends BroadcastReceiver
{
  public static final Uri a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
  private static final List<String> b = Arrays.asList(new String[] { "is_cache" });
  private static a c = null;
  private static boolean d = false;
  private static long e;
  private static ScheduledExecutorService f = null;
  
  public static String a()
  {
    return a("AppUserId");
  }
  
  /* Error */
  public static String a(android.content.ContentResolver paramContentResolver)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getstatic 31	com/appsflyer/AppsFlyerLib:a	Landroid/net/Uri;
    //   6: iconst_1
    //   7: anewarray 33	java/lang/String
    //   10: dup
    //   11: iconst_0
    //   12: ldc 70
    //   14: aastore
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokevirtual 76	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_3
    //   22: aload_3
    //   23: ifnull +14 -> 37
    //   26: aload_3
    //   27: invokeinterface 82 1 0
    //   32: istore_1
    //   33: iload_1
    //   34: ifne +19 -> 53
    //   37: aload_2
    //   38: astore_0
    //   39: aload_3
    //   40: ifnull +11 -> 51
    //   43: aload_3
    //   44: invokeinterface 85 1 0
    //   49: aload_2
    //   50: astore_0
    //   51: aload_0
    //   52: areturn
    //   53: aload_3
    //   54: aload_3
    //   55: ldc 70
    //   57: invokeinterface 89 2 0
    //   62: invokeinterface 93 2 0
    //   67: astore_0
    //   68: aload_0
    //   69: astore_2
    //   70: aload_2
    //   71: astore_0
    //   72: aload_3
    //   73: ifnull -22 -> 51
    //   76: aload_3
    //   77: invokeinterface 85 1 0
    //   82: aload_2
    //   83: areturn
    //   84: astore_0
    //   85: aload_2
    //   86: areturn
    //   87: astore_0
    //   88: ldc 95
    //   90: ldc 97
    //   92: aload_0
    //   93: invokestatic 103	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   96: pop
    //   97: aload_2
    //   98: astore_0
    //   99: aload_3
    //   100: ifnull -49 -> 51
    //   103: aload_3
    //   104: invokeinterface 85 1 0
    //   109: aconst_null
    //   110: areturn
    //   111: astore_0
    //   112: aconst_null
    //   113: areturn
    //   114: astore_0
    //   115: aload_3
    //   116: ifnull +9 -> 125
    //   119: aload_3
    //   120: invokeinterface 85 1 0
    //   125: aload_0
    //   126: athrow
    //   127: astore_0
    //   128: aconst_null
    //   129: areturn
    //   130: astore_2
    //   131: goto -6 -> 125
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	paramContentResolver	android.content.ContentResolver
    //   32	2	1	bool	boolean
    //   1	97	2	localContentResolver	android.content.ContentResolver
    //   130	1	2	localException	Exception
    //   21	99	3	localCursor	android.database.Cursor
    // Exception table:
    //   from	to	target	type
    //   76	82	84	java/lang/Exception
    //   26	33	87	java/lang/Exception
    //   53	68	87	java/lang/Exception
    //   103	109	111	java/lang/Exception
    //   26	33	114	finally
    //   53	68	114	finally
    //   88	97	114	finally
    //   43	49	127	java/lang/Exception
    //   119	125	130	java/lang/Exception
  }
  
  public static String a(String paramString)
  {
    return h.a().b(paramString);
  }
  
  private static String a(SimpleDateFormat paramSimpleDateFormat, Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("appsflyer-data", 0);
    String str = localSharedPreferences.getString("appsFlyerFirstInstall", null);
    Object localObject = str;
    if (str == null)
    {
      if (!h(paramContext)) {
        break label121;
      }
      if (g(paramContext)) {
        Log.d("AppsFlyer_1.16", "AppsFlyer: first launch detected");
      }
    }
    label121:
    for (paramSimpleDateFormat = paramSimpleDateFormat.format(new Date());; paramSimpleDateFormat = "")
    {
      localObject = localSharedPreferences.edit();
      ((SharedPreferences.Editor)localObject).putString("appsFlyerFirstInstall", paramSimpleDateFormat);
      ((SharedPreferences.Editor)localObject).commit();
      localObject = paramSimpleDateFormat;
      if (g(paramContext)) {
        Log.i("AppsFlyer_1.16", "AppsFlyer: first launch date: " + (String)localObject);
      }
      return (String)localObject;
    }
  }
  
  public static void a(Context paramContext)
  {
    a(paramContext, null);
    if (g(paramContext)) {
      Log.i("AppsFlyer_1.16", "Start tracking package: " + paramContext.getPackageName());
    }
  }
  
  @Deprecated
  public static void a(Context paramContext, String paramString)
  {
    a(paramContext, paramString, null, null);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((paramString2 != null) && (paramString3 != null) && (paramString3.matches("-?\\d+(\\.\\d+)?"))) {
      Log.i("AppsFlyer_1.16", "AppsFLyer: numeric value '" + paramString3 + "' for event '" + paramString2 + "' will be categorized as a revenue event.");
    }
    String str2 = h.a().a(paramContext);
    String str1 = str2;
    if (str2 == null) {
      str1 = "";
    }
    b(paramContext, paramString1, paramString2, paramString3, str1);
  }
  
  private static void a(Context paramContext, Map<String, String> paramMap)
  {
    if (h.a().b("deviceTrackingDisabled", false))
    {
      paramMap.put("deviceTrackingDisabled", "true");
      return;
    }
    localSharedPreferences = paramContext.getSharedPreferences("appsflyer-data", 0);
    boolean bool = h.a().b("collectIMEI", true);
    String str1 = localSharedPreferences.getString("imeiCached", null);
    if (bool) {}
    for (;;)
    {
      try
      {
        localObject1 = (TelephonyManager)paramContext.getSystemService("phone");
        str2 = (String)localObject1.getClass().getMethod("getDeviceId", new Class[0]).invoke(localObject1, new Object[0]);
        if (str2 != null) {
          continue;
        }
        localObject1 = str1;
      }
      catch (Exception localException)
      {
        Object localObject1;
        String str2;
        Log.i("AppsFlyer_1.16", "WARNING:READ_PHONE_STATE is missing");
        continue;
        localException.commit();
        Object localObject2 = str2;
        continue;
        localObject2 = localSharedPreferences.edit();
        ((SharedPreferences.Editor)localObject2).putString("androidIdCached", paramContext);
        if (Build.VERSION.SDK_INT < 9) {
          continue;
        }
        ((SharedPreferences.Editor)localObject2).apply();
        continue;
        ((SharedPreferences.Editor)localObject2).commit();
        continue;
      }
      if (localObject1 != null) {
        paramMap.put("imei", localObject1);
      }
      bool = h.a().b("collectAndroidId", true);
      localObject1 = localSharedPreferences.getString("androidIdCached", null);
      if (!bool) {
        break;
      }
      try
      {
        paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
        if (paramContext != null) {
          continue;
        }
        paramContext = (Context)localObject1;
        if (paramContext == null) {
          break;
        }
        paramMap.put("android_id", paramContext);
        return;
      }
      catch (Exception paramContext)
      {
        return;
      }
      localObject1 = str2;
      if (str1 == null)
      {
        localObject1 = localSharedPreferences.edit();
        ((SharedPreferences.Editor)localObject1).putString("imeiCached", str2);
        if (Build.VERSION.SDK_INT < 9) {
          continue;
        }
        ((SharedPreferences.Editor)localObject1).apply();
        localObject1 = str2;
      }
    }
  }
  
  /* Error */
  private void a(String paramString, Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 7
    //   6: aload 5
    //   8: astore 4
    //   10: new 162	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   17: ldc_w 296
    //   20: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: astore 6
    //   28: aload 5
    //   30: astore 4
    //   32: aload_2
    //   33: invokestatic 133	com/appsflyer/AppsFlyerLib:g	(Landroid/content/Context;)Z
    //   36: ifeq +34 -> 70
    //   39: aload 5
    //   41: astore 4
    //   43: ldc 95
    //   45: new 162	java/lang/StringBuilder
    //   48: dup
    //   49: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   52: ldc_w 298
    //   55: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: aload 6
    //   60: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokestatic 175	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   69: pop
    //   70: aload 5
    //   72: astore 4
    //   74: new 300	java/util/HashMap
    //   77: dup
    //   78: invokespecial 301	java/util/HashMap:<init>	()V
    //   81: astore 8
    //   83: aload 5
    //   85: astore 4
    //   87: aload 8
    //   89: ldc_w 303
    //   92: aload_1
    //   93: invokeinterface 229 3 0
    //   98: pop
    //   99: aload 5
    //   101: astore 4
    //   103: aload_2
    //   104: aload 8
    //   106: invokestatic 305	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/util/Map;)V
    //   109: aload 5
    //   111: astore 4
    //   113: aload_2
    //   114: aload 8
    //   116: invokestatic 307	com/appsflyer/AppsFlyerLib:a	(Landroid/content/Context;Ljava/util/Map;)V
    //   119: aload 5
    //   121: astore 4
    //   123: aload 8
    //   125: invokestatic 309	com/appsflyer/AppsFlyerLib:d	(Ljava/util/Map;)Ljava/lang/String;
    //   128: astore 8
    //   130: aload 5
    //   132: astore 4
    //   134: new 311	java/net/URL
    //   137: dup
    //   138: aload 6
    //   140: invokespecial 314	java/net/URL:<init>	(Ljava/lang/String;)V
    //   143: invokevirtual 318	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   146: checkcast 320	java/net/HttpURLConnection
    //   149: astore 5
    //   151: aload 5
    //   153: ldc_w 322
    //   156: invokevirtual 325	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   159: aload 8
    //   161: invokevirtual 329	java/lang/String:getBytes	()[B
    //   164: arraylength
    //   165: istore_3
    //   166: aload 5
    //   168: ldc_w 331
    //   171: new 162	java/lang/StringBuilder
    //   174: dup
    //   175: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   178: iload_3
    //   179: invokevirtual 334	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   182: ldc -79
    //   184: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokevirtual 338	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   193: aload 5
    //   195: ldc_w 340
    //   198: ldc_w 341
    //   201: invokevirtual 338	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   204: aload 5
    //   206: sipush 10000
    //   209: invokevirtual 345	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   212: aload 5
    //   214: iconst_1
    //   215: invokevirtual 349	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   218: new 351	java/io/OutputStreamWriter
    //   221: dup
    //   222: aload 5
    //   224: invokevirtual 355	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   227: invokespecial 358	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   230: astore 6
    //   232: aload 6
    //   234: aload 8
    //   236: invokevirtual 361	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   239: aload 6
    //   241: ifnull +8 -> 249
    //   244: aload 6
    //   246: invokevirtual 362	java/io/OutputStreamWriter:close	()V
    //   249: aload 5
    //   251: invokevirtual 366	java/net/HttpURLConnection:getResponseCode	()I
    //   254: sipush 200
    //   257: if_icmpne +133 -> 390
    //   260: aload_2
    //   261: invokestatic 133	com/appsflyer/AppsFlyerLib:g	(Landroid/content/Context;)Z
    //   264: ifeq +29 -> 293
    //   267: ldc 95
    //   269: new 162	java/lang/StringBuilder
    //   272: dup
    //   273: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   276: ldc_w 368
    //   279: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: aload_1
    //   283: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   289: invokestatic 175	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   292: pop
    //   293: aload 5
    //   295: ifnull +8 -> 303
    //   298: aload 5
    //   300: invokevirtual 371	java/net/HttpURLConnection:disconnect	()V
    //   303: return
    //   304: astore 4
    //   306: aconst_null
    //   307: astore 6
    //   309: aload 6
    //   311: ifnull +8 -> 319
    //   314: aload 6
    //   316: invokevirtual 362	java/io/OutputStreamWriter:close	()V
    //   319: aload 4
    //   321: athrow
    //   322: astore 6
    //   324: aload 5
    //   326: astore 4
    //   328: aload_2
    //   329: invokestatic 133	com/appsflyer/AppsFlyerLib:g	(Landroid/content/Context;)Z
    //   332: ifeq +47 -> 379
    //   335: aload 5
    //   337: astore 4
    //   339: ldc 95
    //   341: new 162	java/lang/StringBuilder
    //   344: dup
    //   345: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   348: ldc_w 373
    //   351: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: aload_1
    //   355: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: ldc_w 375
    //   361: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: aload 6
    //   366: invokevirtual 378	java/lang/Throwable:getLocalizedMessage	()Ljava/lang/String;
    //   369: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   375: invokestatic 175	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   378: pop
    //   379: aload 5
    //   381: ifnull -78 -> 303
    //   384: aload 5
    //   386: invokevirtual 371	java/net/HttpURLConnection:disconnect	()V
    //   389: return
    //   390: aload_2
    //   391: invokestatic 133	com/appsflyer/AppsFlyerLib:g	(Landroid/content/Context;)Z
    //   394: ifeq -101 -> 293
    //   397: ldc 95
    //   399: new 162	java/lang/StringBuilder
    //   402: dup
    //   403: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   406: ldc_w 373
    //   409: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: aload_1
    //   413: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: invokestatic 175	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   422: pop
    //   423: goto -130 -> 293
    //   426: astore_1
    //   427: aload 5
    //   429: astore 4
    //   431: aload 4
    //   433: ifnull +8 -> 441
    //   436: aload 4
    //   438: invokevirtual 371	java/net/HttpURLConnection:disconnect	()V
    //   441: aload_1
    //   442: athrow
    //   443: astore_1
    //   444: goto -13 -> 431
    //   447: astore 6
    //   449: aload 7
    //   451: astore 5
    //   453: goto -129 -> 324
    //   456: astore 4
    //   458: goto -149 -> 309
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	461	0	this	AppsFlyerLib
    //   0	461	1	paramString	String
    //   0	461	2	paramContext	Context
    //   165	14	3	i	int
    //   8	125	4	localObject1	Object
    //   304	16	4	localObject2	Object
    //   326	111	4	localObject3	Object
    //   456	1	4	localObject4	Object
    //   1	451	5	localObject5	Object
    //   26	289	6	localObject6	Object
    //   322	43	6	localThrowable1	Throwable
    //   447	1	6	localThrowable2	Throwable
    //   4	446	7	localObject7	Object
    //   81	154	8	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   218	232	304	finally
    //   151	218	322	java/lang/Throwable
    //   244	249	322	java/lang/Throwable
    //   249	293	322	java/lang/Throwable
    //   314	319	322	java/lang/Throwable
    //   319	322	322	java/lang/Throwable
    //   390	423	322	java/lang/Throwable
    //   151	218	426	finally
    //   244	249	426	finally
    //   249	293	426	finally
    //   314	319	426	finally
    //   319	322	426	finally
    //   390	423	426	finally
    //   10	28	443	finally
    //   32	39	443	finally
    //   43	70	443	finally
    //   74	83	443	finally
    //   87	99	443	finally
    //   103	109	443	finally
    //   113	119	443	finally
    //   123	130	443	finally
    //   134	151	443	finally
    //   328	335	443	finally
    //   339	379	443	finally
    //   10	28	447	java/lang/Throwable
    //   32	39	447	java/lang/Throwable
    //   43	70	447	java/lang/Throwable
    //   74	83	447	java/lang/Throwable
    //   87	99	447	java/lang/Throwable
    //   103	109	447	java/lang/Throwable
    //   113	119	447	java/lang/Throwable
    //   123	130	447	java/lang/Throwable
    //   134	151	447	java/lang/Throwable
    //   232	239	456	finally
  }
  
  protected static void a(String paramString1, String paramString2)
  {
    h.a().a(paramString1, paramString2);
  }
  
  private static void a(String paramString1, String paramString2, Context paramContext)
  {
    if ((paramContext != null) && ("com.appsflyer".equals(paramContext.getPackageName()))) {
      k.a().a(paramString1 + paramString2);
    }
  }
  
  /* Error */
  private static void a(URL paramURL, String paramString1, String paramString2, WeakReference<Context> paramWeakReference, String paramString3, String paramString4, boolean paramBoolean)
    throws IOException
  {
    // Byte code:
    //   0: aload_3
    //   1: invokevirtual 409	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   4: checkcast 115	android/content/Context
    //   7: astore 10
    //   9: aload_0
    //   10: invokevirtual 318	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   13: checkcast 320	java/net/HttpURLConnection
    //   16: astore 8
    //   18: aload 8
    //   20: ldc_w 322
    //   23: invokevirtual 325	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   26: aload_1
    //   27: invokevirtual 329	java/lang/String:getBytes	()[B
    //   30: arraylength
    //   31: istore 7
    //   33: aload 8
    //   35: ldc_w 331
    //   38: new 162	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   45: iload 7
    //   47: invokevirtual 334	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   50: ldc -79
    //   52: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokevirtual 338	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   61: aload 8
    //   63: ldc_w 340
    //   66: ldc_w 341
    //   69: invokevirtual 338	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   72: aload 8
    //   74: sipush 10000
    //   77: invokevirtual 345	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   80: aload 8
    //   82: iconst_1
    //   83: invokevirtual 349	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   86: new 351	java/io/OutputStreamWriter
    //   89: dup
    //   90: aload 8
    //   92: invokevirtual 355	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   95: invokespecial 358	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   98: astore 9
    //   100: aload 9
    //   102: aload_1
    //   103: invokevirtual 361	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   106: aload 9
    //   108: ifnull +8 -> 116
    //   111: aload 9
    //   113: invokevirtual 362	java/io/OutputStreamWriter:close	()V
    //   116: aload 8
    //   118: invokevirtual 366	java/net/HttpURLConnection:getResponseCode	()I
    //   121: istore 7
    //   123: aload 10
    //   125: invokestatic 133	com/appsflyer/AppsFlyerLib:g	(Landroid/content/Context;)Z
    //   128: ifeq +30 -> 158
    //   131: aload 5
    //   133: new 162	java/lang/StringBuilder
    //   136: dup
    //   137: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   140: ldc_w 411
    //   143: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: iload 7
    //   148: invokevirtual 334	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   151: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokestatic 175	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   157: pop
    //   158: aload 10
    //   160: aload 5
    //   162: ldc_w 413
    //   165: iload 7
    //   167: invokestatic 417	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   170: invokestatic 419	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   173: ldc_w 421
    //   176: iload 7
    //   178: invokestatic 417	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   181: aload 10
    //   183: invokestatic 423	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   186: aload 10
    //   188: ldc 113
    //   190: iconst_0
    //   191: invokevirtual 119	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   194: astore_0
    //   195: iload 7
    //   197: sipush 200
    //   200: if_icmpne +61 -> 261
    //   203: aload 4
    //   205: ifnull +13 -> 218
    //   208: invokestatic 428	com/appsflyer/a/a:a	()Lcom/appsflyer/a/a;
    //   211: aload 4
    //   213: aload 10
    //   215: invokevirtual 430	com/appsflyer/a/a:a	(Ljava/lang/String;Landroid/content/Context;)V
    //   218: aload_3
    //   219: invokevirtual 409	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   222: ifnull +39 -> 261
    //   225: aload 4
    //   227: ifnonnull +34 -> 261
    //   230: aload_0
    //   231: invokeinterface 151 1 0
    //   236: astore_1
    //   237: aload_1
    //   238: ldc_w 432
    //   241: ldc -33
    //   243: invokeinterface 157 3 0
    //   248: pop
    //   249: aload_1
    //   250: invokeinterface 160 1 0
    //   255: pop
    //   256: aload 10
    //   258: invokestatic 435	com/appsflyer/AppsFlyerLib:l	(Landroid/content/Context;)V
    //   261: aload_0
    //   262: ldc_w 437
    //   265: aconst_null
    //   266: invokeinterface 126 3 0
    //   271: ifnonnull +81 -> 352
    //   274: aload_2
    //   275: ifnull +77 -> 352
    //   278: iload 6
    //   280: ifeq +72 -> 352
    //   283: invokestatic 443	java/util/concurrent/Executors:newSingleThreadScheduledExecutor	()Ljava/util/concurrent/ScheduledExecutorService;
    //   286: astore_0
    //   287: aload_0
    //   288: new 445	com/appsflyer/e
    //   291: dup
    //   292: aload 10
    //   294: invokevirtual 449	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   297: aload_2
    //   298: aload_0
    //   299: invokespecial 452	com/appsflyer/e:<init>	(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    //   302: ldc2_w 453
    //   305: getstatic 460	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   308: invokeinterface 466 5 0
    //   313: pop
    //   314: aload 8
    //   316: ifnull +8 -> 324
    //   319: aload 8
    //   321: invokevirtual 371	java/net/HttpURLConnection:disconnect	()V
    //   324: return
    //   325: astore_0
    //   326: aconst_null
    //   327: astore_1
    //   328: aload_1
    //   329: ifnull +7 -> 336
    //   332: aload_1
    //   333: invokevirtual 362	java/io/OutputStreamWriter:close	()V
    //   336: aload_0
    //   337: athrow
    //   338: astore_0
    //   339: aload 8
    //   341: astore_1
    //   342: aload_1
    //   343: ifnull +7 -> 350
    //   346: aload_1
    //   347: invokevirtual 371	java/net/HttpURLConnection:disconnect	()V
    //   350: aload_0
    //   351: athrow
    //   352: aload_2
    //   353: ifnonnull +15 -> 368
    //   356: aload 5
    //   358: ldc_w 468
    //   361: invokestatic 470	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   364: pop
    //   365: goto -51 -> 314
    //   368: iload 6
    //   370: ifeq -56 -> 314
    //   373: getstatic 45	com/appsflyer/AppsFlyerLib:c	Lcom/appsflyer/a;
    //   376: ifnull -62 -> 314
    //   379: aload_0
    //   380: ldc_w 437
    //   383: aconst_null
    //   384: invokeinterface 126 3 0
    //   389: ifnull -75 -> 314
    //   392: aload 10
    //   394: iconst_0
    //   395: invokestatic 56	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Z)I
    //   398: istore 7
    //   400: iload 7
    //   402: iconst_1
    //   403: if_icmple -89 -> 314
    //   406: aload 10
    //   408: invokestatic 473	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;)Ljava/util/Map;
    //   411: astore_0
    //   412: aload_0
    //   413: ifnull -99 -> 314
    //   416: getstatic 45	com/appsflyer/AppsFlyerLib:c	Lcom/appsflyer/a;
    //   419: aload_0
    //   420: invokeinterface 478 2 0
    //   425: goto -111 -> 314
    //   428: astore_0
    //   429: goto -115 -> 314
    //   432: astore_0
    //   433: aconst_null
    //   434: astore_1
    //   435: goto -93 -> 342
    //   438: astore_0
    //   439: aload 9
    //   441: astore_1
    //   442: goto -114 -> 328
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	445	0	paramURL	URL
    //   0	445	1	paramString1	String
    //   0	445	2	paramString2	String
    //   0	445	3	paramWeakReference	WeakReference<Context>
    //   0	445	4	paramString3	String
    //   0	445	5	paramString4	String
    //   0	445	6	paramBoolean	boolean
    //   31	373	7	i	int
    //   16	324	8	localHttpURLConnection	java.net.HttpURLConnection
    //   98	342	9	localOutputStreamWriter	java.io.OutputStreamWriter
    //   7	400	10	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   86	100	325	finally
    //   18	86	338	finally
    //   111	116	338	finally
    //   116	158	338	finally
    //   158	195	338	finally
    //   208	218	338	finally
    //   218	225	338	finally
    //   230	261	338	finally
    //   261	274	338	finally
    //   283	314	338	finally
    //   332	336	338	finally
    //   336	338	338	finally
    //   356	365	338	finally
    //   373	400	338	finally
    //   406	412	338	finally
    //   416	425	338	finally
    //   406	412	428	com/appsflyer/i
    //   416	425	428	com/appsflyer/i
    //   9	18	432	finally
    //   100	106	438	finally
  }
  
  private static int b(Context paramContext, boolean paramBoolean)
  {
    paramContext = paramContext.getSharedPreferences("appsflyer-data", 0);
    int j = paramContext.getInt("appsFlyerCount", 0);
    int i = j;
    if (paramBoolean)
    {
      i = j + 1;
      paramContext = paramContext.edit();
      paramContext.putInt("appsFlyerCount", i);
      paramContext.commit();
    }
    return i;
  }
  
  public static Map<String, String> b(Context paramContext)
    throws i
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("appsflyer-data", 0);
    String str = h.a().a(paramContext);
    if ((str != null) && (str.length() > 0) && (str.contains("af_tranid"))) {
      return b(str, paramContext);
    }
    paramContext = localSharedPreferences.getString("attributionId", null);
    if ((paramContext != null) && (paramContext.length() > 0)) {
      return d(paramContext);
    }
    throw new i();
  }
  
  private static Map<String, String> b(String paramString, Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    int i = paramString.indexOf('&');
    int j;
    if ((i >= 0) && (paramString.length() > i + 1))
    {
      String[] arrayOfString = paramString.split("\\&");
      int k = arrayOfString.length;
      j = 0;
      i = 0;
      if (j < k)
      {
        paramString = arrayOfString[j].split("=");
        Object localObject1;
        label76:
        Object localObject2;
        if (paramString.length > 1)
        {
          localObject1 = paramString[1];
          localObject2 = paramString[0];
          if (!((String)localObject2).equals("c")) {
            break label121;
          }
          paramString = "campaign";
        }
        for (;;)
        {
          localHashMap.put(paramString, localObject1);
          j += 1;
          break;
          localObject1 = "";
          break label76;
          label121:
          if (((String)localObject2).equals("pid"))
          {
            paramString = "media_source";
          }
          else
          {
            paramString = (String)localObject2;
            if (((String)localObject2).equals("af_prt"))
            {
              localHashMap.put(localObject2, localObject1);
              paramString = "agency";
              i = 1;
            }
          }
        }
      }
    }
    for (;;)
    {
      try
      {
        if (!localHashMap.containsKey("install_time"))
        {
          long l = getPackageManagergetPackageInfogetPackageName0firstInstallTime;
          localHashMap.put("install_time", new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date(l)));
        }
        j = i;
        if (!localHashMap.containsKey("af_status"))
        {
          localHashMap.put("af_status", "Non-organic");
          j = i;
        }
        if (j != 0) {
          localHashMap.remove("media_source");
        }
        return localHashMap;
      }
      catch (Exception paramString)
      {
        Log.w("AppsFlyer_1.16", "Could not fetch install time");
        continue;
      }
      j = 0;
    }
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (h.a().b("shouldMonitor", false))
    {
      Intent localIntent = new Intent("com.appsflyer.MonitorBroadcast");
      localIntent.setPackage("com.appsflyer.nightvision");
      localIntent.putExtra("message", paramString2);
      localIntent.putExtra("value", paramString3);
      localIntent.putExtra("packageName", "true");
      localIntent.putExtra("pid", new Integer(Process.myPid()));
      localIntent.putExtra("eventIdentifier", paramString1);
      localIntent.putExtra("sdk", "2.3.1.16");
      paramContext.sendBroadcast(localIntent);
    }
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    ScheduledExecutorService localScheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
    localScheduledExecutorService.schedule(new d(paramContext, paramString1, paramString2, paramString3, paramString4, localScheduledExecutorService, null), 5L, TimeUnit.MILLISECONDS);
  }
  
  private static void b(Context paramContext, Map<String, String> paramMap)
  {
    for (;;)
    {
      try
      {
        Class.forName("com.google.android.gms.a.a.a");
        localObject = com.google.android.gms.a.a.a.b(paramContext);
        String str = ((b)localObject).a();
        paramMap.put("advertiserId", str);
        if (!((b)localObject).b())
        {
          bool = true;
          localObject = Boolean.toString(bool);
          paramMap.put("advertiserIdEnabled", localObject);
          h.a().a("advertiserId", str);
          h.a().a("advertiserIdEnabled", (String)localObject);
          return;
        }
      }
      catch (ClassNotFoundException paramMap)
      {
        boolean bool;
        if (!g(paramContext)) {
          continue;
        }
        Log.i("AppsFlyer_1.16", "WARNING:Google Play services SDK jar is missing.");
        return;
      }
      catch (Exception localException)
      {
        Object localObject = h.a().b("advertiserId");
        if (localObject == null) {
          continue;
        }
        paramMap.put("advertiserId", localObject);
        localObject = h.a().b("advertiserIdEnabled");
        if (localObject == null) {
          continue;
        }
        paramMap.put("advertiserIdEnabled", localObject);
        if (localException.getLocalizedMessage() == null) {
          break label189;
        }
      }
      bool = false;
    }
    Log.i("AppsFlyer_1.16", localException.getLocalizedMessage());
    for (;;)
    {
      a("Could not fetch advertiser id: ", localException.getLocalizedMessage(), paramContext);
      return;
      label189:
      Log.i("AppsFlyer_1.16", localException.toString());
    }
  }
  
  public static void b(String paramString)
  {
    a("AppsFlyerKey", paramString);
    o.a(paramString);
  }
  
  private static void b(String paramString1, String paramString2, String paramString3, WeakReference<Context> paramWeakReference, String paramString4, String paramString5, boolean paramBoolean)
    throws IOException
  {
    URL localURL = new URL(paramString1);
    if (g((Context)paramWeakReference.get())) {
      Log.i(paramString5, "url: " + localURL.toString());
    }
    a("call server.", "\n" + localURL.toString() + "\nPOST:" + paramString2, (Context)paramWeakReference.get());
    if (g((Context)paramWeakReference.get())) {
      o.b("data: " + paramString2);
    }
    b((Context)paramWeakReference.get(), paramString5, "EVENT_DATA", paramString2);
    if (paramBoolean) {
      h.a().d();
    }
    try
    {
      a(localURL, paramString2, paramString3, paramWeakReference, paramString4, paramString5, paramBoolean);
      return;
    }
    catch (IOException localIOException)
    {
      if (h.a().b("useHttpFallback", false))
      {
        a("https failed: " + localIOException.getLocalizedMessage(), "", (Context)paramWeakReference.get());
        a(new URL(paramString1.replace("https:", "http:")), paramString2, paramString3, paramWeakReference, paramString4, paramString5, paramBoolean);
        return;
      }
      Log.i(paramString5, "failed to send requeset to server. " + localIOException.getLocalizedMessage());
      b((Context)paramWeakReference.get(), paramString5, "ERROR", localIOException.getLocalizedMessage());
    }
  }
  
  private static String c(Context paramContext, String paramString)
    throws PackageManager.NameNotFoundException
  {
    paramContext = paramContext.getSharedPreferences("appsflyer-data", 0);
    if (paramContext.contains("CACHED_CHANNEL")) {
      return paramContext.getString("CACHED_CHANNEL", null);
    }
    paramContext = paramContext.edit();
    paramContext.putString("CACHED_CHANNEL", paramString);
    paramContext.commit();
    return paramString;
  }
  
  private static String c(Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("af_timestamp");
    if ((paramMap == null) || (paramMap.length() < 5)) {
      return "AppsFlyer_1.16";
    }
    return "AppsFlyer_1.16-" + paramMap.substring(4);
  }
  
  /* Error */
  private static void c(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnonnull +1747 -> 1748
    //   4: iconst_1
    //   5: istore 7
    //   7: new 300	java/util/HashMap
    //   10: dup
    //   11: invokespecial 301	java/util/HashMap:<init>	()V
    //   14: astore 14
    //   16: aload 14
    //   18: ldc_w 706
    //   21: new 140	java/util/Date
    //   24: dup
    //   25: invokespecial 141	java/util/Date:<init>	()V
    //   28: invokevirtual 720	java/util/Date:getTime	()J
    //   31: invokestatic 725	java/lang/Long:toString	(J)Ljava/lang/String;
    //   34: invokeinterface 229 3 0
    //   39: pop
    //   40: aload 14
    //   42: invokestatic 180	com/appsflyer/AppsFlyerLib:c	(Ljava/util/Map;)Ljava/lang/String;
    //   45: astore 13
    //   47: aload_0
    //   48: invokestatic 133	com/appsflyer/AppsFlyerLib:g	(Landroid/content/Context;)Z
    //   51: ifeq +1671 -> 1722
    //   54: ldc_w 727
    //   57: ldc -79
    //   59: aload_0
    //   60: invokestatic 423	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   63: new 162	java/lang/StringBuilder
    //   66: dup
    //   67: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   70: ldc_w 729
    //   73: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: astore 15
    //   78: iload 7
    //   80: ifeq +1674 -> 1754
    //   83: ldc_w 731
    //   86: astore 12
    //   88: aload 13
    //   90: aload 15
    //   92: aload 12
    //   94: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokestatic 175	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   103: pop
    //   104: iload 7
    //   106: ifeq +1654 -> 1760
    //   109: ldc_w 731
    //   112: astore 12
    //   114: ldc_w 733
    //   117: aload 12
    //   119: aload_0
    //   120: invokestatic 423	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   123: goto +1599 -> 1722
    //   126: aload_0
    //   127: aload 13
    //   129: ldc_w 735
    //   132: aload 12
    //   134: invokestatic 419	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   137: invokestatic 428	com/appsflyer/a/a:a	()Lcom/appsflyer/a/a;
    //   140: aload_0
    //   141: invokevirtual 737	com/appsflyer/a/a:a	(Landroid/content/Context;)V
    //   144: aload_0
    //   145: invokevirtual 547	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   148: aload_0
    //   149: invokevirtual 190	android/content/Context:getPackageName	()Ljava/lang/String;
    //   152: sipush 4096
    //   155: invokevirtual 553	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   158: getfield 741	android/content/pm/PackageInfo:requestedPermissions	[Ljava/lang/String;
    //   161: invokestatic 41	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   164: astore 12
    //   166: aload 12
    //   168: ldc_w 743
    //   171: invokeinterface 747 2 0
    //   176: ifne +21 -> 197
    //   179: ldc 95
    //   181: ldc_w 749
    //   184: invokestatic 470	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   187: pop
    //   188: aload_0
    //   189: aconst_null
    //   190: ldc_w 751
    //   193: aconst_null
    //   194: invokestatic 419	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   197: aload 12
    //   199: ldc_w 753
    //   202: invokeinterface 747 2 0
    //   207: ifne +12 -> 219
    //   210: ldc 95
    //   212: ldc_w 755
    //   215: invokestatic 470	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   218: pop
    //   219: aload 12
    //   221: ldc_w 757
    //   224: invokeinterface 747 2 0
    //   229: ifne +12 -> 241
    //   232: ldc 95
    //   234: ldc_w 759
    //   237: invokestatic 470	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   240: pop
    //   241: new 162	java/lang/StringBuilder
    //   244: dup
    //   245: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   248: astore 15
    //   250: aload 15
    //   252: ldc_w 761
    //   255: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: aload_0
    //   259: invokevirtual 190	android/content/Context:getPackageName	()Ljava/lang/String;
    //   262: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: pop
    //   266: aload 14
    //   268: ldc_w 763
    //   271: getstatic 769	android/os/Build:BRAND	Ljava/lang/String;
    //   274: invokeinterface 229 3 0
    //   279: pop
    //   280: aload 14
    //   282: ldc_w 771
    //   285: getstatic 774	android/os/Build:DEVICE	Ljava/lang/String;
    //   288: invokeinterface 229 3 0
    //   293: pop
    //   294: aload 14
    //   296: ldc_w 776
    //   299: getstatic 779	android/os/Build:PRODUCT	Ljava/lang/String;
    //   302: invokeinterface 229 3 0
    //   307: pop
    //   308: aload 14
    //   310: ldc_w 610
    //   313: getstatic 284	android/os/Build$VERSION:SDK_INT	I
    //   316: invokestatic 417	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   319: invokeinterface 229 3 0
    //   324: pop
    //   325: aload 14
    //   327: ldc_w 781
    //   330: getstatic 784	android/os/Build:MODEL	Ljava/lang/String;
    //   333: invokeinterface 229 3 0
    //   338: pop
    //   339: aload 14
    //   341: ldc_w 786
    //   344: getstatic 789	android/os/Build:TYPE	Ljava/lang/String;
    //   347: invokeinterface 229 3 0
    //   352: pop
    //   353: invokestatic 108	com/appsflyer/h:a	()Lcom/appsflyer/h;
    //   356: ldc_w 791
    //   359: invokevirtual 110	com/appsflyer/h:b	(Ljava/lang/String;)Ljava/lang/String;
    //   362: astore 12
    //   364: aload 12
    //   366: ifnull +24 -> 390
    //   369: aload 12
    //   371: invokevirtual 501	java/lang/String:length	()I
    //   374: ifle +16 -> 390
    //   377: aload 14
    //   379: ldc_w 791
    //   382: aload 12
    //   384: invokeinterface 229 3 0
    //   389: pop
    //   390: aload_0
    //   391: invokestatic 794	com/appsflyer/AppsFlyerLib:m	(Landroid/content/Context;)Ljava/lang/String;
    //   394: astore 12
    //   396: aload_0
    //   397: aload 12
    //   399: invokestatic 496	com/appsflyer/AppsFlyerLib:c	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   402: astore 16
    //   404: aload 16
    //   406: ifnull +16 -> 422
    //   409: aload 14
    //   411: ldc_w 796
    //   414: aload 16
    //   416: invokeinterface 229 3 0
    //   421: pop
    //   422: aload 16
    //   424: ifnull +1311 -> 1735
    //   427: aload 16
    //   429: aload 12
    //   431: invokevirtual 387	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   434: ifeq +6 -> 440
    //   437: goto +1298 -> 1735
    //   440: aload 14
    //   442: ldc_w 798
    //   445: aload 12
    //   447: invokeinterface 229 3 0
    //   452: pop
    //   453: aload_0
    //   454: invokestatic 800	com/appsflyer/AppsFlyerLib:i	(Landroid/content/Context;)Ljava/lang/String;
    //   457: astore 12
    //   459: aload 12
    //   461: ifnull +19 -> 480
    //   464: aload 14
    //   466: ldc_w 802
    //   469: aload 12
    //   471: invokevirtual 805	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   474: invokeinterface 229 3 0
    //   479: pop
    //   480: aload_0
    //   481: invokestatic 808	com/appsflyer/AppsFlyerLib:k	(Landroid/content/Context;)Ljava/lang/String;
    //   484: astore 12
    //   486: aload 12
    //   488: ifnull +19 -> 507
    //   491: aload 14
    //   493: ldc_w 810
    //   496: aload 12
    //   498: invokevirtual 805	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   501: invokeinterface 229 3 0
    //   506: pop
    //   507: aload_0
    //   508: invokestatic 813	com/appsflyer/AppsFlyerLib:j	(Landroid/content/Context;)Ljava/lang/String;
    //   511: astore 12
    //   513: aload 12
    //   515: ifnull +19 -> 534
    //   518: aload 14
    //   520: ldc_w 815
    //   523: aload 12
    //   525: invokevirtual 805	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   528: invokeinterface 229 3 0
    //   533: pop
    //   534: aload_1
    //   535: ifnull +13 -> 548
    //   538: aload_1
    //   539: astore 12
    //   541: aload_1
    //   542: invokevirtual 501	java/lang/String:length	()I
    //   545: ifne +11 -> 556
    //   548: ldc_w 659
    //   551: invokestatic 65	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   554: astore 12
    //   556: aload 12
    //   558: ifnull +153 -> 711
    //   561: aload 12
    //   563: invokevirtual 501	java/lang/String:length	()I
    //   566: ifle +145 -> 711
    //   569: aload 14
    //   571: ldc_w 817
    //   574: aload 12
    //   576: invokeinterface 229 3 0
    //   581: pop
    //   582: aload 12
    //   584: invokevirtual 501	java/lang/String:length	()I
    //   587: bipush 8
    //   589: if_icmple +22 -> 611
    //   592: aload 14
    //   594: ldc_w 819
    //   597: aload 12
    //   599: iconst_0
    //   600: bipush 8
    //   602: invokevirtual 822	java/lang/String:substring	(II)Ljava/lang/String;
    //   605: invokeinterface 229 3 0
    //   610: pop
    //   611: invokestatic 823	com/appsflyer/AppsFlyerLib:a	()Ljava/lang/String;
    //   614: astore_1
    //   615: aload_1
    //   616: ifnull +15 -> 631
    //   619: aload 14
    //   621: ldc_w 825
    //   624: aload_1
    //   625: invokeinterface 229 3 0
    //   630: pop
    //   631: invokestatic 108	com/appsflyer/h:a	()Lcom/appsflyer/h;
    //   634: ldc_w 827
    //   637: invokevirtual 829	com/appsflyer/h:a	(Ljava/lang/String;)[Ljava/lang/String;
    //   640: astore_1
    //   641: aload_1
    //   642: ifnull +873 -> 1515
    //   645: new 162	java/lang/StringBuilder
    //   648: dup
    //   649: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   652: astore 12
    //   654: aload_1
    //   655: arraylength
    //   656: istore 6
    //   658: iconst_0
    //   659: istore 5
    //   661: iload 5
    //   663: iload 6
    //   665: if_icmpge +75 -> 740
    //   668: aload_1
    //   669: iload 5
    //   671: aaload
    //   672: astore 16
    //   674: aload 12
    //   676: invokevirtual 830	java/lang/StringBuilder:length	()I
    //   679: iconst_1
    //   680: if_icmple +11 -> 691
    //   683: aload 12
    //   685: bipush 44
    //   687: invokevirtual 833	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   690: pop
    //   691: aload 12
    //   693: aload 16
    //   695: invokestatic 836	com/appsflyer/m:a	(Ljava/lang/String;)Ljava/lang/String;
    //   698: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   701: pop
    //   702: iload 5
    //   704: iconst_1
    //   705: iadd
    //   706: istore 5
    //   708: goto -47 -> 661
    //   711: aload 13
    //   713: ldc_w 838
    //   716: invokestatic 840	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   719: pop
    //   720: aload_0
    //   721: aload 13
    //   723: ldc_w 842
    //   726: aconst_null
    //   727: invokestatic 419	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   730: aload 13
    //   732: ldc_w 844
    //   735: invokestatic 840	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   738: pop
    //   739: return
    //   740: aload 14
    //   742: ldc_w 846
    //   745: aload 12
    //   747: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   750: invokeinterface 229 3 0
    //   755: pop
    //   756: aload_2
    //   757: ifnull +31 -> 788
    //   760: aload 14
    //   762: ldc_w 848
    //   765: aload_2
    //   766: invokeinterface 229 3 0
    //   771: pop
    //   772: aload_3
    //   773: ifnull +15 -> 788
    //   776: aload 14
    //   778: ldc_w 850
    //   781: aload_3
    //   782: invokeinterface 229 3 0
    //   787: pop
    //   788: ldc_w 852
    //   791: invokestatic 65	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   794: ifnull +20 -> 814
    //   797: aload 14
    //   799: ldc_w 852
    //   802: ldc_w 852
    //   805: invokestatic 65	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   808: invokeinterface 229 3 0
    //   813: pop
    //   814: ldc_w 854
    //   817: invokestatic 65	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   820: astore_1
    //   821: aload_1
    //   822: ifnull +55 -> 877
    //   825: aload_1
    //   826: invokevirtual 501	java/lang/String:length	()I
    //   829: iconst_3
    //   830: if_icmpeq +35 -> 865
    //   833: ldc 95
    //   835: new 162	java/lang/StringBuilder
    //   838: dup
    //   839: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   842: ldc_w 856
    //   845: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   848: aload_1
    //   849: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   852: ldc_w 858
    //   855: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   858: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   861: invokestatic 470	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   864: pop
    //   865: aload 14
    //   867: ldc_w 860
    //   870: aload_1
    //   871: invokeinterface 229 3 0
    //   876: pop
    //   877: ldc_w 862
    //   880: invokestatic 65	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   883: astore_1
    //   884: aload_1
    //   885: ifnull +15 -> 900
    //   888: aload 14
    //   890: ldc_w 864
    //   893: aload_1
    //   894: invokeinterface 229 3 0
    //   899: pop
    //   900: aload 14
    //   902: ldc_w 866
    //   905: aload_0
    //   906: invokestatic 868	com/appsflyer/AppsFlyerLib:c	(Landroid/content/Context;)Z
    //   909: invokestatic 649	java/lang/Boolean:toString	(Z)Ljava/lang/String;
    //   912: invokeinterface 229 3 0
    //   917: pop
    //   918: aload_0
    //   919: invokevirtual 271	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   922: invokestatic 870	com/appsflyer/AppsFlyerLib:a	(Landroid/content/ContentResolver;)Ljava/lang/String;
    //   925: astore_1
    //   926: aload_1
    //   927: ifnull +15 -> 942
    //   930: aload 14
    //   932: ldc_w 872
    //   935: aload_1
    //   936: invokeinterface 229 3 0
    //   941: pop
    //   942: aload_0
    //   943: aload 14
    //   945: invokestatic 307	com/appsflyer/AppsFlyerLib:a	(Landroid/content/Context;Ljava/util/Map;)V
    //   948: aload_0
    //   949: invokestatic 875	com/appsflyer/n:a	(Landroid/content/Context;)Ljava/lang/String;
    //   952: astore_1
    //   953: aload_1
    //   954: ifnull +15 -> 969
    //   957: aload 14
    //   959: ldc_w 877
    //   962: aload_1
    //   963: invokeinterface 229 3 0
    //   968: pop
    //   969: aload 14
    //   971: ldc_w 879
    //   974: invokestatic 885	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   977: invokevirtual 888	java/util/Locale:getDisplayLanguage	()Ljava/lang/String;
    //   980: invokeinterface 229 3 0
    //   985: pop
    //   986: aload_0
    //   987: ldc -21
    //   989: invokevirtual 239	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   992: checkcast 241	android/telephony/TelephonyManager
    //   995: astore_1
    //   996: aload 14
    //   998: ldc_w 890
    //   1001: aload_1
    //   1002: invokevirtual 893	android/telephony/TelephonyManager:getSimOperatorName	()Ljava/lang/String;
    //   1005: invokeinterface 229 3 0
    //   1010: pop
    //   1011: aload 14
    //   1013: ldc_w 895
    //   1016: aload_1
    //   1017: invokevirtual 898	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   1020: invokeinterface 229 3 0
    //   1025: pop
    //   1026: aload 14
    //   1028: ldc_w 900
    //   1031: aload_0
    //   1032: invokestatic 903	com/appsflyer/AppsFlyerLib:n	(Landroid/content/Context;)Ljava/lang/String;
    //   1035: invokeinterface 229 3 0
    //   1040: pop
    //   1041: aload_0
    //   1042: aload 14
    //   1044: invokestatic 305	com/appsflyer/AppsFlyerLib:b	(Landroid/content/Context;Ljava/util/Map;)V
    //   1047: new 143	java/text/SimpleDateFormat
    //   1050: dup
    //   1051: ldc_w 905
    //   1054: invokespecial 561	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   1057: astore_1
    //   1058: getstatic 284	android/os/Build$VERSION:SDK_INT	I
    //   1061: istore 5
    //   1063: iload 5
    //   1065: bipush 9
    //   1067: if_icmplt +40 -> 1107
    //   1070: aload 14
    //   1072: ldc_w 907
    //   1075: aload_1
    //   1076: new 140	java/util/Date
    //   1079: dup
    //   1080: aload_0
    //   1081: invokevirtual 547	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   1084: aload_0
    //   1085: invokevirtual 190	android/content/Context:getPackageName	()Ljava/lang/String;
    //   1088: iconst_0
    //   1089: invokevirtual 553	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   1092: getfield 558	android/content/pm/PackageInfo:firstInstallTime	J
    //   1095: invokespecial 564	java/util/Date:<init>	(J)V
    //   1098: invokevirtual 147	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1101: invokeinterface 229 3 0
    //   1106: pop
    //   1107: aload_0
    //   1108: invokevirtual 547	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   1111: aload_0
    //   1112: invokevirtual 190	android/content/Context:getPackageName	()Ljava/lang/String;
    //   1115: iconst_0
    //   1116: invokevirtual 553	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   1119: astore_2
    //   1120: aload 14
    //   1122: ldc_w 909
    //   1125: aload_2
    //   1126: getfield 912	android/content/pm/PackageInfo:versionCode	I
    //   1129: invokestatic 417	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   1132: invokeinterface 229 3 0
    //   1137: pop
    //   1138: aload 14
    //   1140: ldc_w 914
    //   1143: aload_2
    //   1144: getfield 917	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   1147: invokeinterface 229 3 0
    //   1152: pop
    //   1153: aload_2
    //   1154: getfield 558	android/content/pm/PackageInfo:firstInstallTime	J
    //   1157: lstore 8
    //   1159: aload_2
    //   1160: getfield 920	android/content/pm/PackageInfo:lastUpdateTime	J
    //   1163: lstore 10
    //   1165: aload 14
    //   1167: ldc_w 922
    //   1170: aload_1
    //   1171: new 140	java/util/Date
    //   1174: dup
    //   1175: lload 8
    //   1177: invokespecial 564	java/util/Date:<init>	(J)V
    //   1180: invokevirtual 147	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1183: invokeinterface 229 3 0
    //   1188: pop
    //   1189: aload 14
    //   1191: ldc_w 924
    //   1194: aload_1
    //   1195: new 140	java/util/Date
    //   1198: dup
    //   1199: lload 10
    //   1201: invokespecial 564	java/util/Date:<init>	(J)V
    //   1204: invokevirtual 147	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1207: invokeinterface 229 3 0
    //   1212: pop
    //   1213: aload 14
    //   1215: ldc_w 926
    //   1218: aload_1
    //   1219: aload_0
    //   1220: invokestatic 928	com/appsflyer/AppsFlyerLib:a	(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    //   1223: invokeinterface 229 3 0
    //   1228: pop
    //   1229: aload 4
    //   1231: invokevirtual 501	java/lang/String:length	()I
    //   1234: ifle +16 -> 1250
    //   1237: aload 14
    //   1239: ldc_w 930
    //   1242: aload 4
    //   1244: invokeinterface 229 3 0
    //   1249: pop
    //   1250: aload_0
    //   1251: ldc 113
    //   1253: iconst_0
    //   1254: invokevirtual 119	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   1257: astore_1
    //   1258: aload_1
    //   1259: ldc_w 437
    //   1262: aconst_null
    //   1263: invokeinterface 126 3 0
    //   1268: astore_2
    //   1269: aload_2
    //   1270: ifnull +22 -> 1292
    //   1273: aload_2
    //   1274: invokevirtual 501	java/lang/String:length	()I
    //   1277: ifle +15 -> 1292
    //   1280: aload 14
    //   1282: ldc_w 932
    //   1285: aload_2
    //   1286: invokeinterface 229 3 0
    //   1291: pop
    //   1292: iload 7
    //   1294: ifeq +368 -> 1662
    //   1297: aload_0
    //   1298: instanceof 934
    //   1301: ifeq +361 -> 1662
    //   1304: aload_0
    //   1305: checkcast 934	android/app/Activity
    //   1308: invokevirtual 938	android/app/Activity:getIntent	()Landroid/content/Intent;
    //   1311: astore_2
    //   1312: aload_2
    //   1313: invokevirtual 941	android/content/Intent:getAction	()Ljava/lang/String;
    //   1316: ldc_w 943
    //   1319: if_acmpne +158 -> 1477
    //   1322: aload_2
    //   1323: invokevirtual 947	android/content/Intent:getData	()Landroid/net/Uri;
    //   1326: astore_3
    //   1327: aload_3
    //   1328: ldc_w 949
    //   1331: invokevirtual 952	android/net/Uri:getQueryParameter	(Ljava/lang/String;)Ljava/lang/String;
    //   1334: ifnull +288 -> 1622
    //   1337: aload 14
    //   1339: ldc_w 954
    //   1342: ldc -33
    //   1344: invokeinterface 229 3 0
    //   1349: pop
    //   1350: aload_3
    //   1351: invokevirtual 957	android/net/Uri:getQuery	()Ljava/lang/String;
    //   1354: invokevirtual 958	java/lang/String:toString	()Ljava/lang/String;
    //   1357: aload_0
    //   1358: invokestatic 510	com/appsflyer/AppsFlyerLib:b	(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    //   1361: astore_2
    //   1362: aload_3
    //   1363: invokevirtual 961	android/net/Uri:getPath	()Ljava/lang/String;
    //   1366: ifnull +17 -> 1383
    //   1369: aload_2
    //   1370: ldc_w 963
    //   1373: aload_3
    //   1374: invokevirtual 961	android/net/Uri:getPath	()Ljava/lang/String;
    //   1377: invokeinterface 229 3 0
    //   1382: pop
    //   1383: aload_3
    //   1384: invokevirtual 966	android/net/Uri:getScheme	()Ljava/lang/String;
    //   1387: ifnull +17 -> 1404
    //   1390: aload_2
    //   1391: ldc_w 968
    //   1394: aload_3
    //   1395: invokevirtual 966	android/net/Uri:getScheme	()Ljava/lang/String;
    //   1398: invokeinterface 229 3 0
    //   1403: pop
    //   1404: new 970	org/json/JSONObject
    //   1407: dup
    //   1408: aload_2
    //   1409: invokespecial 972	org/json/JSONObject:<init>	(Ljava/util/Map;)V
    //   1412: invokevirtual 973	org/json/JSONObject:toString	()Ljava/lang/String;
    //   1415: astore_3
    //   1416: aload 14
    //   1418: ldc_w 975
    //   1421: aload_3
    //   1422: invokeinterface 229 3 0
    //   1427: pop
    //   1428: aload_1
    //   1429: invokeinterface 151 1 0
    //   1434: astore_1
    //   1435: aload_1
    //   1436: ldc_w 977
    //   1439: aload_3
    //   1440: invokeinterface 157 3 0
    //   1445: pop
    //   1446: aload_1
    //   1447: invokeinterface 160 1 0
    //   1452: pop
    //   1453: getstatic 45	com/appsflyer/AppsFlyerLib:c	Lcom/appsflyer/a;
    //   1456: ifnull +12 -> 1468
    //   1459: getstatic 45	com/appsflyer/AppsFlyerLib:c	Lcom/appsflyer/a;
    //   1462: aload_2
    //   1463: invokeinterface 979 2 0
    //   1468: getstatic 985	java/lang/System:out	Ljava/io/PrintStream;
    //   1471: ldc_w 987
    //   1474: invokevirtual 992	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   1477: new 994	com/appsflyer/g
    //   1480: dup
    //   1481: aload 15
    //   1483: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1486: aload 14
    //   1488: aload_0
    //   1489: invokevirtual 449	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   1492: iload 7
    //   1494: aconst_null
    //   1495: invokespecial 997	com/appsflyer/g:<init>	(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V
    //   1498: invokevirtual 1000	com/appsflyer/g:run	()V
    //   1501: return
    //   1502: astore_0
    //   1503: aload 13
    //   1505: aload_0
    //   1506: invokevirtual 378	java/lang/Throwable:getLocalizedMessage	()Ljava/lang/String;
    //   1509: aload_0
    //   1510: invokestatic 1002	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1513: pop
    //   1514: return
    //   1515: ldc_w 1004
    //   1518: invokestatic 65	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1521: astore_1
    //   1522: aload_1
    //   1523: ifnull -767 -> 756
    //   1526: aload 14
    //   1528: ldc_w 1006
    //   1531: aload_1
    //   1532: invokestatic 836	com/appsflyer/m:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1535: invokeinterface 229 3 0
    //   1540: pop
    //   1541: goto -785 -> 756
    //   1544: astore_1
    //   1545: ldc 95
    //   1547: new 162	java/lang/StringBuilder
    //   1550: dup
    //   1551: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   1554: ldc_w 1008
    //   1557: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1560: ldc_w 1008
    //   1563: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1566: ldc_w 1010
    //   1569: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1572: aload_1
    //   1573: invokevirtual 1013	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1576: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1579: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1582: invokestatic 175	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   1585: pop
    //   1586: goto -617 -> 969
    //   1589: astore_1
    //   1590: ldc 95
    //   1592: new 162	java/lang/StringBuilder
    //   1595: dup
    //   1596: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   1599: ldc_w 1015
    //   1602: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1605: aload_1
    //   1606: invokevirtual 1016	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   1609: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1612: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1615: invokestatic 175	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   1618: pop
    //   1619: goto -578 -> 1041
    //   1622: invokestatic 443	java/util/concurrent/Executors:newSingleThreadScheduledExecutor	()Ljava/util/concurrent/ScheduledExecutorService;
    //   1625: astore_1
    //   1626: ldc_w 659
    //   1629: invokestatic 65	com/appsflyer/AppsFlyerLib:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1632: astore_2
    //   1633: aload_1
    //   1634: new 1018	com/appsflyer/f
    //   1637: dup
    //   1638: aload_0
    //   1639: invokevirtual 449	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   1642: aload_2
    //   1643: aload_1
    //   1644: invokespecial 1019	com/appsflyer/f:<init>	(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    //   1647: ldc2_w 1020
    //   1650: getstatic 460	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   1653: invokeinterface 466 5 0
    //   1658: pop
    //   1659: goto -191 -> 1468
    //   1662: iload 7
    //   1664: ifne -187 -> 1477
    //   1667: aload_1
    //   1668: ldc_w 977
    //   1671: aconst_null
    //   1672: invokeinterface 126 3 0
    //   1677: astore_1
    //   1678: aload_1
    //   1679: ifnull -202 -> 1477
    //   1682: aload 14
    //   1684: ldc_w 975
    //   1687: aload_1
    //   1688: invokeinterface 229 3 0
    //   1693: pop
    //   1694: goto -217 -> 1477
    //   1697: astore_1
    //   1698: goto -469 -> 1229
    //   1701: astore_1
    //   1702: goto -473 -> 1229
    //   1705: astore_2
    //   1706: goto -599 -> 1107
    //   1709: astore_1
    //   1710: goto -684 -> 1026
    //   1713: astore_1
    //   1714: goto -728 -> 986
    //   1717: astore 12
    //   1719: goto -1478 -> 241
    //   1722: iload 7
    //   1724: ifeq +42 -> 1766
    //   1727: ldc_w 731
    //   1730: astore 12
    //   1732: goto -1606 -> 126
    //   1735: aload 16
    //   1737: ifnonnull -1284 -> 453
    //   1740: aload 12
    //   1742: ifnull -1289 -> 453
    //   1745: goto -1305 -> 440
    //   1748: iconst_0
    //   1749: istore 7
    //   1751: goto -1744 -> 7
    //   1754: aload_2
    //   1755: astore 12
    //   1757: goto -1669 -> 88
    //   1760: aload_2
    //   1761: astore 12
    //   1763: goto -1649 -> 114
    //   1766: aload_2
    //   1767: astore 12
    //   1769: goto -1643 -> 126
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1772	0	paramContext	Context
    //   0	1772	1	paramString1	String
    //   0	1772	2	paramString2	String
    //   0	1772	3	paramString3	String
    //   0	1772	4	paramString4	String
    //   659	409	5	i	int
    //   656	10	6	j	int
    //   5	1745	7	bool	boolean
    //   1157	19	8	l1	long
    //   1163	37	10	l2	long
    //   86	660	12	localObject	Object
    //   1717	1	12	localException	Exception
    //   1730	38	12	str1	String
    //   45	1459	13	str2	String
    //   14	1669	14	localHashMap	HashMap
    //   76	1406	15	localStringBuilder	StringBuilder
    //   402	1334	16	str3	String
    // Exception table:
    //   from	to	target	type
    //   47	78	1502	java/lang/Throwable
    //   88	104	1502	java/lang/Throwable
    //   114	123	1502	java/lang/Throwable
    //   126	144	1502	java/lang/Throwable
    //   144	197	1502	java/lang/Throwable
    //   197	219	1502	java/lang/Throwable
    //   219	241	1502	java/lang/Throwable
    //   241	364	1502	java/lang/Throwable
    //   369	390	1502	java/lang/Throwable
    //   390	404	1502	java/lang/Throwable
    //   409	422	1502	java/lang/Throwable
    //   427	437	1502	java/lang/Throwable
    //   440	453	1502	java/lang/Throwable
    //   453	459	1502	java/lang/Throwable
    //   464	480	1502	java/lang/Throwable
    //   480	486	1502	java/lang/Throwable
    //   491	507	1502	java/lang/Throwable
    //   507	513	1502	java/lang/Throwable
    //   518	534	1502	java/lang/Throwable
    //   541	548	1502	java/lang/Throwable
    //   548	556	1502	java/lang/Throwable
    //   561	611	1502	java/lang/Throwable
    //   611	615	1502	java/lang/Throwable
    //   619	631	1502	java/lang/Throwable
    //   631	641	1502	java/lang/Throwable
    //   645	658	1502	java/lang/Throwable
    //   674	691	1502	java/lang/Throwable
    //   691	702	1502	java/lang/Throwable
    //   711	739	1502	java/lang/Throwable
    //   740	756	1502	java/lang/Throwable
    //   760	772	1502	java/lang/Throwable
    //   776	788	1502	java/lang/Throwable
    //   788	814	1502	java/lang/Throwable
    //   814	821	1502	java/lang/Throwable
    //   825	865	1502	java/lang/Throwable
    //   865	877	1502	java/lang/Throwable
    //   877	884	1502	java/lang/Throwable
    //   888	900	1502	java/lang/Throwable
    //   900	926	1502	java/lang/Throwable
    //   930	942	1502	java/lang/Throwable
    //   942	948	1502	java/lang/Throwable
    //   948	953	1502	java/lang/Throwable
    //   957	969	1502	java/lang/Throwable
    //   969	986	1502	java/lang/Throwable
    //   986	1026	1502	java/lang/Throwable
    //   1041	1063	1502	java/lang/Throwable
    //   1070	1107	1502	java/lang/Throwable
    //   1107	1229	1502	java/lang/Throwable
    //   1229	1250	1502	java/lang/Throwable
    //   1250	1269	1502	java/lang/Throwable
    //   1273	1292	1502	java/lang/Throwable
    //   1297	1383	1502	java/lang/Throwable
    //   1383	1404	1502	java/lang/Throwable
    //   1404	1468	1502	java/lang/Throwable
    //   1468	1477	1502	java/lang/Throwable
    //   1477	1501	1502	java/lang/Throwable
    //   1515	1522	1502	java/lang/Throwable
    //   1526	1541	1502	java/lang/Throwable
    //   1545	1586	1502	java/lang/Throwable
    //   1590	1619	1502	java/lang/Throwable
    //   1622	1659	1502	java/lang/Throwable
    //   1667	1678	1502	java/lang/Throwable
    //   1682	1694	1502	java/lang/Throwable
    //   948	953	1544	java/lang/Exception
    //   957	969	1544	java/lang/Exception
    //   1026	1041	1589	java/lang/Throwable
    //   1107	1229	1697	java/lang/NoSuchFieldError
    //   1107	1229	1701	android/content/pm/PackageManager$NameNotFoundException
    //   1070	1107	1705	java/lang/Exception
    //   986	1026	1709	java/lang/Exception
    //   969	986	1713	java/lang/Exception
    //   144	197	1717	java/lang/Exception
    //   197	219	1717	java/lang/Exception
    //   219	241	1717	java/lang/Exception
  }
  
  public static boolean c(Context paramContext)
  {
    boolean bool = false;
    try
    {
      int i = getPackageManagergetApplicationInfogetPackageName0flags;
      if ((i & 0x1) != 0) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.e("AppsFlyer_1.16", "Could not check if app is pre installed", paramContext);
    }
    return false;
  }
  
  public static String d(Context paramContext)
  {
    return n.a(paramContext);
  }
  
  private static String d(Map<String, String> paramMap)
    throws UnsupportedEncodingException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      String str1 = (String)paramMap.get(str2);
      if (str1 == null) {}
      for (str1 = "";; str1 = URLEncoder.encode(str1, "UTF-8"))
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append('&');
        }
        localStringBuilder.append(str2).append('=').append(str1);
        break;
      }
    }
    return localStringBuilder.toString();
  }
  
  private static Map<String, String> d(String paramString)
  {
    localHashMap = new HashMap();
    try
    {
      paramString = new JSONObject(paramString);
      Iterator localIterator = paramString.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (!b.contains(str)) {
          localHashMap.put(str, paramString.getString(str));
        }
      }
      return localHashMap;
    }
    catch (JSONException paramString)
    {
      Log.w("AppsFlyer_1.16", paramString);
      return null;
    }
  }
  
  private static boolean g(Context paramContext)
  {
    return !h.a().e();
  }
  
  private static boolean h(Context paramContext)
  {
    boolean bool = false;
    if (!paramContext.getSharedPreferences("appsflyer-data", 0).contains("appsFlyerCount")) {
      bool = true;
    }
    return bool;
  }
  
  private static String i(Context paramContext)
  {
    String str = null;
    Object localObject = paramContext.getSharedPreferences("appsflyer-data", 0);
    if (((SharedPreferences)localObject).contains("INSTALL_STORE")) {
      return ((SharedPreferences)localObject).getString("INSTALL_STORE", null);
    }
    boolean bool = h(paramContext);
    localObject = ((SharedPreferences)localObject).edit();
    if (bool) {
      str = j(paramContext);
    }
    ((SharedPreferences.Editor)localObject).putString("INSTALL_STORE", str);
    ((SharedPreferences.Editor)localObject).commit();
    return str;
  }
  
  private static String j(Context paramContext)
  {
    try
    {
      Object localObject = getPackageManagergetApplicationInfogetPackageName128metaData;
      if (localObject != null)
      {
        localObject = ((Bundle)localObject).get("AF_STORE");
        if (localObject != null)
        {
          if ((localObject instanceof String)) {
            return (String)localObject;
          }
          localObject = localObject.toString();
          return (String)localObject;
        }
      }
    }
    catch (Exception localException)
    {
      if (g(paramContext)) {
        Log.i("AppsFlyer_1.16", "Could not find AF_STORE value in the manifest", localException);
      }
    }
    return null;
  }
  
  private static String k(Context paramContext)
  {
    localObject2 = null;
    localObject1 = paramContext.getSharedPreferences("appsflyer-data", 0);
    if (((SharedPreferences)localObject1).contains("preInstallName")) {
      return ((SharedPreferences)localObject1).getString("preInstallName", null);
    }
    boolean bool = h(paramContext);
    SharedPreferences.Editor localEditor = ((SharedPreferences)localObject1).edit();
    localObject1 = localObject2;
    if (bool) {}
    for (;;)
    {
      try
      {
        localObject1 = getPackageManagergetApplicationInfogetPackageName128metaData;
        if (localObject1 == null) {
          continue;
        }
        localObject1 = ((Bundle)localObject1).get("AF_PRE_INSTALL_NAME");
        if (localObject1 == null) {
          continue;
        }
        if (!(localObject1 instanceof String)) {
          continue;
        }
        localObject1 = (String)localObject1;
        paramContext = (Context)localObject1;
      }
      catch (Exception localException)
      {
        localObject1 = localObject2;
        if (!g(paramContext)) {
          continue;
        }
        Log.i("AppsFlyer_1.16", "Could not find AF_PRE_INSTALL_NAME value in the manifest", localException);
        localObject1 = localObject2;
        continue;
        paramContext = null;
        continue;
      }
      localObject1 = paramContext;
      localEditor.putString("preInstallName", (String)localObject1);
      localEditor.commit();
      return (String)localObject1;
      localObject1 = localObject1.toString();
      paramContext = (Context)localObject1;
    }
  }
  
  private static void l(Context paramContext)
  {
    if ((d) || (System.currentTimeMillis() - e < 15000L)) {}
    while (f != null) {
      return;
    }
    f = Executors.newSingleThreadScheduledExecutor();
    f.schedule(new c(paramContext), 1L, TimeUnit.SECONDS);
  }
  
  private static String m(Context paramContext)
  {
    String str = h.a().b("channel");
    Object localObject = str;
    if (str == null)
    {
      try
      {
        paramContext = getPackageManagergetApplicationInfogetPackageName128metaData;
        if (paramContext != null)
        {
          paramContext = paramContext.get("CHANNEL");
          if (paramContext != null) {
            if ((paramContext instanceof String)) {
              paramContext = (String)paramContext;
            } else {
              paramContext = paramContext.toString();
            }
          }
        }
      }
      catch (Exception paramContext)
      {
        Log.i("AppsFlyer_1.16", "Could not load CHANNEL value", paramContext);
        return str;
      }
      paramContext = str;
      localObject = paramContext;
    }
    return (String)localObject;
  }
  
  private static String n(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext.getNetworkInfo(1).isConnectedOrConnecting()) {
      return "WIFI";
    }
    paramContext = paramContext.getNetworkInfo(0);
    if ((paramContext != null) && (paramContext.isConnectedOrConnecting())) {
      return "MOBILE";
    }
    return "unkown";
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.PACKAGE_REMOVED".equals(paramIntent.getAction())) {
      a(paramIntent.getDataString(), paramContext);
    }
    do
    {
      do
      {
        return;
        localObject = paramIntent.getStringExtra("shouldMonitor");
        if (localObject != null)
        {
          Log.i("AppsFlyer_1.16", "Turning on monitoring.");
          h.a().a("shouldMonitor", ((String)localObject).equals("true"));
          b(paramContext, null, "START_TRACKING", paramContext.getPackageName());
          return;
        }
        Log.i("AppsFlyer_1.16", "****** onReceive called *******");
        a("******* onReceive: ", "", paramContext);
        h.a().b();
        paramIntent = paramIntent.getStringExtra("referrer");
        if (g(paramContext)) {
          Log.i("AppsFlyer_1.16", "Play store referrer: " + paramIntent);
        }
      } while (paramIntent == null);
      a("BroadcastReceiver got referrer: ", paramIntent, paramContext);
      a("onRecieve called. refferer=", paramIntent, paramContext);
      Object localObject = paramContext.getSharedPreferences("appsflyer-data", 0).edit();
      ((SharedPreferences.Editor)localObject).putString("referrer", paramIntent);
      ((SharedPreferences.Editor)localObject).commit();
      h.a().c(paramIntent);
    } while (!h.a().c());
    Log.i("AppsFlyer_1.16", "onReceive: isLaunchCalled");
    b(paramContext, null, null, null, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerLib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */