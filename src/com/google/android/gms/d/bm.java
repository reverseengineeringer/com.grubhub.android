package com.google.android.gms.d;

import java.io.IOException;

public final class bm
  extends ee<bm>
{
  public boolean a;
  public String b;
  public long c;
  public double d;
  public bl e;
  
  public bm()
  {
    a();
  }
  
  public bm a()
  {
    a = false;
    b = "";
    c = 0L;
    d = 0.0D;
    e = null;
    r = null;
    s = -1;
    return this;
  }
  
  public bm a(eb parameb)
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
        a = parameb.g();
        break;
      case 18: 
        b = parameb.h();
        break;
      case 24: 
        c = parameb.e();
        break;
      case 33: 
        d = parameb.c();
        break;
      case 42: 
        if (e == null) {
          e = new bl();
        }
        parameb.a(e);
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if (a) {
      paramec.a(1, a);
    }
    if (!b.equals("")) {
      paramec.a(2, b);
    }
    if (c != 0L) {
      paramec.a(3, c);
    }
    if (Double.doubleToLongBits(d) != Double.doubleToLongBits(0.0D)) {
      paramec.a(4, d);
    }
    if (e != null) {
      paramec.a(5, e);
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a) {
      i = j + ec.b(1, a);
    }
    j = i;
    if (!b.equals("")) {
      j = i + ec.b(2, b);
    }
    i = j;
    if (c != 0L) {
      i = j + ec.b(3, c);
    }
    j = i;
    if (Double.doubleToLongBits(d) != Double.doubleToLongBits(0.0D)) {
      j = i + ec.b(4, d);
    }
    i = j;
    if (e != null) {
      i = j + ec.c(5, e);
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
            do
            {
              do
              {
                return bool1;
                bool1 = bool2;
              } while (!(paramObject instanceof bm));
              paramObject = (bm)paramObject;
              bool1 = bool2;
            } while (a != a);
            if (b != null) {
              break;
            }
            bool1 = bool2;
          } while (b != null);
          bool1 = bool2;
        } while (c != c);
        bool1 = bool2;
      } while (Double.doubleToLongBits(d) != Double.doubleToLongBits(d));
      if (e != null) {
        break label126;
      }
      bool1 = bool2;
    } while (e != null);
    label126:
    while (e.equals(e))
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
    int k = 0;
    int i;
    int j;
    label22:
    int m;
    int n;
    if (a)
    {
      i = 1231;
      if (b != null) {
        break label107;
      }
      j = 0;
      m = (int)(c ^ c >>> 32);
      long l = Double.doubleToLongBits(d);
      n = (int)(l ^ l >>> 32);
      if (e != null) {
        break label118;
      }
    }
    for (;;)
    {
      return ((((j + (i + 527) * 31) * 31 + m) * 31 + n) * 31 + k) * 31 + d();
      i = 1237;
      break;
      label107:
      j = b.hashCode();
      break label22;
      label118:
      k = e.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */