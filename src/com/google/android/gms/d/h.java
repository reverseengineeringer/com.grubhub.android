package com.google.android.gms.d;

import java.io.IOException;

public final class h
  extends ee<h>
{
  private static volatile h[] c;
  public int a;
  public int b;
  
  public h()
  {
    c();
  }
  
  public static h[] a()
  {
    if (c == null) {}
    synchronized (ei.a)
    {
      if (c == null) {
        c = new h[0];
      }
      return c;
    }
  }
  
  public h a(eb parameb)
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
        a = parameb.f();
        break;
      case 16: 
        b = parameb.f();
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    paramec.a(1, a);
    paramec.a(2, b);
    super.a(paramec);
  }
  
  protected int b()
  {
    return super.b() + ec.b(1, a) + ec.b(2, b);
  }
  
  public h c()
  {
    a = 0;
    b = 0;
    r = null;
    s = -1;
    return this;
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
          return bool1;
          bool1 = bool2;
        } while (!(paramObject instanceof h));
        paramObject = (h)paramObject;
        bool1 = bool2;
      } while (a != a);
      bool1 = bool2;
    } while (b != b);
    return a((ee)paramObject);
  }
  
  public int hashCode()
  {
    return ((a + 527) * 31 + b) * 31 + d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */