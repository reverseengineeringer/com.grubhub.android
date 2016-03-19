package com.google.android.gms.d;

import java.io.IOException;
import java.util.Arrays;

final class em
{
  final int a;
  final byte[] b;
  
  em(int paramInt, byte[] paramArrayOfByte)
  {
    a = paramInt;
    b = paramArrayOfByte;
  }
  
  int a()
  {
    return 0 + ec.f(a) + b.length;
  }
  
  void a(ec paramec)
    throws IOException
  {
    paramec.e(a);
    paramec.b(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof em)) {
        return false;
      }
      paramObject = (em)paramObject;
    } while ((a == a) && (Arrays.equals(b, b)));
    return false;
  }
  
  public int hashCode()
  {
    return (a + 527) * 31 + Arrays.hashCode(b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */