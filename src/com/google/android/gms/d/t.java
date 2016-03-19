package com.google.android.gms.d;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class t
  extends bq<t>
{
  private Map<Integer, Double> a = new HashMap(4);
  
  public Map<Integer, Double> a()
  {
    return Collections.unmodifiableMap(a);
  }
  
  public void a(t paramt)
  {
    a.putAll(a);
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put("metric" + localEntry.getKey(), localEntry.getValue());
    }
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */