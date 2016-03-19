package com.google.android.gms.analytics.a;

import com.google.android.gms.analytics.q;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bq;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  Map<String, String> a = new HashMap();
  
  public a a(double paramDouble)
  {
    a("pr", Double.toString(paramDouble));
    return this;
  }
  
  public a a(int paramInt)
  {
    a("ps", Integer.toString(paramInt));
    return this;
  }
  
  public a a(int paramInt1, int paramInt2)
  {
    a(q.k(paramInt1), Integer.toString(paramInt2));
    return this;
  }
  
  public a a(int paramInt, String paramString)
  {
    a(q.j(paramInt), paramString);
    return this;
  }
  
  public a a(String paramString)
  {
    a("id", paramString);
    return this;
  }
  
  void a(String paramString1, String paramString2)
  {
    aq.a(paramString1, "Name should be non-null");
    a.put(paramString1, paramString2);
  }
  
  public a b(int paramInt)
  {
    a("qt", Integer.toString(paramInt));
    return this;
  }
  
  public a b(String paramString)
  {
    a("nm", paramString);
    return this;
  }
  
  public a c(String paramString)
  {
    a("br", paramString);
    return this;
  }
  
  public a d(String paramString)
  {
    a("ca", paramString);
    return this;
  }
  
  public a e(String paramString)
  {
    a("va", paramString);
    return this;
  }
  
  public a f(String paramString)
  {
    a("cc", paramString);
    return this;
  }
  
  public Map<String, String> g(String paramString)
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
 * Qualified Name:     com.google.android.gms.analytics.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */