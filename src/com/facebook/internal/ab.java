package com.facebook.internal;

import android.util.Log;
import com.facebook.ad;
import com.facebook.m;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class ab
{
  private static final HashMap<String, String> a = new HashMap();
  private final ad b;
  private final String c;
  private StringBuilder d;
  private int e = 3;
  
  public ab(ad paramad, String paramString)
  {
    ap.a(paramString, "tag");
    b = paramad;
    c = ("FacebookSDK." + paramString);
    d = new StringBuilder();
  }
  
  public static void a(ad paramad, int paramInt, String paramString1, String paramString2)
  {
    if (m.a(paramad))
    {
      String str = d(paramString2);
      paramString2 = paramString1;
      if (!paramString1.startsWith("FacebookSDK.")) {
        paramString2 = "FacebookSDK." + paramString1;
      }
      Log.println(paramInt, paramString2, str);
      if (paramad == ad.DEVELOPER_ERRORS) {
        new Exception().printStackTrace();
      }
    }
  }
  
  public static void a(ad paramad, int paramInt, String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (m.a(paramad)) {
      a(paramad, paramInt, paramString1, String.format(paramString2, paramVarArgs));
    }
  }
  
  public static void a(ad paramad, String paramString1, String paramString2)
  {
    a(paramad, 3, paramString1, paramString2);
  }
  
  public static void a(ad paramad, String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (m.a(paramad)) {
      a(paramad, 3, paramString1, String.format(paramString2, paramVarArgs));
    }
  }
  
  public static void a(String paramString)
  {
    try
    {
      if (!m.a(ad.INCLUDE_ACCESS_TOKENS)) {
        a(paramString, "ACCESS_TOKEN_REMOVED");
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    try
    {
      a.put(paramString1, paramString2);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  private boolean b()
  {
    return m.a(b);
  }
  
  private static String d(String paramString)
  {
    try
    {
      Iterator localIterator = a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramString = paramString.replace((CharSequence)localEntry.getKey(), (CharSequence)localEntry.getValue());
      }
      return paramString;
    }
    finally {}
  }
  
  public void a()
  {
    b(d.toString());
    d = new StringBuilder();
  }
  
  public void a(String paramString, Object paramObject)
  {
    a("  %s:\t%s\n", new Object[] { paramString, paramObject });
  }
  
  public void a(String paramString, Object... paramVarArgs)
  {
    if (b()) {
      d.append(String.format(paramString, paramVarArgs));
    }
  }
  
  public void b(String paramString)
  {
    a(b, e, c, paramString);
  }
  
  public void c(String paramString)
  {
    if (b()) {
      d.append(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */