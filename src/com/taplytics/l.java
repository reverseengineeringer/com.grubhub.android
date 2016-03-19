package com.taplytics;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class l
  implements Iterable<x>
{
  private final List<x> a = new LinkedList();
  private final Map<String, List<x>> b = new HashMap();
  
  public x a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    paramString = paramString.toLowerCase(Locale.ROOT);
    paramString = (List)b.get(paramString);
    if ((paramString != null) && (!paramString.isEmpty())) {
      return (x)paramString.get(0);
    }
    return null;
  }
  
  public void a(x paramx)
  {
    if (paramx == null) {
      return;
    }
    String str = paramx.a().toLowerCase(Locale.ROOT);
    List localList = (List)b.get(str);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new LinkedList();
      b.put(str, localObject);
    }
    ((List)localObject).add(paramx);
    a.add(paramx);
  }
  
  public Iterator<x> iterator()
  {
    return Collections.unmodifiableList(a).iterator();
  }
  
  public String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */