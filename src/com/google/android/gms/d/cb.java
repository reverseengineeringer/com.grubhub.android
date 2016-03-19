package com.google.android.gms.d;

import com.google.android.gms.analytics.a.a;
import com.google.android.gms.analytics.a.b;
import com.google.android.gms.analytics.a.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class cb
  extends bq<cb>
{
  private final List<a> a = new ArrayList();
  private final List<c> b = new ArrayList();
  private final Map<String, List<a>> c = new HashMap();
  private b d;
  
  public b a()
  {
    return d;
  }
  
  public void a(a parama, String paramString)
  {
    if (parama == null) {
      return;
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (!c.containsKey(str)) {
      c.put(str, new ArrayList());
    }
    ((List)c.get(str)).add(parama);
  }
  
  public void a(cb paramcb)
  {
    a.addAll(a);
    b.addAll(b);
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = ((List)((Map.Entry)localObject).getValue()).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramcb.a((a)((Iterator)localObject).next(), str);
      }
    }
    if (d != null) {
      d = d;
    }
  }
  
  public List<a> b()
  {
    return Collections.unmodifiableList(a);
  }
  
  public Map<String, List<a>> c()
  {
    return c;
  }
  
  public List<c> d()
  {
    return Collections.unmodifiableList(b);
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    if (!a.isEmpty()) {
      localHashMap.put("products", a);
    }
    if (!b.isEmpty()) {
      localHashMap.put("promotions", b);
    }
    if (!c.isEmpty()) {
      localHashMap.put("impressions", c);
    }
    localHashMap.put("productAction", d);
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */