package com.google.android.gms.tagmanager;

import com.google.android.gms.d.cq;
import com.google.android.gms.d.cu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

class cs
{
  private final Set<cu> a = new HashSet();
  private final Map<cu, List<cq>> b = new HashMap();
  private final Map<cu, List<cq>> c = new HashMap();
  private final Map<cu, List<String>> d = new HashMap();
  private final Map<cu, List<String>> e = new HashMap();
  private cq f;
  
  public Set<cu> a()
  {
    return a;
  }
  
  public void a(cq paramcq)
  {
    f = paramcq;
  }
  
  public void a(cu paramcu)
  {
    a.add(paramcu);
  }
  
  public void a(cu paramcu, cq paramcq)
  {
    List localList = (List)b.get(paramcu);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      b.put(paramcu, localObject);
    }
    ((List)localObject).add(paramcq);
  }
  
  public void a(cu paramcu, String paramString)
  {
    List localList = (List)d.get(paramcu);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      d.put(paramcu, localObject);
    }
    ((List)localObject).add(paramString);
  }
  
  public Map<cu, List<cq>> b()
  {
    return b;
  }
  
  public void b(cu paramcu, cq paramcq)
  {
    List localList = (List)c.get(paramcu);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      c.put(paramcu, localObject);
    }
    ((List)localObject).add(paramcq);
  }
  
  public void b(cu paramcu, String paramString)
  {
    List localList = (List)e.get(paramcu);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      e.put(paramcu, localObject);
    }
    ((List)localObject).add(paramString);
  }
  
  public Map<cu, List<String>> c()
  {
    return d;
  }
  
  public Map<cu, List<String>> d()
  {
    return e;
  }
  
  public Map<cu, List<cq>> e()
  {
    return c;
  }
  
  public cq f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */