package com.google.android.gms.d;

import java.io.IOException;

public final class e
  extends ee<e>
{
  private static volatile e[] f;
  public int[] a;
  public int b;
  public int c;
  public boolean d;
  public boolean e;
  
  public e()
  {
    c();
  }
  
  public static e[] a()
  {
    if (f == null) {}
    synchronized (ei.a)
    {
      if (f == null) {
        f = new e[0];
      }
      return f;
    }
  }
  
  public e a(eb parameb)
    throws IOException
  {
    for (;;)
    {
      int i = parameb.a();
      int j;
      int[] arrayOfInt;
      switch (i)
      {
      default: 
        if (a(parameb, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        e = parameb.g();
        break;
      case 16: 
        b = parameb.f();
        break;
      case 24: 
        j = en.a(parameb, 24);
        if (a == null) {}
        for (i = 0;; i = a.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length - 1)
          {
            arrayOfInt[j] = parameb.f();
            parameb.a();
            j += 1;
          }
        }
        arrayOfInt[j] = parameb.f();
        a = arrayOfInt;
        break;
      case 26: 
        int k = parameb.c(parameb.i());
        i = parameb.o();
        j = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          j += 1;
        }
        parameb.e(i);
        if (a == null) {}
        for (i = 0;; i = a.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = parameb.f();
            j += 1;
          }
        }
        a = arrayOfInt;
        parameb.d(k);
        break;
      case 32: 
        c = parameb.f();
        break;
      case 48: 
        d = parameb.g();
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if (e) {
      paramec.a(1, e);
    }
    paramec.a(2, b);
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        paramec.a(3, a[i]);
        i += 1;
      }
    }
    if (c != 0) {
      paramec.a(4, c);
    }
    if (d) {
      paramec.a(6, d);
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int j = 0;
    int k = super.b();
    int i = k;
    if (e) {
      i = k + ec.b(1, e);
    }
    k = ec.b(2, b) + i;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        j += ec.b(a[i]);
        i += 1;
      }
    }
    for (j = k + j + a.length * 1;; j = k)
    {
      i = j;
      if (c != 0) {
        i = j + ec.b(4, c);
      }
      j = i;
      if (d) {
        j = i + ec.b(6, d);
      }
      return j;
    }
  }
  
  public e c()
  {
    a = en.a;
    b = 0;
    c = 0;
    d = false;
    e = false;
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
          do
          {
            do
            {
              do
              {
                return bool1;
                bool1 = bool2;
              } while (!(paramObject instanceof e));
              paramObject = (e)paramObject;
              bool1 = bool2;
            } while (!ei.a(a, a));
            bool1 = bool2;
          } while (b != b);
          bool1 = bool2;
        } while (c != c);
        bool1 = bool2;
      } while (d != d);
      bool1 = bool2;
    } while (e != e);
    return a((ee)paramObject);
  }
  
  public int hashCode()
  {
    int j = 1231;
    int k = ei.a(a);
    int m = b;
    int n = c;
    int i;
    if (d)
    {
      i = 1231;
      if (!e) {
        break label85;
      }
    }
    for (;;)
    {
      return ((i + (((k + 527) * 31 + m) * 31 + n) * 31) * 31 + j) * 31 + d();
      i = 1237;
      break;
      label85:
      j = 1237;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */