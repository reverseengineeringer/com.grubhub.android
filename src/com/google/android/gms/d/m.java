package com.google.android.gms.d;

import java.io.IOException;

public final class m
  extends ee<m>
{
  public l[] a;
  public i b;
  public String c;
  
  public m()
  {
    a();
  }
  
  public static m a(byte[] paramArrayOfByte)
    throws ej
  {
    return (m)ek.a(new m(), paramArrayOfByte);
  }
  
  public m a()
  {
    a = l.a();
    b = null;
    c = "";
    r = null;
    s = -1;
    return this;
  }
  
  public m a(eb parameb)
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
        int j = en.a(parameb, 10);
        if (a == null) {}
        l[] arrayOfl;
        for (i = 0;; i = a.length)
        {
          arrayOfl = new l[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, arrayOfl, 0, i);
            j = i;
          }
          while (j < arrayOfl.length - 1)
          {
            arrayOfl[j] = new l();
            parameb.a(arrayOfl[j]);
            parameb.a();
            j += 1;
          }
        }
        arrayOfl[j] = new l();
        parameb.a(arrayOfl[j]);
        a = arrayOfl;
        break;
      case 18: 
        if (b == null) {
          b = new i();
        }
        parameb.a(b);
        break;
      case 26: 
        c = parameb.h();
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        l locall = a[i];
        if (locall != null) {
          paramec.a(1, locall);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramec.a(2, b);
    }
    if (!c.equals("")) {
      paramec.a(3, c);
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= a.length) {
            break;
          }
          l locall = a[k];
          j = i;
          if (locall != null) {
            j = i + ec.c(1, locall);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + ec.c(2, b);
    }
    j = i;
    if (!c.equals("")) {
      j = i + ec.b(3, c);
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
          } while (!(paramObject instanceof m));
          paramObject = (m)paramObject;
          bool1 = bool2;
        } while (!ei.a(a, a));
        if (b != null) {
          break;
        }
        bool1 = bool2;
      } while (b != null);
      if (c != null) {
        break label95;
      }
      bool1 = bool2;
    } while (c != null);
    label95:
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
    int k = ei.a(a);
    int i;
    if (b == null)
    {
      i = 0;
      if (c != null) {
        break label61;
      }
    }
    for (;;)
    {
      return ((i + (k + 527) * 31) * 31 + j) * 31 + d();
      i = b.hashCode();
      break;
      label61:
      j = c.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */