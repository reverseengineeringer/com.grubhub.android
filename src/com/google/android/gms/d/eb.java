package com.google.android.gms.d;

import java.io.IOException;

public final class eb
{
  private final byte[] a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g = Integer.MAX_VALUE;
  private int h;
  private int i = 64;
  private int j = 67108864;
  
  private eb(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    b = paramInt1;
    c = (paramInt1 + paramInt2);
    e = paramInt1;
  }
  
  public static eb a(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static eb a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new eb(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private void q()
  {
    c += d;
    int k = c;
    if (k > g)
    {
      d = (k - g);
      c -= d;
      return;
    }
    d = 0;
  }
  
  public int a()
    throws IOException
  {
    if (n())
    {
      f = 0;
      return 0;
    }
    f = i();
    if (f == 0) {
      throw ej.d();
    }
    return f;
  }
  
  public void a(int paramInt)
    throws ej
  {
    if (f != paramInt) {
      throw ej.e();
    }
  }
  
  public void a(ek paramek)
    throws IOException
  {
    int k = i();
    if (h >= i) {
      throw ej.g();
    }
    k = c(k);
    h += 1;
    paramek.b(this);
    a(0);
    h -= 1;
    d(k);
  }
  
  public void a(ek paramek, int paramInt)
    throws IOException
  {
    if (h >= i) {
      throw ej.g();
    }
    h += 1;
    paramek.b(this);
    a(en.a(paramInt, 4));
    h -= 1;
  }
  
  public byte[] a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return en.h;
    }
    byte[] arrayOfByte = new byte[paramInt2];
    int k = b;
    System.arraycopy(a, k + paramInt1, arrayOfByte, 0, paramInt2);
    return arrayOfByte;
  }
  
  public void b()
    throws IOException
  {
    int k;
    do
    {
      k = a();
    } while ((k != 0) && (b(k)));
  }
  
  public boolean b(int paramInt)
    throws IOException
  {
    switch (en.a(paramInt))
    {
    default: 
      throw ej.f();
    case 0: 
      f();
      return true;
    case 1: 
      l();
      return true;
    case 2: 
      g(i());
      return true;
    case 3: 
      b();
      a(en.a(en.b(paramInt), 4));
      return true;
    case 4: 
      return false;
    }
    k();
    return true;
  }
  
  public double c()
    throws IOException
  {
    return Double.longBitsToDouble(l());
  }
  
  public int c(int paramInt)
    throws ej
  {
    if (paramInt < 0) {
      throw ej.b();
    }
    paramInt = e + paramInt;
    int k = g;
    if (paramInt > k) {
      throw ej.a();
    }
    g = paramInt;
    q();
    return k;
  }
  
  public float d()
    throws IOException
  {
    return Float.intBitsToFloat(k());
  }
  
  public void d(int paramInt)
  {
    g = paramInt;
    q();
  }
  
  public long e()
    throws IOException
  {
    return j();
  }
  
  public void e(int paramInt)
  {
    if (paramInt > e - b) {
      throw new IllegalArgumentException("Position " + paramInt + " is beyond current " + (e - b));
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("Bad position " + paramInt);
    }
    e = (b + paramInt);
  }
  
  public int f()
    throws IOException
  {
    return i();
  }
  
  public byte[] f(int paramInt)
    throws IOException
  {
    if (paramInt < 0) {
      throw ej.b();
    }
    if (e + paramInt > g)
    {
      g(g - e);
      throw ej.a();
    }
    if (paramInt <= c - e)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(a, e, arrayOfByte, 0, paramInt);
      e += paramInt;
      return arrayOfByte;
    }
    throw ej.a();
  }
  
  public void g(int paramInt)
    throws IOException
  {
    if (paramInt < 0) {
      throw ej.b();
    }
    if (e + paramInt > g)
    {
      g(g - e);
      throw ej.a();
    }
    if (paramInt <= c - e)
    {
      e += paramInt;
      return;
    }
    throw ej.a();
  }
  
  public boolean g()
    throws IOException
  {
    return i() != 0;
  }
  
  public String h()
    throws IOException
  {
    int k = i();
    if ((k <= c - e) && (k > 0))
    {
      String str = new String(a, e, k, "UTF-8");
      e = (k + e);
      return str;
    }
    return new String(f(k), "UTF-8");
  }
  
  public int i()
    throws IOException
  {
    int k = p();
    if (k >= 0) {}
    int n;
    do
    {
      return k;
      k &= 0x7F;
      m = p();
      if (m >= 0) {
        return k | m << 7;
      }
      k |= (m & 0x7F) << 7;
      m = p();
      if (m >= 0) {
        return k | m << 14;
      }
      k |= (m & 0x7F) << 14;
      n = p();
      if (n >= 0) {
        return k | n << 21;
      }
      m = p();
      n = k | (n & 0x7F) << 21 | m << 28;
      k = n;
    } while (m >= 0);
    int m = 0;
    for (;;)
    {
      if (m >= 5) {
        break label133;
      }
      k = n;
      if (p() >= 0) {
        break;
      }
      m += 1;
    }
    label133:
    throw ej.c();
  }
  
  public long j()
    throws IOException
  {
    int k = 0;
    long l = 0L;
    while (k < 64)
    {
      int m = p();
      l |= (m & 0x7F) << k;
      if ((m & 0x80) == 0) {
        return l;
      }
      k += 7;
    }
    throw ej.c();
  }
  
  public int k()
    throws IOException
  {
    return p() & 0xFF | (p() & 0xFF) << 8 | (p() & 0xFF) << 16 | (p() & 0xFF) << 24;
  }
  
  public long l()
    throws IOException
  {
    int k = p();
    int m = p();
    int n = p();
    int i1 = p();
    int i2 = p();
    int i3 = p();
    int i4 = p();
    int i5 = p();
    long l = k;
    return (m & 0xFF) << 8 | l & 0xFF | (n & 0xFF) << 16 | (i1 & 0xFF) << 24 | (i2 & 0xFF) << 32 | (i3 & 0xFF) << 40 | (i4 & 0xFF) << 48 | (i5 & 0xFF) << 56;
  }
  
  public int m()
  {
    if (g == Integer.MAX_VALUE) {
      return -1;
    }
    int k = e;
    return g - k;
  }
  
  public boolean n()
  {
    return e == c;
  }
  
  public int o()
  {
    return e - b;
  }
  
  public byte p()
    throws IOException
  {
    if (e == c) {
      throw ej.a();
    }
    byte[] arrayOfByte = a;
    int k = e;
    e = (k + 1);
    return arrayOfByte[k];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */