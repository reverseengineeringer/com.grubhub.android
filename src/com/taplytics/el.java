package com.taplytics;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class el
{
  private final Context a;
  private final String b;
  private final String c;
  private final String d;
  private final Integer e;
  private final DisplayMetrics f;
  private HashMap<String, String> g;
  
  /* Error */
  public el(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: invokespecial 24	java/lang/Object:<init>	()V
    //   7: aload_0
    //   8: aconst_null
    //   9: putfield 26	com/taplytics/el:g	Ljava/util/HashMap;
    //   12: aload_0
    //   13: aload_1
    //   14: putfield 28	com/taplytics/el:a	Landroid/content/Context;
    //   17: aload_1
    //   18: invokevirtual 34	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   21: astore_3
    //   22: aload_3
    //   23: aload_1
    //   24: invokevirtual 38	android/content/Context:getPackageName	()Ljava/lang/String;
    //   27: iconst_0
    //   28: invokevirtual 44	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   31: astore 7
    //   33: aload_3
    //   34: aload_1
    //   35: invokevirtual 48	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   38: getfield 53	android/content/pm/ApplicationInfo:processName	Ljava/lang/String;
    //   41: iconst_0
    //   42: invokevirtual 56	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   45: astore 4
    //   47: aload 4
    //   49: ifnull +228 -> 277
    //   52: aload_3
    //   53: aload 4
    //   55: invokevirtual 60	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   58: checkcast 62	java/lang/String
    //   61: astore_3
    //   62: aload 4
    //   64: getfield 53	android/content/pm/ApplicationInfo:processName	Ljava/lang/String;
    //   67: astore 4
    //   69: aload 7
    //   71: ifnull +200 -> 271
    //   74: aload 7
    //   76: getfield 67	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   79: astore 5
    //   81: aload 7
    //   83: getfield 71	android/content/pm/PackageInfo:versionCode	I
    //   86: istore_2
    //   87: iload_2
    //   88: invokestatic 77	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   91: astore 7
    //   93: aload 5
    //   95: astore 6
    //   97: aload 7
    //   99: astore 5
    //   101: aload 4
    //   103: astore 7
    //   105: aload_3
    //   106: astore 4
    //   108: aload 7
    //   110: astore_3
    //   111: aload_0
    //   112: invokevirtual 79	com/taplytics/el:b	()V
    //   115: aload_0
    //   116: aload 4
    //   118: putfield 81	com/taplytics/el:b	Ljava/lang/String;
    //   121: aload_0
    //   122: aload 6
    //   124: putfield 83	com/taplytics/el:d	Ljava/lang/String;
    //   127: aload_0
    //   128: aload 5
    //   130: putfield 85	com/taplytics/el:e	Ljava/lang/Integer;
    //   133: aload_0
    //   134: aload_3
    //   135: putfield 87	com/taplytics/el:c	Ljava/lang/String;
    //   138: aload_0
    //   139: new 89	android/util/DisplayMetrics
    //   142: dup
    //   143: invokespecial 90	android/util/DisplayMetrics:<init>	()V
    //   146: putfield 92	com/taplytics/el:f	Landroid/util/DisplayMetrics;
    //   149: aload_1
    //   150: ldc 94
    //   152: invokevirtual 98	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   155: checkcast 100	android/view/WindowManager
    //   158: invokeinterface 104 1 0
    //   163: aload_0
    //   164: getfield 92	com/taplytics/el:f	Landroid/util/DisplayMetrics;
    //   167: invokevirtual 110	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   170: return
    //   171: astore 6
    //   173: aconst_null
    //   174: astore_3
    //   175: aconst_null
    //   176: astore 4
    //   178: aconst_null
    //   179: astore 5
    //   181: new 112	java/lang/StringBuilder
    //   184: dup
    //   185: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   188: ldc 115
    //   190: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: aload 6
    //   195: invokevirtual 122	android/content/pm/PackageManager$NameNotFoundException:toString	()Ljava/lang/String;
    //   198: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokestatic 128	com/taplytics/ck:b	(Ljava/lang/String;)V
    //   207: aload 5
    //   209: astore 6
    //   211: aconst_null
    //   212: astore 5
    //   214: goto -103 -> 111
    //   217: astore 6
    //   219: aload_3
    //   220: astore 4
    //   222: aconst_null
    //   223: astore_3
    //   224: aconst_null
    //   225: astore 5
    //   227: goto -46 -> 181
    //   230: astore 7
    //   232: aload_3
    //   233: astore 6
    //   235: aconst_null
    //   236: astore 5
    //   238: aload 4
    //   240: astore_3
    //   241: aload 6
    //   243: astore 4
    //   245: aload 7
    //   247: astore 6
    //   249: goto -68 -> 181
    //   252: astore 7
    //   254: aload_3
    //   255: astore 6
    //   257: aload 4
    //   259: astore_3
    //   260: aload 6
    //   262: astore 4
    //   264: aload 7
    //   266: astore 6
    //   268: goto -87 -> 181
    //   271: aconst_null
    //   272: astore 5
    //   274: goto -173 -> 101
    //   277: aconst_null
    //   278: astore 4
    //   280: aconst_null
    //   281: astore_3
    //   282: goto -213 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	285	0	this	el
    //   0	285	1	paramContext	Context
    //   86	2	2	i	int
    //   21	261	3	localObject1	Object
    //   45	234	4	localObject2	Object
    //   79	194	5	localObject3	Object
    //   1	122	6	localObject4	Object
    //   171	23	6	localNameNotFoundException1	android.content.pm.PackageManager.NameNotFoundException
    //   209	1	6	localObject5	Object
    //   217	1	6	localNameNotFoundException2	android.content.pm.PackageManager.NameNotFoundException
    //   233	34	6	localObject6	Object
    //   31	78	7	localObject7	Object
    //   230	16	7	localNameNotFoundException3	android.content.pm.PackageManager.NameNotFoundException
    //   252	13	7	localNameNotFoundException4	android.content.pm.PackageManager.NameNotFoundException
    // Exception table:
    //   from	to	target	type
    //   22	47	171	android/content/pm/PackageManager$NameNotFoundException
    //   52	62	171	android/content/pm/PackageManager$NameNotFoundException
    //   62	69	217	android/content/pm/PackageManager$NameNotFoundException
    //   74	81	230	android/content/pm/PackageManager$NameNotFoundException
    //   81	87	252	android/content/pm/PackageManager$NameNotFoundException
  }
  
  public Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    fy localfy = fy.e();
    Object localObject1;
    if (localfy.g()) {
      localObject1 = "1";
    }
    for (;;)
    {
      localHashMap.put("lv", localObject1);
      if (localfy.A()) {
        localHashMap.put("dev", "1");
      }
      if (localfy.f() != null) {
        localHashMap.put("t", fy.e().f());
      }
      if (b != null) {
        localHashMap.put("an", b);
      }
      if (d != null) {
        localHashMap.put("av", d);
      }
      if (e != null) {
        localHashMap.put("ab", e);
      }
      if (c != null) {
        localHashMap.put("ai", c);
      }
      localHashMap.put("sdk", fy.a.a());
      localHashMap.put("os", "Android");
      label188:
      label207:
      label226:
      label245:
      Object localObject2;
      en localen;
      if (Build.VERSION.RELEASE != null)
      {
        localObject1 = Build.VERSION.RELEASE;
        localHashMap.put("osv", localObject1);
        if (Build.MANUFACTURER != null) {
          break label687;
        }
        localObject1 = "UNKNOWN";
        localHashMap.put("ma", localObject1);
        if (Build.BRAND != null) {
          break label694;
        }
        localObject1 = "UNKNOWN";
        localHashMap.put("br", localObject1);
        if (Build.MODEL != null) {
          break label701;
        }
        localObject1 = "UNKNOWN";
        localHashMap.put("d", localObject1);
        localHashMap.put("alg", Locale.getDefault().getLanguage());
        localHashMap.put("alg3", Locale.getDefault().getISO3Language());
        localHashMap.put("con", Locale.getDefault().getCountry());
        localHashMap.put("con3", Locale.getDefault().getISO3Country());
        localHashMap.put("sdpi", Integer.valueOf(f.densityDpi));
        localHashMap.put("sh", Integer.valueOf(f.heightPixels));
        localHashMap.put("sw", Integer.valueOf(f.widthPixels));
        localHashMap.put("tz", TimeZone.getDefault().getDisplayName(false, 0));
        localHashMap.put("tzs", Integer.valueOf(TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000));
        localHashMap.put("tzn", TimeZone.getDefault().getID());
        localObject1 = g();
        if (localObject1 != null) {
          localHashMap.put("ca", localObject1);
        }
        localObject1 = f();
        if (localObject1 != null) {
          localHashMap.put("rd", localObject1);
        }
        localObject1 = d();
        if (localObject1 != null)
        {
          localHashMap.put("ad", ((Map)localObject1).get("id"));
          localHashMap.put("adt", ((Map)localObject1).get("type"));
        }
        localHashMap.put("n", h());
        localObject2 = localfy.k();
        if (localObject2 != null)
        {
          localen = ((eo)localObject2).c();
          localObject1 = ((eo)localObject2).j();
          localObject2 = ((eo)localObject2).b();
          if ((localen == null) || (!localen.has("_id"))) {}
        }
      }
      try
      {
        localHashMap.put("pid", localen.getString("_id"));
        if ((localObject1 == null) || (!((JSONObject)localObject1).has("_id"))) {}
      }
      catch (JSONException localJSONException2)
      {
        try
        {
          localHashMap.put("au", ((JSONObject)localObject1).getString("_id"));
          if (localObject2 != null) {
            localHashMap.put("sid", localObject2);
          }
          localObject1 = localfy.B();
          if (!iz.c((String)localObject1)) {
            localHashMap.put("dt", localObject1);
          }
          return localHashMap;
          localObject1 = "0";
          continue;
          localObject1 = "unknown";
          break label188;
          label687:
          localObject1 = Build.MANUFACTURER;
          break label207;
          label694:
          localObject1 = Build.BRAND;
          break label226;
          label701:
          localObject1 = Build.MODEL;
          break label245;
          localJSONException2 = localJSONException2;
          ck.b("Getting project_id", localJSONException2);
        }
        catch (JSONException localJSONException1)
        {
          for (;;)
          {
            ck.b("Getting appUser_id", localJSONException1);
          }
        }
      }
    }
  }
  
  public void a(StringBuilder paramStringBuilder)
  {
    iz.a(a(), paramStringBuilder);
  }
  
  public void b()
  {
    if ((g == null) && (fy.e().p() != null))
    {
      localObject = iz.a();
      if (localObject == null) {
        g = c();
      }
    }
    else
    {
      return;
    }
    String str = ((SharedPreferences)localObject).getString("ID", null);
    Object localObject = ((SharedPreferences)localObject).getString("TYPE", null);
    HashMap localHashMap = new HashMap();
    if ((str == null) || (localObject == null))
    {
      g = c();
      return;
    }
    localHashMap.put("id", str);
    localHashMap.put("type", localObject);
    g = localHashMap;
  }
  
  public HashMap<String, String> c()
  {
    Object localObject5 = null;
    if (g != null) {
      return g;
    }
    HashMap localHashMap = new HashMap();
    for (;;)
    {
      try
      {
        if (!iz.a(a, "android.permission.READ_PHONE_STATE")) {
          break label265;
        }
        str = ((TelephonyManager)a.getSystemService("phone")).getDeviceId();
        localObject4 = "UUID";
        Object localObject1 = localObject4;
        localObject3 = str;
        if (str == null)
        {
          localObject1 = localObject4;
          localObject3 = str;
          if (Build.VERSION.SDK_INT >= 9)
          {
            str = e();
            localObject4 = "anBuildSerial";
            localObject1 = localObject4;
            localObject3 = str;
            if (str.equalsIgnoreCase("unknown"))
            {
              localObject1 = localObject5;
              localObject3 = localObject4;
              localObject4 = localObject3;
              localObject3 = localObject1;
              if (localObject1 == null)
              {
                localObject3 = Settings.Secure.getString(a.getContentResolver(), "android_id");
                localObject4 = "anAndroidID";
              }
              if (localObject3 != null)
              {
                localHashMap.put("id", localObject3);
                localHashMap.put("type", localObject4);
                g = localHashMap;
                localObject1 = iz.a();
                if (localObject1 == null) {
                  break;
                }
                ((SharedPreferences)localObject1).edit().putString("ID", (String)localObject3).putString("TYPE", (String)localObject4).apply();
                break;
              }
              localHashMap.put("id", UUID.randomUUID().toString());
              localHashMap.put("type", "UUID");
              g = localHashMap;
              continue;
            }
          }
        }
        localObject4 = localObject3;
      }
      catch (Exception localException)
      {
        ck.a("Problem getting unique ID", localException);
        return localHashMap;
      }
      Object localObject3 = localException;
      Object localObject2 = localObject4;
      continue;
      label265:
      Object localObject4 = null;
      String str = null;
    }
    return localHashMap;
  }
  
  public Map<String, String> d()
  {
    if (g != null) {
      return g;
    }
    return c();
  }
  
  @TargetApi(9)
  public String e()
  {
    return Build.SERIAL;
  }
  
  public String f()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)a.getSystemService("phone");
    if (localTelephonyManager != null)
    {
      switch (localTelephonyManager.getPhoneType())
      {
      default: 
        return null;
      case 0: 
        return "none";
      case 1: 
        return "gsm";
      case 2: 
        return "cdma";
      }
      return "sip";
    }
    return null;
  }
  
  public String g()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)a.getSystemService("phone");
    if (localTelephonyManager != null) {
      return localTelephonyManager.getNetworkOperatorName();
    }
    return null;
  }
  
  public String h()
  {
    if (iz.a(a, "android.permission.ACCESS_NETWORK_STATE"))
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)a.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnectedOrConnecting()))
      {
        if (localNetworkInfo.getType() == 1) {
          return "WIFI";
        }
        if (localNetworkInfo.getType() == 0) {
          return "WWAN";
        }
      }
    }
    else
    {
      ck.c("Error No ACCESS_NETWORK_STATE permissions to get Network type");
    }
    return "UNKNOWN";
  }
}

/* Location:
 * Qualified Name:     com.taplytics.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */