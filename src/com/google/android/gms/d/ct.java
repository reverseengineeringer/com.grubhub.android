package com.google.android.gms.d;

import com.google.android.gms.tagmanager.dm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ct
{
  private final List<cu> a = new ArrayList();
  private final Map<String, List<cq>> b = new HashMap();
  private String c = "";
  private int d = 0;
  
  public cs a()
  {
    return new cs(a, b, c, d, null);
  }
  
  public ct a(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public ct a(cq paramcq)
  {
    String str = dm.a((o)paramcq.b().get(b.zzfr.toString()));
    List localList = (List)b.get(str);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      b.put(str, localObject);
    }
    ((List)localObject).add(paramcq);
    return this;
  }
  
  public ct a(cu paramcu)
  {
    a.add(paramcu);
    return this;
  }
  
  public ct a(String paramString)
  {
    c = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */