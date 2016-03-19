package com.google.android.gms.d;

import java.io.IOException;

public final class f
  extends ee<f>
{
  private static volatile f[] f;
  public String a;
  public long b;
  public long c;
  public boolean d;
  public long e;
  
  public f()
  {
    c();
  }
  
  public static f[] a()
  {
    if (f == null) {}
    synchronized (ei.a)
    {
      if (f == null) {
        f = new f[0];
      }
      return f;
    }
  }
  
  public f a(eb parameb)
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
      case 16: 
        b = parameb.e();
        break;
      case 24: 
        c = parameb.e();
        break;
      case 32: 
        d = parameb.g();
        break;
      case 40: 
        e = parameb.e();
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if (!a.equals("")) {
      paramec.a(1, a);
    }
    if (b != 0L) {
      paramec.a(2, b);
    }
    if (c != 2147483647L) {
      paramec.a(3, c);
    }
    if (d) {
      paramec.a(4, d);
    }
    if (e != 0L) {
      paramec.a(5, e);
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
    if (b != 0L) {
      j = i + ec.b(2, b);
    }
    i = j;
    if (c != 2147483647L) {
      i = j + ec.b(3, c);
    }
    j = i;
    if (d) {
      j = i + ec.b(4, d);
    }
    i = j;
    if (e != 0L) {
      i = j + ec.b(5, e);
    }
    return i;
  }
  
  public f c()
  {
    a = "";
    b = 0L;
    c = 2147483647L;
    d = false;
    e = 0L;
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
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof f));
      paramObject = (f)paramObject;
      if (a != null) {
        break;
      }
      bool1 = bool2;
    } while (a != null);
    while (a.equals(a))
    {
      bool1 = bool2;
      if (b != b) {
        break;
      }
      bool1 = bool2;
      if (c != c) {
        break;
      }
      bool1 = bool2;
      if (d != d) {
        break;
      }
      bool1 = bool2;
      if (e != e) {
        break;
      }
      return a((ee)paramObject);
    }
    return false;
  }
  
  public int hashCode()
  {
    int i;
    int k;
    int m;
    if (a == null)
    {
      i = 0;
      k = (int)(b ^ b >>> 32);
      m = (int)(c ^ c >>> 32);
      if (!d) {
        break label107;
      }
    }
    label107:
    for (int j = 1231;; j = 1237)
    {
      return ((j + (((i + 527) * 31 + k) * 31 + m) * 31) * 31 + (int)(e ^ e >>> 32)) * 31 + d();
      i = a.hashCode();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */