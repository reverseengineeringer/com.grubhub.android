package com.google.android.gms.tagmanager;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class cz<K, V>
  implements dz<K, V>
{
  private final Map<K, V> a = new HashMap();
  private final int b;
  private final eb<K, V> c;
  private int d;
  
  cz(int paramInt, eb<K, V> parameb)
  {
    b = paramInt;
    c = parameb;
  }
  
  public V a(K paramK)
  {
    try
    {
      paramK = a.get(paramK);
      return paramK;
    }
    finally
    {
      paramK = finally;
      throw paramK;
    }
  }
  
  public void a(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      try
      {
        throw new NullPointerException("key == null || value == null");
      }
      finally {}
    }
    d += c.a(paramK, paramV);
    if (d > b)
    {
      Iterator localIterator = a.entrySet().iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        d -= c.a(localEntry.getKey(), localEntry.getValue());
        localIterator.remove();
      } while (d > b);
    }
    a.put(paramK, paramV);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */