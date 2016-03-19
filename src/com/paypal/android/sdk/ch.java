package com.paypal.android.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.a.a.a;
import com.google.android.gms.a.a.b;
import com.google.android.gms.common.e;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

public final class ch
{
  private static final boolean a = Boolean.valueOf(System.getProperty("dyson.debug.mode", Boolean.FALSE.toString())).booleanValue();
  private static final boolean b = Boolean.valueOf(System.getProperty("prd.debug.mode", Boolean.FALSE.toString())).booleanValue();
  private static final String c = bf.class.getSimpleName() + "." + ch.class.getSimpleName();
  private static final Uri d;
  
  static
  {
    try
    {
      Uri localUri = Uri.parse("content://com.google.android.gsf.gservices");
      d = localUri;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject = null;
      }
    }
  }
  
  /* Error */
  public static android.location.Location a(android.location.LocationManager paramLocationManager)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: iconst_1
    //   4: invokevirtual 89	android/location/LocationManager:getProviders	(Z)Ljava/util/List;
    //   7: astore 4
    //   9: aload 4
    //   11: invokeinterface 95 1 0
    //   16: istore_1
    //   17: iload_1
    //   18: iconst_1
    //   19: isub
    //   20: istore_1
    //   21: iload_1
    //   22: iflt +42 -> 64
    //   25: aload_0
    //   26: aload 4
    //   28: iload_1
    //   29: invokeinterface 99 2 0
    //   34: checkcast 101	java/lang/String
    //   37: invokevirtual 105	android/location/LocationManager:getLastKnownLocation	(Ljava/lang/String;)Landroid/location/Location;
    //   40: astore_3
    //   41: aload_3
    //   42: astore_2
    //   43: aload_2
    //   44: astore_3
    //   45: aload_2
    //   46: ifnonnull +13 -> 59
    //   49: iload_1
    //   50: iconst_1
    //   51: isub
    //   52: istore_1
    //   53: goto -32 -> 21
    //   56: astore_0
    //   57: aconst_null
    //   58: astore_3
    //   59: aload_3
    //   60: areturn
    //   61: astore_0
    //   62: aload_2
    //   63: areturn
    //   64: aload_2
    //   65: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	paramLocationManager	android.location.LocationManager
    //   16	37	1	i	int
    //   1	64	2	localObject1	Object
    //   40	20	3	localObject2	Object
    //   7	20	4	localList	List
    // Exception table:
    //   from	to	target	type
    //   2	17	56	java/lang/RuntimeException
    //   25	41	61	java/lang/RuntimeException
  }
  
  public static y a(Context paramContext)
  {
    y localy = new y();
    localy.a(paramContext.getPackageName());
    try
    {
      localy.b(getPackageManagergetPackageInfoa0versionName);
      return localy;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return localy;
  }
  
  public static Object a(Object paramObject, Class paramClass)
  {
    if ((paramObject != null) && (paramClass.isAssignableFrom(paramObject.getClass()))) {
      return paramClass.cast(paramObject);
    }
    return null;
  }
  
  public static String a()
  {
    String str1 = "";
    Object localObject = str1;
    try
    {
      aa localaa = new aa();
      localObject = str1;
      localaa.a(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/com.ebay.lid/");
      localObject = str1;
      str1 = localaa.b("fb.bin");
      String str2 = str1;
      localObject = str1;
      if ("".equals(str1.trim()))
      {
        localObject = str1;
        str2 = UUID.randomUUID().toString();
        localObject = str2;
        localaa.a("fb.bin", str2.getBytes("UTF-8"));
      }
      return str2;
    }
    catch (Exception localException) {}
    return (String)localObject;
  }
  
  public static String a(Context paramContext, bd parambd)
  {
    try
    {
      if ((Build.VERSION.SDK_INT >= 9) && (e.a(paramContext) == 0))
      {
        if (Looper.myLooper() != Looper.getMainLooper()) {
          return a.b(paramContext).a();
        }
        new Thread(new ci(paramContext, parambd)).start();
      }
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        paramContext.getLocalizedMessage();
      }
    }
    return null;
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      new StringBuilder("entering getMetadata loading name=").append(paramString1);
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (metaData != null)
      {
        new StringBuilder("leaving getMetadata successfully loading name=").append(paramString1);
        paramContext = metaData.getString(paramString1);
        return paramContext;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      new StringBuilder("load metadata in manifest failed, name=").append(paramString1);
      new StringBuilder("leaving getMetadata with default value,name=").append(paramString1);
    }
    return null;
  }
  
  public static List a(boolean paramBoolean)
  {
    localArrayList = new ArrayList();
    try
    {
      Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
      while (localEnumeration1.hasMoreElements())
      {
        Enumeration localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
        while (localEnumeration2.hasMoreElements())
        {
          InetAddress localInetAddress = (InetAddress)localEnumeration2.nextElement();
          if (!localInetAddress.isLoopbackAddress())
          {
            String str = localInetAddress.getHostAddress();
            if ((localInetAddress instanceof Inet6Address))
            {
              if (paramBoolean) {
                localArrayList.add(str);
              }
            }
            else {
              localArrayList.add(str);
            }
          }
        }
      }
      return localArrayList;
    }
    catch (Exception localException) {}
  }
  
  public static void a(int paramInt, String paramString1, String paramString2)
  {
    if (b) {
      Log.println(paramInt, paramString1, paramString2);
    }
  }
  
  public static void a(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (b) {
      Log.println(6, paramString1, paramString2 + '\n' + Log.getStackTraceString(paramThrowable));
    }
  }
  
  public static void a(String paramString1, String paramString2) {}
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable) {}
  
  public static void a(String paramString, JSONObject paramJSONObject)
  {
    if ((a) && (paramJSONObject != null)) {
      paramJSONObject.toString();
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      int i = paramContext.getApplicationContext().checkCallingOrSelfPermission(paramString);
      if (i == 0) {
        bool = true;
      }
      return bool;
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  public static boolean a(PackageManager paramPackageManager, Intent paramIntent)
  {
    paramPackageManager = paramPackageManager.queryIntentActivities(paramIntent, 65536);
    return (paramPackageManager != null) && (paramPackageManager.size() > 0);
  }
  
  public static String b()
  {
    List localList = a(false);
    if (localList.isEmpty()) {
      return "";
    }
    return (String)localList.get(0);
  }
  
  public static String b(Context paramContext)
  {
    if ((d != null) && (a(paramContext, "com.google.android.providers.gsf.permission.READ_GSERVICES")))
    {
      paramContext = paramContext.getContentResolver().query(d, null, null, new String[] { "android_id" }, null);
      if (paramContext != null) {}
    }
    else
    {
      return null;
    }
    try
    {
      if (paramContext.moveToFirst())
      {
        int i = paramContext.getColumnCount();
        if (i >= 2) {}
      }
      else
      {
        return null;
      }
      String str = Long.toHexString(Long.parseLong(paramContext.getString(1)));
      return str;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      return null;
    }
    finally
    {
      paramContext.close();
    }
  }
  
  public static String b(Context paramContext, String paramString)
  {
    paramContext = new BufferedReader(new InputStreamReader(paramContext.getAssets().open(paramString)));
    paramString = new StringBuilder();
    for (;;)
    {
      String str = paramContext.readLine();
      if (str == null) {
        break;
      }
      paramString.append(str);
    }
    paramContext.close();
    return new String(Base64.decode(paramString.toString(), 0), "UTF-8");
  }
  
  public static boolean b(String paramString1, String paramString2)
  {
    boolean bool = false;
    String[] arrayOfString1 = paramString1.split("\\.");
    String[] arrayOfString2 = paramString2.split("\\.");
    new StringBuilder("Cached version is ").append(paramString1);
    new StringBuilder("default version is ").append(paramString2);
    int i = 0;
    while ((i < arrayOfString1.length) && (i < arrayOfString2.length) && (arrayOfString1[i].equals(arrayOfString2[i]))) {
      i += 1;
    }
    if ((i < arrayOfString1.length) && (i < arrayOfString2.length)) {}
    for (paramString1 = Integer.valueOf(Integer.signum(Integer.valueOf(arrayOfString1[i]).compareTo(Integer.valueOf(arrayOfString2[i]))));; paramString1 = Integer.valueOf(Integer.signum(arrayOfString1.length - arrayOfString2.length)))
    {
      if (paramString1.intValue() >= 0) {
        bool = true;
      }
      return bool;
    }
  }
  
  public static long c()
  {
    try
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      long l = localStatFs.getBlockSize();
      int i = localStatFs.getBlockCount();
      return i * l;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.getLocalizedMessage();
    }
    return 0L;
  }
  
  public static String d()
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      String str1 = System.getProperty("http.proxyHost");
      if (str1 != null)
      {
        String str2 = System.getProperty("http.proxyPort");
        if (str2 != null) {
          return "host=" + str1 + ",port=" + str2;
        }
      }
    }
    return null;
  }
  
  public static String e()
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("ls /sys/class/net").getInputStream()));
      String str;
      boolean bool;
      do
      {
        str = localBufferedReader.readLine();
        if (str == null) {
          break label71;
        }
        if ((str.startsWith("ppp")) || (str.startsWith("tun"))) {
          break;
        }
        bool = str.startsWith("tap");
      } while (!bool);
      return str;
    }
    catch (Exception localException) {}
    label71:
    return null;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */