package com.google.android.gms.tagmanager;

import java.util.Arrays;

final class i
{
  public final String a;
  public final Object b;
  
  i(String paramString, Object paramObject)
  {
    a = paramString;
    b = paramObject;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof i)) {}
    do
    {
      return false;
      paramObject = (i)paramObject;
    } while ((!a.equals(a)) || (!b.equals(b)));
    return true;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Integer[] { Integer.valueOf(a.hashCode()), Integer.valueOf(b.hashCode()) });
  }
  
  public String toString()
  {
    return "Key: " + a + " value: " + b.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */