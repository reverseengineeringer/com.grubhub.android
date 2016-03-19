package com.google.android.gms.d;

import java.io.IOException;

public final class o
  extends ee<o>
{
  private static volatile o[] m;
  public int a;
  public String b;
  public o[] c;
  public o[] d;
  public o[] e;
  public String f;
  public String g;
  public long h;
  public boolean i;
  public o[] j;
  public int[] k;
  public boolean l;
  
  public o()
  {
    c();
  }
  
  public static o[] a()
  {
    if (m == null) {}
    synchronized (ei.a)
    {
      if (m == null) {
        m = new o[0];
      }
      return m;
    }
  }
  
  public o a(eb parameb)
    throws IOException
  {
    for (;;)
    {
      int n = parameb.a();
      int i1;
      Object localObject;
      int i2;
      switch (n)
      {
      default: 
        if (a(parameb, n)) {}
        break;
      case 0: 
        return this;
      case 8: 
        n = parameb.f();
        switch (n)
        {
        default: 
          break;
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
          a = n;
        }
        break;
      case 18: 
        b = parameb.h();
        break;
      case 26: 
        i1 = en.a(parameb, 26);
        if (c == null) {}
        for (n = 0;; n = c.length)
        {
          localObject = new o[i1 + n];
          i1 = n;
          if (n != 0)
          {
            System.arraycopy(c, 0, localObject, 0, n);
            i1 = n;
          }
          while (i1 < localObject.length - 1)
          {
            localObject[i1] = new o();
            parameb.a(localObject[i1]);
            parameb.a();
            i1 += 1;
          }
        }
        localObject[i1] = new o();
        parameb.a(localObject[i1]);
        c = ((o[])localObject);
        break;
      case 34: 
        i1 = en.a(parameb, 34);
        if (d == null) {}
        for (n = 0;; n = d.length)
        {
          localObject = new o[i1 + n];
          i1 = n;
          if (n != 0)
          {
            System.arraycopy(d, 0, localObject, 0, n);
            i1 = n;
          }
          while (i1 < localObject.length - 1)
          {
            localObject[i1] = new o();
            parameb.a(localObject[i1]);
            parameb.a();
            i1 += 1;
          }
        }
        localObject[i1] = new o();
        parameb.a(localObject[i1]);
        d = ((o[])localObject);
        break;
      case 42: 
        i1 = en.a(parameb, 42);
        if (e == null) {}
        for (n = 0;; n = e.length)
        {
          localObject = new o[i1 + n];
          i1 = n;
          if (n != 0)
          {
            System.arraycopy(e, 0, localObject, 0, n);
            i1 = n;
          }
          while (i1 < localObject.length - 1)
          {
            localObject[i1] = new o();
            parameb.a(localObject[i1]);
            parameb.a();
            i1 += 1;
          }
        }
        localObject[i1] = new o();
        parameb.a(localObject[i1]);
        e = ((o[])localObject);
        break;
      case 50: 
        f = parameb.h();
        break;
      case 58: 
        g = parameb.h();
        break;
      case 64: 
        h = parameb.e();
        break;
      case 72: 
        l = parameb.g();
        break;
      case 80: 
        int i3 = en.a(parameb, 80);
        localObject = new int[i3];
        i1 = 0;
        n = 0;
        if (i1 < i3)
        {
          if (i1 != 0) {
            parameb.a();
          }
          int i4 = parameb.f();
          switch (i4)
          {
          }
          for (;;)
          {
            i1 += 1;
            break;
            i2 = n + 1;
            localObject[n] = i4;
            n = i2;
          }
        }
        if (n != 0)
        {
          if (k == null) {}
          for (i1 = 0;; i1 = k.length)
          {
            if ((i1 != 0) || (n != localObject.length)) {
              break label810;
            }
            k = ((int[])localObject);
            break;
          }
          int[] arrayOfInt = new int[i1 + n];
          if (i1 != 0) {
            System.arraycopy(k, 0, arrayOfInt, 0, i1);
          }
          System.arraycopy(localObject, 0, arrayOfInt, i1, n);
          k = arrayOfInt;
        }
        break;
      case 82: 
        i2 = parameb.c(parameb.i());
        n = parameb.o();
        i1 = 0;
        while (parameb.m() > 0) {
          switch (parameb.f())
          {
          default: 
            break;
          case 1: 
          case 2: 
          case 3: 
          case 4: 
          case 5: 
          case 6: 
          case 7: 
          case 8: 
          case 9: 
          case 10: 
          case 11: 
          case 12: 
          case 13: 
          case 14: 
          case 15: 
          case 16: 
          case 17: 
            i1 += 1;
          }
        }
        if (i1 != 0)
        {
          parameb.e(n);
          if (k == null) {}
          for (n = 0;; n = k.length)
          {
            localObject = new int[i1 + n];
            i1 = n;
            if (n != 0)
            {
              System.arraycopy(k, 0, localObject, 0, n);
              i1 = n;
            }
            while (parameb.m() > 0)
            {
              n = parameb.f();
              switch (n)
              {
              default: 
                break;
              case 1: 
              case 2: 
              case 3: 
              case 4: 
              case 5: 
              case 6: 
              case 7: 
              case 8: 
              case 9: 
              case 10: 
              case 11: 
              case 12: 
              case 13: 
              case 14: 
              case 15: 
              case 16: 
              case 17: 
                localObject[i1] = n;
                i1 += 1;
              }
            }
          }
          k = ((int[])localObject);
        }
        parameb.d(i2);
        break;
      case 90: 
        i1 = en.a(parameb, 90);
        if (j == null) {}
        for (n = 0;; n = j.length)
        {
          localObject = new o[i1 + n];
          i1 = n;
          if (n != 0)
          {
            System.arraycopy(j, 0, localObject, 0, n);
            i1 = n;
          }
          while (i1 < localObject.length - 1)
          {
            localObject[i1] = new o();
            parameb.a(localObject[i1]);
            parameb.a();
            i1 += 1;
          }
        }
        localObject[i1] = new o();
        parameb.a(localObject[i1]);
        j = ((o[])localObject);
        break;
      case 96: 
        label810:
        i = parameb.g();
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    int i1 = 0;
    paramec.a(1, a);
    if (!b.equals("")) {
      paramec.a(2, b);
    }
    int n;
    o localo;
    if ((c != null) && (c.length > 0))
    {
      n = 0;
      while (n < c.length)
      {
        localo = c[n];
        if (localo != null) {
          paramec.a(3, localo);
        }
        n += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      n = 0;
      while (n < d.length)
      {
        localo = d[n];
        if (localo != null) {
          paramec.a(4, localo);
        }
        n += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      n = 0;
      while (n < e.length)
      {
        localo = e[n];
        if (localo != null) {
          paramec.a(5, localo);
        }
        n += 1;
      }
    }
    if (!f.equals("")) {
      paramec.a(6, f);
    }
    if (!g.equals("")) {
      paramec.a(7, g);
    }
    if (h != 0L) {
      paramec.a(8, h);
    }
    if (l) {
      paramec.a(9, l);
    }
    if ((k != null) && (k.length > 0))
    {
      n = 0;
      while (n < k.length)
      {
        paramec.a(10, k[n]);
        n += 1;
      }
    }
    if ((j != null) && (j.length > 0))
    {
      n = i1;
      while (n < j.length)
      {
        localo = j[n];
        if (localo != null) {
          paramec.a(11, localo);
        }
        n += 1;
      }
    }
    if (i) {
      paramec.a(12, i);
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int i3 = 0;
    int i1 = super.b() + ec.b(1, a);
    int n = i1;
    if (!b.equals("")) {
      n = i1 + ec.b(2, b);
    }
    i1 = n;
    o localo;
    int i2;
    if (c != null)
    {
      i1 = n;
      if (c.length > 0)
      {
        i1 = 0;
        while (i1 < c.length)
        {
          localo = c[i1];
          i2 = n;
          if (localo != null) {
            i2 = n + ec.c(3, localo);
          }
          i1 += 1;
          n = i2;
        }
        i1 = n;
      }
    }
    n = i1;
    if (d != null)
    {
      n = i1;
      if (d.length > 0)
      {
        n = i1;
        i1 = 0;
        while (i1 < d.length)
        {
          localo = d[i1];
          i2 = n;
          if (localo != null) {
            i2 = n + ec.c(4, localo);
          }
          i1 += 1;
          n = i2;
        }
      }
    }
    i1 = n;
    if (e != null)
    {
      i1 = n;
      if (e.length > 0)
      {
        i1 = 0;
        while (i1 < e.length)
        {
          localo = e[i1];
          i2 = n;
          if (localo != null) {
            i2 = n + ec.c(5, localo);
          }
          i1 += 1;
          n = i2;
        }
        i1 = n;
      }
    }
    n = i1;
    if (!f.equals("")) {
      n = i1 + ec.b(6, f);
    }
    i1 = n;
    if (!g.equals("")) {
      i1 = n + ec.b(7, g);
    }
    n = i1;
    if (h != 0L) {
      n = i1 + ec.b(8, h);
    }
    i1 = n;
    if (l) {
      i1 = n + ec.b(9, l);
    }
    n = i1;
    if (k != null)
    {
      n = i1;
      if (k.length > 0)
      {
        n = 0;
        i2 = 0;
        while (n < k.length)
        {
          i2 += ec.b(k[n]);
          n += 1;
        }
        n = i1 + i2 + k.length * 1;
      }
    }
    i1 = n;
    if (j != null)
    {
      i1 = n;
      if (j.length > 0)
      {
        i2 = i3;
        for (;;)
        {
          i1 = n;
          if (i2 >= j.length) {
            break;
          }
          localo = j[i2];
          i1 = n;
          if (localo != null) {
            i1 = n + ec.c(11, localo);
          }
          i2 += 1;
          n = i1;
        }
      }
    }
    n = i1;
    if (i) {
      n = i1 + ec.b(12, i);
    }
    return n;
  }
  
  public o c()
  {
    a = 1;
    b = "";
    c = a();
    d = a();
    e = a();
    f = "";
    g = "";
    h = 0L;
    i = false;
    j = a();
    k = en.a;
    l = false;
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
    label54:
    label118:
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
                  } while (!(paramObject instanceof o));
                  paramObject = (o)paramObject;
                  bool1 = bool2;
                } while (a != a);
                if (b != null) {
                  break;
                }
                bool1 = bool2;
              } while (b != null);
              bool1 = bool2;
            } while (!ei.a(c, c));
            bool1 = bool2;
          } while (!ei.a(d, d));
          bool1 = bool2;
        } while (!ei.a(e, e));
        if (f != null) {
          break label228;
        }
        bool1 = bool2;
      } while (f != null);
      if (g != null) {
        break label244;
      }
      bool1 = bool2;
    } while (g != null);
    label228:
    label244:
    while (g.equals(g))
    {
      bool1 = bool2;
      if (h != h) {
        break;
      }
      bool1 = bool2;
      if (i != i) {
        break;
      }
      bool1 = bool2;
      if (!ei.a(j, j)) {
        break;
      }
      bool1 = bool2;
      if (!ei.a(k, k)) {
        break;
      }
      bool1 = bool2;
      if (l != l) {
        break;
      }
      return a((ee)paramObject);
      if (b.equals(b)) {
        break label54;
      }
      return false;
      if (f.equals(f)) {
        break label118;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i4 = 1231;
    int i2 = 0;
    int i5 = a;
    int n;
    int i6;
    int i7;
    int i8;
    int i1;
    label58:
    label65:
    int i9;
    int i3;
    label92:
    int i10;
    int i11;
    if (b == null)
    {
      n = 0;
      i6 = ei.a(c);
      i7 = ei.a(d);
      i8 = ei.a(e);
      if (f != null) {
        break label206;
      }
      i1 = 0;
      if (g != null) {
        break label217;
      }
      i9 = (int)(h ^ h >>> 32);
      if (!i) {
        break label228;
      }
      i3 = 1231;
      i10 = ei.a(j);
      i11 = ei.a(k);
      if (!l) {
        break label236;
      }
    }
    for (;;)
    {
      return ((((i3 + (((i1 + ((((n + (i5 + 527) * 31) * 31 + i6) * 31 + i7) * 31 + i8) * 31) * 31 + i2) * 31 + i9) * 31) * 31 + i10) * 31 + i11) * 31 + i4) * 31 + d();
      n = b.hashCode();
      break;
      label206:
      i1 = f.hashCode();
      break label58;
      label217:
      i2 = g.hashCode();
      break label65;
      label228:
      i3 = 1237;
      break label92;
      label236:
      i4 = 1237;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */