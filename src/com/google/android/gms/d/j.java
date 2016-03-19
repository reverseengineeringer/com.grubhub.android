package com.google.android.gms.d;

import java.io.IOException;

public final class j
  extends ee<j>
{
  private static volatile j[] k;
  public int[] a;
  public int[] b;
  public int[] c;
  public int[] d;
  public int[] e;
  public int[] f;
  public int[] g;
  public int[] h;
  public int[] i;
  public int[] j;
  
  public j()
  {
    c();
  }
  
  public static j[] a()
  {
    if (k == null) {}
    synchronized (ei.a)
    {
      if (k == null) {
        k = new j[0];
      }
      return k;
    }
  }
  
  public j a(eb parameb)
    throws IOException
  {
    for (;;)
    {
      int m = parameb.a();
      int n;
      int[] arrayOfInt;
      int i1;
      switch (m)
      {
      default: 
        if (a(parameb, m)) {}
        break;
      case 0: 
        return this;
      case 8: 
        n = en.a(parameb, 8);
        if (a == null) {}
        for (m = 0;; m = a.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(a, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        a = arrayOfInt;
        break;
      case 10: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (a == null) {}
        for (m = 0;; m = a.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(a, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        a = arrayOfInt;
        parameb.d(i1);
        break;
      case 16: 
        n = en.a(parameb, 16);
        if (b == null) {}
        for (m = 0;; m = b.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(b, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        b = arrayOfInt;
        break;
      case 18: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (b == null) {}
        for (m = 0;; m = b.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(b, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        b = arrayOfInt;
        parameb.d(i1);
        break;
      case 24: 
        n = en.a(parameb, 24);
        if (c == null) {}
        for (m = 0;; m = c.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(c, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        c = arrayOfInt;
        break;
      case 26: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (c == null) {}
        for (m = 0;; m = c.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(c, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        c = arrayOfInt;
        parameb.d(i1);
        break;
      case 32: 
        n = en.a(parameb, 32);
        if (d == null) {}
        for (m = 0;; m = d.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(d, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        d = arrayOfInt;
        break;
      case 34: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (d == null) {}
        for (m = 0;; m = d.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(d, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        d = arrayOfInt;
        parameb.d(i1);
        break;
      case 40: 
        n = en.a(parameb, 40);
        if (e == null) {}
        for (m = 0;; m = e.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(e, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        e = arrayOfInt;
        break;
      case 42: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (e == null) {}
        for (m = 0;; m = e.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(e, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        e = arrayOfInt;
        parameb.d(i1);
        break;
      case 48: 
        n = en.a(parameb, 48);
        if (f == null) {}
        for (m = 0;; m = f.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(f, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        f = arrayOfInt;
        break;
      case 50: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (f == null) {}
        for (m = 0;; m = f.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(f, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        f = arrayOfInt;
        parameb.d(i1);
        break;
      case 56: 
        n = en.a(parameb, 56);
        if (g == null) {}
        for (m = 0;; m = g.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(g, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        g = arrayOfInt;
        break;
      case 58: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (g == null) {}
        for (m = 0;; m = g.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(g, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        g = arrayOfInt;
        parameb.d(i1);
        break;
      case 64: 
        n = en.a(parameb, 64);
        if (h == null) {}
        for (m = 0;; m = h.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(h, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        h = arrayOfInt;
        break;
      case 66: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (h == null) {}
        for (m = 0;; m = h.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(h, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        h = arrayOfInt;
        parameb.d(i1);
        break;
      case 72: 
        n = en.a(parameb, 72);
        if (i == null) {}
        for (m = 0;; m = i.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(i, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        i = arrayOfInt;
        break;
      case 74: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (i == null) {}
        for (m = 0;; m = i.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(i, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        i = arrayOfInt;
        parameb.d(i1);
        break;
      case 80: 
        n = en.a(parameb, 80);
        if (j == null) {}
        for (m = 0;; m = j.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(j, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length - 1)
          {
            arrayOfInt[n] = parameb.f();
            parameb.a();
            n += 1;
          }
        }
        arrayOfInt[n] = parameb.f();
        j = arrayOfInt;
        break;
      case 82: 
        i1 = parameb.c(parameb.i());
        m = parameb.o();
        n = 0;
        while (parameb.m() > 0)
        {
          parameb.f();
          n += 1;
        }
        parameb.e(m);
        if (j == null) {}
        for (m = 0;; m = j.length)
        {
          arrayOfInt = new int[n + m];
          n = m;
          if (m != 0)
          {
            System.arraycopy(j, 0, arrayOfInt, 0, m);
            n = m;
          }
          while (n < arrayOfInt.length)
          {
            arrayOfInt[n] = parameb.f();
            n += 1;
          }
        }
        j = arrayOfInt;
        parameb.d(i1);
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    int n = 0;
    int m;
    if ((a != null) && (a.length > 0))
    {
      m = 0;
      while (m < a.length)
      {
        paramec.a(1, a[m]);
        m += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      m = 0;
      while (m < b.length)
      {
        paramec.a(2, b[m]);
        m += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      m = 0;
      while (m < c.length)
      {
        paramec.a(3, c[m]);
        m += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      m = 0;
      while (m < d.length)
      {
        paramec.a(4, d[m]);
        m += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      m = 0;
      while (m < e.length)
      {
        paramec.a(5, e[m]);
        m += 1;
      }
    }
    if ((f != null) && (f.length > 0))
    {
      m = 0;
      while (m < f.length)
      {
        paramec.a(6, f[m]);
        m += 1;
      }
    }
    if ((g != null) && (g.length > 0))
    {
      m = 0;
      while (m < g.length)
      {
        paramec.a(7, g[m]);
        m += 1;
      }
    }
    if ((h != null) && (h.length > 0))
    {
      m = 0;
      while (m < h.length)
      {
        paramec.a(8, h[m]);
        m += 1;
      }
    }
    if ((i != null) && (i.length > 0))
    {
      m = 0;
      while (m < i.length)
      {
        paramec.a(9, i[m]);
        m += 1;
      }
    }
    if ((j != null) && (j.length > 0))
    {
      m = n;
      while (m < j.length)
      {
        paramec.a(10, j[m]);
        m += 1;
      }
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int i2 = 0;
    int i1 = super.b();
    int m;
    if ((a != null) && (a.length > 0))
    {
      m = 0;
      n = 0;
      while (m < a.length)
      {
        n += ec.b(a[m]);
        m += 1;
      }
    }
    for (int n = i1 + n + a.length * 1;; n = i1)
    {
      m = n;
      if (b != null)
      {
        m = n;
        if (b.length > 0)
        {
          m = 0;
          i1 = 0;
          while (m < b.length)
          {
            i1 += ec.b(b[m]);
            m += 1;
          }
          m = n + i1 + b.length * 1;
        }
      }
      n = m;
      if (c != null)
      {
        n = m;
        if (c.length > 0)
        {
          n = 0;
          i1 = 0;
          while (n < c.length)
          {
            i1 += ec.b(c[n]);
            n += 1;
          }
          n = m + i1 + c.length * 1;
        }
      }
      m = n;
      if (d != null)
      {
        m = n;
        if (d.length > 0)
        {
          m = 0;
          i1 = 0;
          while (m < d.length)
          {
            i1 += ec.b(d[m]);
            m += 1;
          }
          m = n + i1 + d.length * 1;
        }
      }
      n = m;
      if (e != null)
      {
        n = m;
        if (e.length > 0)
        {
          n = 0;
          i1 = 0;
          while (n < e.length)
          {
            i1 += ec.b(e[n]);
            n += 1;
          }
          n = m + i1 + e.length * 1;
        }
      }
      m = n;
      if (f != null)
      {
        m = n;
        if (f.length > 0)
        {
          m = 0;
          i1 = 0;
          while (m < f.length)
          {
            i1 += ec.b(f[m]);
            m += 1;
          }
          m = n + i1 + f.length * 1;
        }
      }
      n = m;
      if (g != null)
      {
        n = m;
        if (g.length > 0)
        {
          n = 0;
          i1 = 0;
          while (n < g.length)
          {
            i1 += ec.b(g[n]);
            n += 1;
          }
          n = m + i1 + g.length * 1;
        }
      }
      m = n;
      if (h != null)
      {
        m = n;
        if (h.length > 0)
        {
          m = 0;
          i1 = 0;
          while (m < h.length)
          {
            i1 += ec.b(h[m]);
            m += 1;
          }
          m = n + i1 + h.length * 1;
        }
      }
      n = m;
      if (i != null)
      {
        n = m;
        if (i.length > 0)
        {
          n = 0;
          i1 = 0;
          while (n < i.length)
          {
            i1 += ec.b(i[n]);
            n += 1;
          }
          n = m + i1 + i.length * 1;
        }
      }
      m = n;
      if (j != null)
      {
        m = n;
        if (j.length > 0)
        {
          i1 = 0;
          m = i2;
          while (m < j.length)
          {
            i1 += ec.b(j[m]);
            m += 1;
          }
          m = n + i1 + j.length * 1;
        }
      }
      return m;
    }
  }
  
  public j c()
  {
    a = en.a;
    b = en.a;
    c = en.a;
    d = en.a;
    e = en.a;
    f = en.a;
    g = en.a;
    h = en.a;
    i = en.a;
    j = en.a;
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
                        } while (!(paramObject instanceof j));
                        paramObject = (j)paramObject;
                        bool1 = bool2;
                      } while (!ei.a(a, a));
                      bool1 = bool2;
                    } while (!ei.a(b, b));
                    bool1 = bool2;
                  } while (!ei.a(c, c));
                  bool1 = bool2;
                } while (!ei.a(d, d));
                bool1 = bool2;
              } while (!ei.a(e, e));
              bool1 = bool2;
            } while (!ei.a(f, f));
            bool1 = bool2;
          } while (!ei.a(g, g));
          bool1 = bool2;
        } while (!ei.a(h, h));
        bool1 = bool2;
      } while (!ei.a(i, i));
      bool1 = bool2;
    } while (!ei.a(j, j));
    return a((ee)paramObject);
  }
  
  public int hashCode()
  {
    return ((((((((((ei.a(a) + 527) * 31 + ei.a(b)) * 31 + ei.a(c)) * 31 + ei.a(d)) * 31 + ei.a(e)) * 31 + ei.a(f)) * 31 + ei.a(g)) * 31 + ei.a(h)) * 31 + ei.a(i)) * 31 + ei.a(j)) * 31 + d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */