package com.google.android.gms.d;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class s
  extends bq<s>
{
  private Map<Integer, String> a = new HashMap(4);
  
  public Map<Integer, String> a()
  {
    return Collections.unmodifiableMap(a);
  }
  
  public void a(s params)
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
      localHashMap.put("dimension" + localEntry.getKey(), localEntry.getValue());
    }
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */