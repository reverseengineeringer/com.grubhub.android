package com.google.android.gms.common;

import com.google.android.gms.common.internal.aq;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

abstract class j
{
  private int a;
  
  protected j(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length == 25) {}
    for (boolean bool = true;; bool = false)
    {
      aq.b(bool, "cert hash data has incorrect length");
      a = Arrays.hashCode(paramArrayOfByte);
      return;
    }
  }
  
  protected static byte[] a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("ISO-8859-1");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  abstract byte[] a();
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof j))) {
      return false;
    }
    paramObject = (j)paramObject;
    return Arrays.equals(a(), ((j)paramObject).a());
  }
  
  public int hashCode()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */