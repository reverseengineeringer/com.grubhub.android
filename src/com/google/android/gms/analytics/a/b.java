package com.google.android.gms.analytics.a;

import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bq;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class b
{
  Map<String, String> a = new HashMap();
  
  public b(String paramString)
  {
    a("&pa", paramString);
  }
  
  public b a(double paramDouble)
  {
    a("&tr", Double.toString(paramDouble));
    return this;
  }
  
  public b a(int paramInt)
  {
    a("&cos", Integer.toString(paramInt));
    return this;
  }
  
  public b a(String paramString)
  {
    a("&ti", paramString);
    return this;
  }
  
  public Map<String, String> a()
  {
    return new HashMap(a);
  }
  
  void a(String paramString1, String paramString2)
  {
    aq.a(paramString1, "Name should be non-null");
    a.put(paramString1, paramString2);
  }
  
  public b b(double paramDouble)
  {
    a("&tt", Double.toString(paramDouble));
    return this;
  }
  
  public b b(String paramString)
  {
    a("&ta", paramString);
    return this;
  }
  
  public b c(double paramDouble)
  {
    a("&ts", Double.toString(paramDouble));
    return this;
  }
  
  public b c(String paramString)
  {
    a("&tcc", paramString);
    return this;
  }
  
  public b d(String paramString)
  {
    a("&col", paramString);
    return this;
  }
  
  public b e(String paramString)
  {
    a("&pal", paramString);
    return this;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((String)localEntry.getKey()).startsWith("&")) {
        localHashMap.put(((String)localEntry.getKey()).substring(1), localEntry.getValue());
      } else {
        localHashMap.put(localEntry.getKey(), localEntry.getValue());
      }
    }
    return bq.a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */