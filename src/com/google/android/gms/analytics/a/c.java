package com.google.android.gms.analytics.a;

import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bq;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class c
{
  Map<String, String> a = new HashMap();
  
  public c a(String paramString)
  {
    a("id", paramString);
    return this;
  }
  
  void a(String paramString1, String paramString2)
  {
    aq.a(paramString1, "Name should be non-null");
    a.put(paramString1, paramString2);
  }
  
  public c b(String paramString)
  {
    a("nm", paramString);
    return this;
  }
  
  public c c(String paramString)
  {
    a("cr", paramString);
    return this;
  }
  
  public c d(String paramString)
  {
    a("ps", paramString);
    return this;
  }
  
  public Map<String, String> e(String paramString)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put(paramString + (String)localEntry.getKey(), localEntry.getValue());
    }
    return localHashMap;
  }
  
  public String toString()
  {
    return bq.a(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */