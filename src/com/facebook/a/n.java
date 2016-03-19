package com.facebook.a;

import java.io.Serializable;

class n
  implements Serializable
{
  private static final long serialVersionUID = 6L;
  private final long a;
  private final long b;
  private final long c;
  private final int d;
  private final String e;
  
  n(long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString)
  {
    a = paramLong1;
    b = paramLong2;
    c = paramLong3;
    d = paramInt;
    e = paramString;
  }
  
  private Object readResolve()
  {
    return new m(a, b, c, d, e, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */