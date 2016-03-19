package com.google.android.gms.d;

import java.util.Collections;
import java.util.Map;

public class cq
{
  private final Map<String, o> a;
  private final o b;
  
  private cq(Map<String, o> paramMap, o paramo)
  {
    a = paramMap;
    b = paramo;
  }
  
  public static cr a()
  {
    return new cr(null);
  }
  
  public void a(String paramString, o paramo)
  {
    a.put(paramString, paramo);
  }
  
  public Map<String, o> b()
  {
    return Collections.unmodifiableMap(a);
  }
  
  public o c()
  {
    return b;
  }
  
  public String toString()
  {
    return "Properties: " + b() + " pushAfterEvaluate: " + b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */