package com.google.android.gms.d;

import java.io.IOException;

public final class k
  extends ee<k>
{
  public static final ef<o, k> a = ef.a(11, k.class, 810);
  private static final k[] i = new k[0];
  public int[] b;
  public int[] c;
  public int[] d;
  public int e;
  public int[] f;
  public int g;
  public int h;
  
  public k()
  {
    a();
  }
  
  public k a()
  {
    b = en.a;
    c = en.a;
    d = en.a;
    e = 0;
    f = en.a;
    g = 0;
    h = 0;
    r = null;
    s = -1;
    return this;
  }
  
  public k a(eb parameb)
    throws IOException
  {
    for (;;)
    {
      int j = parameb.a();
      int k;
      int[] arrayOfInt;
      int m;
      switch (j)
      {
      default: 
        if (a(parameb, j)) {}
        break;
      case 0: 
        return this;
      case 8: 
        k = en.a(parameb, 8);
        if (b == null) {}
        for (j = 0;; j = b.length)
        {
          arrayOfInt = new int[k + j];
          k = j;
          if (j != 0)
          {
            System.arraycopy(b, 0, arrayOfInt, 0, j);
            k = j;
          }
          while (k < arrayOfInt.length - 1)
          {
            arrayOfInt[k] = parameb.f();
            parameb.a();
            k += 1;
          }
        }
        arrayOfInt[k] = parameb.f();
        b = arrayOfInt;
        break;
      case 10: 
        m = parameb.c(parameb.i());
        j = parameb.o();
        k = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          k += 1;
        }
        parameb.e(j);
        if (b == null) {}
        for (j = 0;; j = b.length)
        {
          arrayOfInt = new int[k + j];
          k = j;
          if (j != 0)
          {
            System.arraycopy(b, 0, arrayOfInt, 0, j);
            k = j;
          }
          while (k < arrayOfInt.length)
          {
            arrayOfInt[k] = parameb.f();
            k += 1;
          }
        }
        b = arrayOfInt;
        parameb.d(m);
        break;
      case 16: 
        k = en.a(parameb, 16);
        if (c == null) {}
        for (j = 0;; j = c.length)
        {
          arrayOfInt = new int[k + j];
          k = j;
          if (j != 0)
          {
            System.arraycopy(c, 0, arrayOfInt, 0, j);
            k = j;
          }
          while (k < arrayOfInt.length - 1)
          {
            arrayOfInt[k] = parameb.f();
            parameb.a();
            k += 1;
          }
        }
        arrayOfInt[k] = parameb.f();
        c = arrayOfInt;
        break;
      case 18: 
        m = parameb.c(parameb.i());
        j = parameb.o();
        k = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          k += 1;
        }
        parameb.e(j);
        if (c == null) {}
        for (j = 0;; j = c.length)
        {
          arrayOfInt = new int[k + j];
          k = j;
          if (j != 0)
          {
            System.arraycopy(c, 0, arrayOfInt, 0, j);
            k = j;
          }
          while (k < arrayOfInt.length)
          {
            arrayOfInt[k] = parameb.f();
            k += 1;
          }
        }
        c = arrayOfInt;
        parameb.d(m);
        break;
      case 24: 
        k = en.a(parameb, 24);
        if (d == null) {}
        for (j = 0;; j = d.length)
        {
          arrayOfInt = new int[k + j];
          k = j;
          if (j != 0)
          {
            System.arraycopy(d, 0, arrayOfInt, 0, j);
            k = j;
          }
          while (k < arrayOfInt.length - 1)
          {
            arrayOfInt[k] = parameb.f();
            parameb.a();
            k += 1;
          }
        }
        arrayOfInt[k] = parameb.f();
        d = arrayOfInt;
        break;
      case 26: 
        m = parameb.c(parameb.i());
        j = parameb.o();
        k = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          k += 1;
        }
        parameb.e(j);
        if (d == null) {}
        for (j = 0;; j = d.length)
        {
          arrayOfInt = new int[k + j];
          k = j;
          if (j != 0)
          {
            System.arraycopy(d, 0, arrayOfInt, 0, j);
            k = j;
          }
          while (k < arrayOfInt.length)
          {
            arrayOfInt[k] = parameb.f();
            k += 1;
          }
        }
        d = arrayOfInt;
        parameb.d(m);
        break;
      case 32: 
        e = parameb.f();
        break;
      case 40: 
        k = en.a(parameb, 40);
        if (f == null) {}
        for (j = 0;; j = f.length)
        {
          arrayOfInt = new int[k + j];
          k = j;
          if (j != 0)
          {
            System.arraycopy(f, 0, arrayOfInt, 0, j);
            k = j;
          }
          while (k < arrayOfInt.length - 1)
          {
            arrayOfInt[k] = parameb.f();
            parameb.a();
            k += 1;
          }
        }
        arrayOfInt[k] = parameb.f();
        f = arrayOfInt;
        break;
      case 42: 
        m = parameb.c(parameb.i());
        j = parameb.o();
        k = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          k += 1;
        }
        parameb.e(j);
        if (f == null) {}
        for (j = 0;; j = f.length)
        {
          arrayOfInt = new int[k + j];
          k = j;
          if (j != 0)
          {
            System.arraycopy(f, 0, arrayOfInt, 0, j);
            k = j;
          }
          while (k < arrayOfInt.length)
          {
            arrayOfInt[k] = parameb.f();
            k += 1;
          }
        }
        f = arrayOfInt;
        parameb.d(m);
        break;
      case 48: 
        g = parameb.f();
        break;
      case 56: 
        h = parameb.f();
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    int k = 0;
    int j;
    if ((b != null) && (b.length > 0))
    {
      j = 0;
      while (j < b.length)
      {
        paramec.a(1, b[j]);
        j += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      j = 0;
      while (j < c.length)
      {
        paramec.a(2, c[j]);
        j += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      j = 0;
      while (j < d.length)
      {
        paramec.a(3, d[j]);
        j += 1;
      }
    }
    if (e != 0) {
      paramec.a(4, e);
    }
    if ((f != null) && (f.length > 0))
    {
      j = k;
      while (j < f.length)
      {
        paramec.a(5, f[j]);
        j += 1;
      }
    }
    if (g != 0) {
      paramec.a(6, g);
    }
    if (h != 0) {
      paramec.a(7, h);
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int n = 0;
    int m = super.b();
    int j;
    if ((b != null) && (b.length > 0))
    {
      j = 0;
      k = 0;
      while (j < b.length)
      {
        k += ec.b(b[j]);
        j += 1;
      }
    }
    for (int k = m + k + b.length * 1;; k = m)
    {
      j = k;
      if (c != null)
      {
        j = k;
        if (c.length > 0)
        {
          j = 0;
          m = 0;
          while (j < c.length)
          {
            m += ec.b(c[j]);
            j += 1;
          }
          j = k + m + c.length * 1;
        }
      }
      k = j;
      if (d != null)
      {
        k = j;
        if (d.length > 0)
        {
          k = 0;
          m = 0;
          while (k < d.length)
          {
            m += ec.b(d[k]);
            k += 1;
          }
          k = j + m + d.length * 1;
        }
      }
      j = k;
      if (e != 0) {
        j = k + ec.b(4, e);
      }
      k = j;
      if (f != null)
      {
        k = j;
        if (f.length > 0)
        {
          m = 0;
          k = n;
          while (k < f.length)
          {
            m += ec.b(f[k]);
            k += 1;
          }
          k = j + m + f.length * 1;
        }
      }
      j = k;
      if (g != 0) {
        j = k + ec.b(6, g);
      }
      k = j;
      if (h != 0) {
        k = j + ec.b(7, h);
      }
      return k;
    }
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
                do
                {
                  do
                  {
                    return bool1;
                    bool1 = bool2;
                  } while (!(paramObject instanceof k));
                  paramObject = (k)paramObject;
                  bool1 = bool2;
                } while (!ei.a(b, b));
                bool1 = bool2;
              } while (!ei.a(c, c));
              bool1 = bool2;
            } while (!ei.a(d, d));
            bool1 = bool2;
          } while (e != e);
          bool1 = bool2;
        } while (!ei.a(f, f));
        bool1 = bool2;
      } while (g != g);
      bool1 = bool2;
    } while (h != h);
    return a((ee)paramObject);
  }
  
  public int hashCode()
  {
    return (((((((ei.a(b) + 527) * 31 + ei.a(c)) * 31 + ei.a(d)) * 31 + e) * 31 + ei.a(f)) * 31 + g) * 31 + h) * 31 + d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */