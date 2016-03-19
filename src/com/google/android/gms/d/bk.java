package com.google.android.gms.d;

import java.io.IOException;

public final class bk
  extends ee<bk>
{
  private static volatile bk[] c;
  public String a;
  public bm b;
  
  public bk()
  {
    c();
  }
  
  public static bk[] a()
  {
    if (c == null) {}
    synchronized (ei.a)
    {
      if (c == null) {
        c = new bk[0];
      }
      return c;
    }
  }
  
  public bk a(eb parameb)
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
          b = new bm();
        }
        parameb.a(b);
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
    return j;
  }
  
  public bk c()
  {
    a = "";
    b = null;
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
        } while (!(paramObject instanceof bk));
        paramObject = (bk)paramObject;
        if (a != null) {
          break;
        }
        bool1 = bool2;
      } while (a != null);
      if (b != null) {
        break label79;
      }
      bool1 = bool2;
    } while (b != null);
    label79:
    while (b.equals(b))
    {
      return a((ee)paramObject);
      if (a.equals(a)) {
        break;
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
        break label48;
      }
    }
    for (;;)
    {
      return ((i + 527) * 31 + j) * 31 + d();
      i = a.hashCode();
      break;
      label48:
      j = b.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */