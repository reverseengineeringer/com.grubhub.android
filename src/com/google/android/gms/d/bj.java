package com.google.android.gms.d;

import java.io.IOException;

public final class bj
  extends ee<bj>
{
  private static volatile bj[] d;
  public String a;
  public String b;
  public int c;
  
  public bj()
  {
    c();
  }
  
  public static bj[] a()
  {
    if (d == null) {}
    synchronized (ei.a)
    {
      if (d == null) {
        d = new bj[0];
      }
      return d;
    }
  }
  
  public bj a(eb parameb)
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
      case 10: 
        a = parameb.h();
        break;
      case 18: 
        b = parameb.h();
        break;
      case 24: 
        c = parameb.f();
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if (!a.equals("")) {
      paramec.a(1, a);
    }
    if (!b.equals("")) {
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
    if (!a.equals("")) {
      i = j + ec.b(1, a);
    }
    j = i;
    if (!b.equals("")) {
      j = i + ec.b(2, b);
    }
    i = j;
    if (c != 0) {
      i = j + ec.b(3, c);
    }
    return i;
  }
  
  public bj c()
  {
    a = "";
    b = "";
    c = 0;
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
    label41:
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!(paramObject instanceof bj));
        paramObject = (bj)paramObject;
        if (a != null) {
          break;
        }
        bool1 = bool2;
      } while (a != null);
      if (b != null) {
        break label92;
      }
      bool1 = bool2;
    } while (b != null);
    label92:
    while (b.equals(b))
    {
      bool1 = bool2;
      if (c != c) {
        break;
      }
      return a((ee)paramObject);
      if (a.equals(a)) {
        break label41;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label56;
      }
    }
    for (;;)
    {
      return (((i + 527) * 31 + j) * 31 + c) * 31 + d();
      i = a.hashCode();
      break;
      label56:
      j = b.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */