package com.taplytics;

public class x
{
  private final String a;
  private final String b;
  
  public x(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a);
    localStringBuilder.append(": ");
    localStringBuilder.append(b);
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */