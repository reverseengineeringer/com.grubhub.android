package com.a;

import com.a.a.b;
import com.a.a.g;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class d
{
  private final String a;
  private final String b;
  private String c;
  private final String d;
  private HashMap<e, String> e;
  private HashMap<b, g> f;
  
  public d(String paramString1, String paramString2, String paramString3)
  {
    d = paramString1;
    a = paramString2;
    b = paramString3;
    e = new HashMap();
    f = new HashMap();
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(b paramb, g paramg)
  {
    try
    {
      f.put(paramb, paramg);
      return;
    }
    finally
    {
      paramb = finally;
      throw paramb;
    }
  }
  
  public void a(e parame, String paramString)
  {
    try
    {
      e.put(parame, paramString);
      return;
    }
    finally
    {
      parame = finally;
      throw parame;
    }
  }
  
  public void a(String paramString)
  {
    try
    {
      c = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    try
    {
      String str = d;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public HashMap<String, String> e()
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put(e.MERCHANT_ID.postField(), a);
      localHashMap.put(e.SESSION_ID.postField(), b);
      localObject1 = e.keySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (e)((Iterator)localObject1).next();
        localHashMap.put(((e)localObject2).postField(), e.get(localObject2));
      }
      if (f.size() <= 0) {
        break label248;
      }
    }
    finally {}
    Object localObject1 = new StringBuilder("{");
    Object localObject2 = f.keySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      b localb = (b)((Iterator)localObject2).next();
      ((StringBuilder)localObject1).append("\"" + localb.postValue() + "\":" + "\"" + ((g)f.get(localb)).postValue() + "\", ");
    }
    ((StringBuilder)localObject1).replace(((StringBuilder)localObject1).length() - 2, ((StringBuilder)localObject1).length() - 1, "}");
    localHashMap1.put(e.ERROR_LIST.postField(), ((StringBuilder)localObject1).toString());
    label248:
    return localHashMap1;
  }
}

/* Location:
 * Qualified Name:     com.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */