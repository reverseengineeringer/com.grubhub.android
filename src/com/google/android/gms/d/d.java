package com.google.android.gms.d;

import java.io.IOException;

public final class d
  extends ee<d>
{
  public int a;
  public int b;
  public int c;
  
  public d()
  {
    a();
  }
  
  public d a()
  {
    a = 1;
    b = 0;
    c = 0;
    r = null;
    s = -1;
    return this;
  }
  
  public d a(eb parameb)
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
        i = parameb.f();
        switch (i)
        {
        default: 
          break;
        case 1: 
        case 2: 
        case 3: 
          a = i;
        }
        break;
      case 16: 
        b = parameb.f();
        break;
      case 24: 
        c = parameb.f();
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if (a != 1) {
      paramec.a(1, a);
    }
    if (b != 0) {
      paramec.a(2, b);
    }
    if (c != 0) {
      paramec.a(3, c);
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != 1) {
      i = j + ec.b(1, a);
    }
    j = i;
    if (b != 0) {
      j = i + ec.b(2, b);
    }
    i = j;
    if (c != 0) {
      i = j + ec.b(3, c);
    }
    return i;
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
          } while (!(paramObject instanceof d));
          paramObject = (d)paramObject;
          bool1 = bool2;
        } while (a != a);
        bool1 = bool2;
      } while (b != b);
      bool1 = bool2;
    } while (c != c);
    return a((ee)paramObject);
  }
  
  public int hashCode()
  {
    return (((a + 527) * 31 + b) * 31 + c) * 31 + d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */