package com.google.android.gms.d;

import java.io.IOException;

public final class cn
  extends ee<cn>
{
  public long a;
  public i b;
  public m c;
  
  public cn()
  {
    a();
  }
  
  public static cn a(byte[] paramArrayOfByte)
    throws ej
  {
    return (cn)ek.a(new cn(), paramArrayOfByte);
  }
  
  public cn a()
  {
    a = 0L;
    b = null;
    c = null;
    r = null;
    s = -1;
    return this;
  }
  
  public cn a(eb parameb)
    throws IOException
  {
    for (;;)
    {
      int i = parameb.a();
      switch (i)
      {
      default: 
        if (a(parameb, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        a = parameb.e();
        break;
      case 18: 
        if (b == null) {
          b = new i();
        }
        parameb.a(b);
        break;
      case 26: 
        if (c == null) {
          c = new m();
        }
        parameb.a(c);
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    paramec.a(1, a);
    if (b != null) {
      paramec.a(2, b);
    }
    if (c != null) {
      paramec.a(3, c);
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int j = super.b() + ec.b(1, a);
    int i = j;
    if (b != null) {
      i = j + ec.c(2, b);
    }
    j = i;
    if (c != null) {
      j = i + ec.c(3, c);
    }
    return j;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof cn));
          paramObject = (cn)paramObject;
          bool1 = bool2;
        } while (a != a);
        if (b != null) {
          break;
        }
        bool1 = bool2;
      } while (b != null);
      if (c != null) {
        break label93;
      }
      bool1 = bool2;
    } while (c != null);
    label93:
    while (c.equals(c))
    {
      return a((ee)paramObject);
      if (b.equals(b)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = (int)(a ^ a >>> 32);
    int i;
    if (b == null)
    {
      i = 0;
      if (c != null) {
        break label67;
      }
    }
    for (;;)
    {
      return ((i + (k + 527) * 31) * 31 + j) * 31 + d();
      i = b.hashCode();
      break;
      label67:
      j = c.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */