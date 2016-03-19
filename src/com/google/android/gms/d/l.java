package com.google.android.gms.d;

import java.io.IOException;

public final class l
  extends ee<l>
{
  private static volatile l[] d;
  public String a;
  public o b;
  public g c;
  
  public l()
  {
    c();
  }
  
  public static l[] a()
  {
    if (d == null) {}
    synchronized (ei.a)
    {
      if (d == null) {
        d = new l[0];
      }
      return d;
    }
  }
  
  public l a(eb parameb)
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
        if (b == null) {
          b = new o();
        }
        parameb.a(b);
        break;
      case 26: 
        if (c == null) {
          c = new g();
        }
        parameb.a(c);
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if (!a.equals("")) {
      paramec.a(1, a);
    }
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
    int j = super.b();
    int i = j;
    if (!a.equals("")) {
      i = j + ec.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + ec.c(2, b);
    }
    i = j;
    if (c != null) {
      i = j + ec.c(3, c);
    }
    return i;
  }
  
  public l c()
  {
    a = "";
    b = null;
    c = null;
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
    label57:
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
          } while (!(paramObject instanceof l));
          paramObject = (l)paramObject;
          if (a != null) {
            break;
          }
          bool1 = bool2;
        } while (a != null);
        if (b != null) {
          break label95;
        }
        bool1 = bool2;
      } while (b != null);
      if (c != null) {
        break label111;
      }
      bool1 = bool2;
    } while (c != null);
    label95:
    label111:
    while (c.equals(c))
    {
      return a((ee)paramObject);
      if (a.equals(a)) {
        break;
      }
      return false;
      if (b.equals(b)) {
        break label57;
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
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label62;
      }
      j = 0;
      label20:
      if (c != null) {
        break label73;
      }
    }
    for (;;)
    {
      return ((j + (i + 527) * 31) * 31 + k) * 31 + d();
      i = a.hashCode();
      break;
      label62:
      j = b.hashCode();
      break label20;
      label73:
      k = c.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */