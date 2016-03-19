package com.grubhub.AppBaseLibrary.android.utils.e.a;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.flurry.android.FlurryAgent;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class a
{
  public static void a()
  {
    FlurryAgent.setLogEvents(true);
    if (GHSApplication.u())
    {
      FlurryAgent.setLogEnabled(true);
      FlurryAgent.setLogLevel(2);
    }
    for (;;)
    {
      FlurryAgent.setReportLocation(true);
      FlurryAgent.setCaptureUncaughtExceptions(true);
      Context localContext = GHSApplication.a().getApplicationContext();
      FlurryAgent.init(localContext, localContext.getResources().getString(2131231629));
      return;
      FlurryAgent.setLogEnabled(false);
    }
  }
  
  public static void a(String paramString)
  {
    b(paramString, null, null);
  }
  
  public static void a(String paramString1, String paramString2, Exception paramException)
  {
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("\"logError\" requires a non-empty error message.");
    }
    if (paramException == null) {
      throw new IllegalArgumentException("\"logError\" requires a non-null exception to log.");
    }
    String str = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      str = UUID.randomUUID().toString();
    }
    FlurryAgent.onError(str, paramString2, paramException);
  }
  
  public static void a(String paramString, Map<String, String> paramMap)
  {
    b(paramString, paramMap, null);
  }
  
  public static void a(String paramString1, Map<String, String> paramMap, String paramString2)
  {
    b(paramString1, paramMap, paramString2);
  }
  
  private static String b(String paramString)
  {
    return String.format("%s_%s", new Object[] { "EspressoApp", paramString });
  }
  
  private static void b(String paramString1, Map<String, String> paramMap, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      throw new IllegalArgumentException("The event name cannot be null or empty.");
    }
    String str1 = b(paramString1);
    if (!TextUtils.isEmpty(paramString2))
    {
      if (paramMap != null) {
        break label59;
      }
      FlurryAgent.logEvent(str1, new HashMap() {});
    }
    label59:
    do
    {
      return;
      paramString2 = UUID.randomUUID().toString();
      break;
      paramString1 = new HashMap();
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        Object localObject = paramString1;
        if (paramString1.size() == 9)
        {
          paramString1.put("LOG_ID", paramString2);
          FlurryAgent.logEvent(str1, paramString1);
          localObject = new HashMap();
        }
        ((Map)localObject).put(str2, paramMap.get(str2));
        paramString1 = (String)localObject;
      }
    } while (paramString1.size() <= 0);
    paramString1.put("LOG_ID", paramString2);
    FlurryAgent.logEvent(str1, paramString1);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.e.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */