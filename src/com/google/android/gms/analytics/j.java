package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.a.a;
import com.google.android.gms.analytics.a.b;
import com.google.android.gms.analytics.a.c;
import com.google.android.gms.analytics.internal.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class j<T extends j>
{
  b a;
  Map<String, List<a>> b = new HashMap();
  List<c> c = new ArrayList();
  List<a> d = new ArrayList();
  private Map<String, String> e = new HashMap();
  
  public T a(a parama)
  {
    if (parama == null)
    {
      h.c("product should be non-null");
      return this;
    }
    d.add(parama);
    return this;
  }
  
  public T a(a parama, String paramString)
  {
    if (parama == null)
    {
      h.c("product should be non-null");
      return this;
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (!b.containsKey(str)) {
      b.put(str, new ArrayList());
    }
    ((List)b.get(str)).add(parama);
    return this;
  }
  
  public T a(b paramb)
  {
    a = paramb;
    return this;
  }
  
  public T a(c paramc)
  {
    if (paramc == null)
    {
      h.c("promotion should be non-null");
      return this;
    }
    c.add(paramc);
    return this;
  }
  
  public final T a(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      e.put(paramString1, paramString2);
      return this;
    }
    h.c(" HitBuilder.set() called with a null paramName.");
    return this;
  }
  
  public final T a(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return this;
    }
    e.putAll(new HashMap(paramMap));
    return this;
  }
  
  public Map<String, String> a()
  {
    HashMap localHashMap = new HashMap(e);
    if (a != null) {
      localHashMap.putAll(a.a());
    }
    Iterator localIterator = c.iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((c)localIterator.next()).e(q.e(i)));
      i += 1;
    }
    localIterator = d.iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((a)localIterator.next()).g(q.c(i)));
      i += 1;
    }
    localIterator = b.entrySet().iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject = (List)localEntry.getValue();
      String str = q.h(i);
      localObject = ((List)localObject).iterator();
      int j = 1;
      while (((Iterator)localObject).hasNext())
      {
        localHashMap.putAll(((a)((Iterator)localObject).next()).g(str + q.g(j)));
        j += 1;
      }
      if (!TextUtils.isEmpty((CharSequence)localEntry.getKey())) {
        localHashMap.put(str + "nm", localEntry.getKey());
      }
      i += 1;
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */