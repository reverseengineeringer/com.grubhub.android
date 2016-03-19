package com.google.android.gms.d;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public class cs
{
  private final List<cu> a;
  private final Map<String, List<cq>> b;
  private final String c;
  private final int d;
  
  private cs(List<cu> paramList, Map<String, List<cq>> paramMap, String paramString, int paramInt)
  {
    a = Collections.unmodifiableList(paramList);
    b = Collections.unmodifiableMap(paramMap);
    c = paramString;
    d = paramInt;
  }
  
  public static ct a()
  {
    return new ct(null);
  }
  
  public List<cu> b()
  {
    return a;
  }
  
  public String c()
  {
    return c;
  }
  
  public Map<String, List<cq>> d()
  {
    return b;
  }
  
  public String toString()
  {
    return "Rules: " + b() + "  Macros: " + b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */