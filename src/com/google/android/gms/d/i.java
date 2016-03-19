package com.google.android.gms.d;

import java.io.IOException;

public final class i
  extends ee<i>
{
  public String[] a;
  public String[] b;
  public o[] c;
  public h[] d;
  public e[] e;
  public e[] f;
  public e[] g;
  public j[] h;
  public String i;
  public String j;
  public String k;
  public String l;
  public d m;
  public float n;
  public boolean o;
  public String[] p;
  public int q;
  
  public i()
  {
    a();
  }
  
  public static i a(byte[] paramArrayOfByte)
    throws ej
  {
    return (i)ek.a(new i(), paramArrayOfByte);
  }
  
  public i a()
  {
    a = en.f;
    b = en.f;
    c = o.a();
    d = h.a();
    e = e.a();
    f = e.a();
    g = e.a();
    h = j.a();
    i = "";
    j = "";
    k = "0";
    l = "";
    m = null;
    n = 0.0F;
    o = false;
    p = en.f;
    q = 0;
    r = null;
    s = -1;
    return this;
  }
  
  public i a(eb parameb)
    throws IOException
  {
    for (;;)
    {
      int i1 = parameb.a();
      int i2;
      Object localObject;
      switch (i1)
      {
      default: 
        if (a(parameb, i1)) {}
        break;
      case 0: 
        return this;
      case 10: 
        i2 = en.a(parameb, 10);
        if (b == null) {}
        for (i1 = 0;; i1 = b.length)
        {
          localObject = new String[i2 + i1];
          i2 = i1;
          if (i1 != 0)
          {
            System.arraycopy(b, 0, localObject, 0, i1);
            i2 = i1;
          }
          while (i2 < localObject.length - 1)
          {
            localObject[i2] = parameb.h();
            parameb.a();
            i2 += 1;
          }
        }
        localObject[i2] = parameb.h();
        b = ((String[])localObject);
        break;
      case 18: 
        i2 = en.a(parameb, 18);
        if (c == null) {}
        for (i1 = 0;; i1 = c.length)
        {
          localObject = new o[i2 + i1];
          i2 = i1;
          if (i1 != 0)
          {
            System.arraycopy(c, 0, localObject, 0, i1);
            i2 = i1;
          }
          while (i2 < localObject.length - 1)
          {
            localObject[i2] = new o();
            parameb.a(localObject[i2]);
            parameb.a();
            i2 += 1;
          }
        }
        localObject[i2] = new o();
        parameb.a(localObject[i2]);
        c = ((o[])localObject);
        break;
      case 26: 
        i2 = en.a(parameb, 26);
        if (d == null) {}
        for (i1 = 0;; i1 = d.length)
        {
          localObject = new h[i2 + i1];
          i2 = i1;
          if (i1 != 0)
          {
            System.arraycopy(d, 0, localObject, 0, i1);
            i2 = i1;
          }
          while (i2 < localObject.length - 1)
          {
            localObject[i2] = new h();
            parameb.a(localObject[i2]);
            parameb.a();
            i2 += 1;
          }
        }
        localObject[i2] = new h();
        parameb.a(localObject[i2]);
        d = ((h[])localObject);
        break;
      case 34: 
        i2 = en.a(parameb, 34);
        if (e == null) {}
        for (i1 = 0;; i1 = e.length)
        {
          localObject = new e[i2 + i1];
          i2 = i1;
          if (i1 != 0)
          {
            System.arraycopy(e, 0, localObject, 0, i1);
            i2 = i1;
          }
          while (i2 < localObject.length - 1)
          {
            localObject[i2] = new e();
            parameb.a(localObject[i2]);
            parameb.a();
            i2 += 1;
          }
        }
        localObject[i2] = new e();
        parameb.a(localObject[i2]);
        e = ((e[])localObject);
        break;
      case 42: 
        i2 = en.a(parameb, 42);
        if (f == null) {}
        for (i1 = 0;; i1 = f.length)
        {
          localObject = new e[i2 + i1];
          i2 = i1;
          if (i1 != 0)
          {
            System.arraycopy(f, 0, localObject, 0, i1);
            i2 = i1;
          }
          while (i2 < localObject.length - 1)
          {
            localObject[i2] = new e();
            parameb.a(localObject[i2]);
            parameb.a();
            i2 += 1;
          }
        }
        localObject[i2] = new e();
        parameb.a(localObject[i2]);
        f = ((e[])localObject);
        break;
      case 50: 
        i2 = en.a(parameb, 50);
        if (g == null) {}
        for (i1 = 0;; i1 = g.length)
        {
          localObject = new e[i2 + i1];
          i2 = i1;
          if (i1 != 0)
          {
            System.arraycopy(g, 0, localObject, 0, i1);
            i2 = i1;
          }
          while (i2 < localObject.length - 1)
          {
            localObject[i2] = new e();
            parameb.a(localObject[i2]);
            parameb.a();
            i2 += 1;
          }
        }
        localObject[i2] = new e();
        parameb.a(localObject[i2]);
        g = ((e[])localObject);
        break;
      case 58: 
        i2 = en.a(parameb, 58);
        if (h == null) {}
        for (i1 = 0;; i1 = h.length)
        {
          localObject = new j[i2 + i1];
          i2 = i1;
          if (i1 != 0)
          {
            System.arraycopy(h, 0, localObject, 0, i1);
            i2 = i1;
          }
          while (i2 < localObject.length - 1)
          {
            localObject[i2] = new j();
            parameb.a(localObject[i2]);
            parameb.a();
            i2 += 1;
          }
        }
        localObject[i2] = new j();
        parameb.a(localObject[i2]);
        h = ((j[])localObject);
        break;
      case 74: 
        i = parameb.h();
        break;
      case 82: 
        j = parameb.h();
        break;
      case 98: 
        k = parameb.h();
        break;
      case 106: 
        l = parameb.h();
        break;
      case 114: 
        if (m == null) {
          m = new d();
        }
        parameb.a(m);
        break;
      case 125: 
        n = parameb.d();
        break;
      case 130: 
        i2 = en.a(parameb, 130);
        if (p == null) {}
        for (i1 = 0;; i1 = p.length)
        {
          localObject = new String[i2 + i1];
          i2 = i1;
          if (i1 != 0)
          {
            System.arraycopy(p, 0, localObject, 0, i1);
            i2 = i1;
          }
          while (i2 < localObject.length - 1)
          {
            localObject[i2] = parameb.h();
            parameb.a();
            i2 += 1;
          }
        }
        localObject[i2] = parameb.h();
        p = ((String[])localObject);
        break;
      case 136: 
        q = parameb.f();
        break;
      case 144: 
        o = parameb.g();
        break;
      case 154: 
        i2 = en.a(parameb, 154);
        if (a == null) {}
        for (i1 = 0;; i1 = a.length)
        {
          localObject = new String[i2 + i1];
          i2 = i1;
          if (i1 != 0)
          {
            System.arraycopy(a, 0, localObject, 0, i1);
            i2 = i1;
          }
          while (i2 < localObject.length - 1)
          {
            localObject[i2] = parameb.h();
            parameb.a();
            i2 += 1;
          }
        }
        localObject[i2] = parameb.h();
        a = ((String[])localObject);
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    int i2 = 0;
    int i1;
    Object localObject;
    if ((b != null) && (b.length > 0))
    {
      i1 = 0;
      while (i1 < b.length)
      {
        localObject = b[i1];
        if (localObject != null) {
          paramec.a(1, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i1 = 0;
      while (i1 < c.length)
      {
        localObject = c[i1];
        if (localObject != null) {
          paramec.a(2, (ek)localObject);
        }
        i1 += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      i1 = 0;
      while (i1 < d.length)
      {
        localObject = d[i1];
        if (localObject != null) {
          paramec.a(3, (ek)localObject);
        }
        i1 += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i1 = 0;
      while (i1 < e.length)
      {
        localObject = e[i1];
        if (localObject != null) {
          paramec.a(4, (ek)localObject);
        }
        i1 += 1;
      }
    }
    if ((f != null) && (f.length > 0))
    {
      i1 = 0;
      while (i1 < f.length)
      {
        localObject = f[i1];
        if (localObject != null) {
          paramec.a(5, (ek)localObject);
        }
        i1 += 1;
      }
    }
    if ((g != null) && (g.length > 0))
    {
      i1 = 0;
      while (i1 < g.length)
      {
        localObject = g[i1];
        if (localObject != null) {
          paramec.a(6, (ek)localObject);
        }
        i1 += 1;
      }
    }
    if ((h != null) && (h.length > 0))
    {
      i1 = 0;
      while (i1 < h.length)
      {
        localObject = h[i1];
        if (localObject != null) {
          paramec.a(7, (ek)localObject);
        }
        i1 += 1;
      }
    }
    if (!i.equals("")) {
      paramec.a(9, i);
    }
    if (!j.equals("")) {
      paramec.a(10, j);
    }
    if (!k.equals("0")) {
      paramec.a(12, k);
    }
    if (!l.equals("")) {
      paramec.a(13, l);
    }
    if (m != null) {
      paramec.a(14, m);
    }
    if (Float.floatToIntBits(n) != Float.floatToIntBits(0.0F)) {
      paramec.a(15, n);
    }
    if ((p != null) && (p.length > 0))
    {
      i1 = 0;
      while (i1 < p.length)
      {
        localObject = p[i1];
        if (localObject != null) {
          paramec.a(16, (String)localObject);
        }
        i1 += 1;
      }
    }
    if (q != 0) {
      paramec.a(17, q);
    }
    if (o) {
      paramec.a(18, o);
    }
    if ((a != null) && (a.length > 0))
    {
      i1 = i2;
      while (i1 < a.length)
      {
        localObject = a[i1];
        if (localObject != null) {
          paramec.a(19, (String)localObject);
        }
        i1 += 1;
      }
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i6 = super.b();
    int i1;
    int i3;
    Object localObject;
    int i5;
    int i4;
    if ((b != null) && (b.length > 0))
    {
      i1 = 0;
      i2 = 0;
      for (i3 = 0; i1 < b.length; i3 = i4)
      {
        localObject = b[i1];
        i5 = i2;
        i4 = i3;
        if (localObject != null)
        {
          i4 = i3 + 1;
          i5 = i2 + ec.b((String)localObject);
        }
        i1 += 1;
        i2 = i5;
      }
    }
    for (int i2 = i6 + i2 + i3 * 1;; i2 = i6)
    {
      i1 = i2;
      if (c != null)
      {
        i1 = i2;
        if (c.length > 0)
        {
          i1 = i2;
          i2 = 0;
          while (i2 < c.length)
          {
            localObject = c[i2];
            i3 = i1;
            if (localObject != null) {
              i3 = i1 + ec.c(2, (ek)localObject);
            }
            i2 += 1;
            i1 = i3;
          }
        }
      }
      i2 = i1;
      if (d != null)
      {
        i2 = i1;
        if (d.length > 0)
        {
          i2 = 0;
          while (i2 < d.length)
          {
            localObject = d[i2];
            i3 = i1;
            if (localObject != null) {
              i3 = i1 + ec.c(3, (ek)localObject);
            }
            i2 += 1;
            i1 = i3;
          }
          i2 = i1;
        }
      }
      i1 = i2;
      if (e != null)
      {
        i1 = i2;
        if (e.length > 0)
        {
          i1 = i2;
          i2 = 0;
          while (i2 < e.length)
          {
            localObject = e[i2];
            i3 = i1;
            if (localObject != null) {
              i3 = i1 + ec.c(4, (ek)localObject);
            }
            i2 += 1;
            i1 = i3;
          }
        }
      }
      i2 = i1;
      if (f != null)
      {
        i2 = i1;
        if (f.length > 0)
        {
          i2 = 0;
          while (i2 < f.length)
          {
            localObject = f[i2];
            i3 = i1;
            if (localObject != null) {
              i3 = i1 + ec.c(5, (ek)localObject);
            }
            i2 += 1;
            i1 = i3;
          }
          i2 = i1;
        }
      }
      i1 = i2;
      if (g != null)
      {
        i1 = i2;
        if (g.length > 0)
        {
          i1 = i2;
          i2 = 0;
          while (i2 < g.length)
          {
            localObject = g[i2];
            i3 = i1;
            if (localObject != null) {
              i3 = i1 + ec.c(6, (ek)localObject);
            }
            i2 += 1;
            i1 = i3;
          }
        }
      }
      i2 = i1;
      if (h != null)
      {
        i2 = i1;
        if (h.length > 0)
        {
          i2 = 0;
          while (i2 < h.length)
          {
            localObject = h[i2];
            i3 = i1;
            if (localObject != null) {
              i3 = i1 + ec.c(7, (ek)localObject);
            }
            i2 += 1;
            i1 = i3;
          }
          i2 = i1;
        }
      }
      i1 = i2;
      if (!i.equals("")) {
        i1 = i2 + ec.b(9, i);
      }
      i2 = i1;
      if (!j.equals("")) {
        i2 = i1 + ec.b(10, j);
      }
      i1 = i2;
      if (!k.equals("0")) {
        i1 = i2 + ec.b(12, k);
      }
      i2 = i1;
      if (!l.equals("")) {
        i2 = i1 + ec.b(13, l);
      }
      i3 = i2;
      if (m != null) {
        i3 = i2 + ec.c(14, m);
      }
      i1 = i3;
      if (Float.floatToIntBits(n) != Float.floatToIntBits(0.0F)) {
        i1 = i3 + ec.b(15, n);
      }
      i2 = i1;
      if (p != null)
      {
        i2 = i1;
        if (p.length > 0)
        {
          i2 = 0;
          i3 = 0;
          for (i4 = 0; i2 < p.length; i4 = i5)
          {
            localObject = p[i2];
            i6 = i3;
            i5 = i4;
            if (localObject != null)
            {
              i5 = i4 + 1;
              i6 = i3 + ec.b((String)localObject);
            }
            i2 += 1;
            i3 = i6;
          }
          i2 = i1 + i3 + i4 * 2;
        }
      }
      i3 = i2;
      if (q != 0) {
        i3 = i2 + ec.b(17, q);
      }
      i1 = i3;
      if (o) {
        i1 = i3 + ec.b(18, o);
      }
      i2 = i1;
      if (a != null)
      {
        i2 = i1;
        if (a.length > 0)
        {
          i3 = 0;
          i4 = 0;
          i2 = i7;
          while (i2 < a.length)
          {
            localObject = a[i2];
            i6 = i3;
            i5 = i4;
            if (localObject != null)
            {
              i5 = i4 + 1;
              i6 = i3 + ec.b((String)localObject);
            }
            i2 += 1;
            i3 = i6;
            i4 = i5;
          }
          i2 = i1 + i3 + i4 * 2;
        }
      }
      return i2;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    label169:
    label185:
    label201:
    label217:
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
                          do
                          {
                            do
                            {
                              do
                              {
                                return bool1;
                                bool1 = bool2;
                              } while (!(paramObject instanceof i));
                              paramObject = (i)paramObject;
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
              if (i != null) {
                break;
              }
              bool1 = bool2;
            } while (i != null);
            if (j != null) {
              break label316;
            }
            bool1 = bool2;
          } while (j != null);
          if (k != null) {
            break label332;
          }
          bool1 = bool2;
        } while (k != null);
        if (l != null) {
          break label348;
        }
        bool1 = bool2;
      } while (l != null);
      if (m != null) {
        break label364;
      }
      bool1 = bool2;
    } while (m != null);
    label316:
    label332:
    label348:
    label364:
    while (m.equals(m))
    {
      bool1 = bool2;
      if (Float.floatToIntBits(n) != Float.floatToIntBits(n)) {
        break;
      }
      bool1 = bool2;
      if (o != o) {
        break;
      }
      bool1 = bool2;
      if (!ei.a(p, p)) {
        break;
      }
      bool1 = bool2;
      if (q != q) {
        break;
      }
      return a((ee)paramObject);
      if (i.equals(i)) {
        break label169;
      }
      return false;
      if (j.equals(j)) {
        break label185;
      }
      return false;
      if (k.equals(k)) {
        break label201;
      }
      return false;
      if (l.equals(l)) {
        break label217;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i5 = 0;
    int i7 = ei.a(a);
    int i8 = ei.a(b);
    int i9 = ei.a(c);
    int i10 = ei.a(d);
    int i11 = ei.a(e);
    int i12 = ei.a(f);
    int i13 = ei.a(g);
    int i14 = ei.a(h);
    int i1;
    int i2;
    label93:
    int i3;
    label102:
    int i4;
    label112:
    label119:
    int i15;
    if (i == null)
    {
      i1 = 0;
      if (j != null) {
        break label266;
      }
      i2 = 0;
      if (k != null) {
        break label277;
      }
      i3 = 0;
      if (l != null) {
        break label288;
      }
      i4 = 0;
      if (m != null) {
        break label300;
      }
      i15 = Float.floatToIntBits(n);
      if (!o) {
        break label312;
      }
    }
    label266:
    label277:
    label288:
    label300:
    label312:
    for (int i6 = 1231;; i6 = 1237)
    {
      return (((i6 + (((i4 + (i3 + (i2 + (i1 + ((((((((i7 + 527) * 31 + i8) * 31 + i9) * 31 + i10) * 31 + i11) * 31 + i12) * 31 + i13) * 31 + i14) * 31) * 31) * 31) * 31) * 31 + i5) * 31 + i15) * 31) * 31 + ei.a(p)) * 31 + q) * 31 + d();
      i1 = i.hashCode();
      break;
      i2 = j.hashCode();
      break label93;
      i3 = k.hashCode();
      break label102;
      i4 = l.hashCode();
      break label112;
      i5 = m.hashCode();
      break label119;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */