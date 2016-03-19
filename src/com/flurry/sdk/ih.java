package com.flurry.sdk;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class ih
{
  private final HashMap<String, String> a = new HashMap();
  
  public int a()
  {
    return a.size();
  }
  
  public String a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return (String)a.get(paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return;
    }
    a.put(paramString1, paramString2);
  }
  
  public String b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = a.entrySet();
    if (((Set)localObject).size() > 0)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        localStringBuilder.append(jn.c((String)localEntry.getKey()));
        localStringBuilder.append("=");
        localStringBuilder.append(jn.c((String)localEntry.getValue()));
        localStringBuilder.append("&");
      }
      localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
    }
    return localStringBuilder.toString();
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof ih))) {
      return false;
    }
    paramObject = (ih)paramObject;
    if (((ih)paramObject).a() != a()) {
      return false;
    }
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject).getValue();
      localObject = ((ih)paramObject).a((String)((Map.Entry)localObject).getKey());
      if ((str != localObject) && ((str == null) || (!str.equals(localObject)))) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */