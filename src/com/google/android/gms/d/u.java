package com.google.android.gms.d;

import com.google.android.gms.common.internal.aq;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class u
  extends bq<u>
{
  private final Map<String, Object> a = new HashMap();
  
  private String a(String paramString)
  {
    aq.a(paramString);
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.startsWith("&")) {
        str = paramString.substring(1);
      }
    }
    aq.a(str, "Name can not be empty or \"&\"");
    return str;
  }
  
  public Map<String, Object> a()
  {
    return Collections.unmodifiableMap(a);
  }
  
  public void a(u paramu)
  {
    aq.a(paramu);
    a.putAll(a);
  }
  
  public void a(String paramString1, String paramString2)
  {
    paramString1 = a(paramString1);
    a.put(paramString1, paramString2);
  }
  
  public String toString()
  {
    return a(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */