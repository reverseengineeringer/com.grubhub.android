package com.crashlytics.android;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

final class d
{
  private final byte[] a;
  private volatile int b = 0;
  
  static
  {
    new d(new byte[0]);
  }
  
  private d(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }
  
  public static d a(String paramString)
  {
    try
    {
      paramString = new d(paramString.getBytes("UTF-8"));
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException("UTF-8 not supported.", paramString);
    }
  }
  
  public static d a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramInt2);
    return new d(arrayOfByte);
  }
  
  public final int a()
  {
    return a.length;
  }
  
  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(a, paramInt1, paramArrayOfByte, paramInt2, paramInt3);
  }
  
  public final InputStream b()
  {
    return new ByteArrayInputStream(a);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    for (;;)
    {
      return true;
      if (!(paramObject instanceof d)) {
        return false;
      }
      Object localObject = (d)paramObject;
      int j = a.length;
      if (j != a.length) {
        return false;
      }
      paramObject = a;
      localObject = a;
      int i = 0;
      while (i < j)
      {
        if (paramObject[i] != localObject[i]) {
          return false;
        }
        i += 1;
      }
    }
  }
  
  public final int hashCode()
  {
    int i = b;
    int j = i;
    if (i == 0)
    {
      byte[] arrayOfByte = a;
      int k = a.length;
      j = 0;
      int m;
      for (i = k; j < k; i = m + i * 31)
      {
        m = arrayOfByte[j];
        j += 1;
      }
      j = i;
      if (i == 0) {
        j = 1;
      }
      b = j;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */