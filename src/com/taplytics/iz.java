package com.taplytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class iz
{
  private static Random a;
  
  public static double a(double paramDouble)
  {
    if (a == null) {
      a = new Random();
    }
    return a.nextDouble() * paramDouble;
  }
  
  public static SharedPreferences a()
  {
    Context localContext = fy.e().p();
    if (localContext != null) {
      return localContext.getSharedPreferences("TAPLYTICS_PREFS", 0);
    }
    return null;
  }
  
  public static void a(Map<String, Object> paramMap, StringBuilder paramStringBuilder)
  {
    if ((paramMap == null) || (paramStringBuilder == null)) {
      return;
    }
    boolean bool = paramStringBuilder.toString().contains("?");
    Iterator localIterator = paramMap.entrySet().iterator();
    paramMap = Integer.valueOf(0);
    label36:
    Map.Entry localEntry;
    if (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if ((paramMap.intValue() != 0) || (bool)) {
        break label120;
      }
      paramStringBuilder.append("?");
    }
    for (;;)
    {
      paramStringBuilder.append((String)localEntry.getKey()).append("=").append(localEntry.getValue().toString());
      paramMap = Integer.valueOf(paramMap.intValue() + 1);
      break label36;
      break;
      label120:
      paramStringBuilder.append("&");
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    return paramContext.checkCallingOrSelfPermission(paramString) == 0;
  }
  
  public static boolean a(kb paramkb)
  {
    return fx.a().b().contains(paramkb.getText());
  }
  
  public static boolean a(String paramString)
  {
    try
    {
      new JSONObject(paramString);
      return true;
    }
    catch (JSONException localJSONException)
    {
      try
      {
        new JSONArray(paramString);
      }
      catch (JSONException paramString) {}
    }
    return false;
  }
  
  public static String b()
  {
    try
    {
      String str = epgetPackageManagergetPackageInfoepgetPackageName0versionName;
      return str;
    }
    catch (Exception localException)
    {
      ck.b("appVersion error", localException);
    }
    return "";
  }
  
  public static Thread b(String paramString)
  {
    Iterator localIterator = Thread.getAllStackTraces().keySet().iterator();
    while (localIterator.hasNext())
    {
      Thread localThread = (Thread)localIterator.next();
      if (localThread.getName().equals(paramString)) {
        return localThread;
      }
    }
    return null;
  }
  
  public static int c()
  {
    try
    {
      int i = epgetPackageManagergetPackageInfoepgetPackageName0versionCode;
      return i;
    }
    catch (Exception localException)
    {
      ck.b("appVersion error", localException);
    }
    return 0;
  }
  
  public static boolean c(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static ScheduledExecutorService d()
  {
    return Executors.newSingleThreadScheduledExecutor();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.iz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */