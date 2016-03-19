package com.google.android.gms.tagmanager;

import com.google.android.gms.d.bc;

class ax
  implements cb
{
  private final long a;
  private final long b;
  private final int c;
  private double d;
  private long e;
  private final Object f = new Object();
  private final String g;
  private final bc h;
  
  public ax(int paramInt, long paramLong1, long paramLong2, String paramString, bc parambc)
  {
    c = paramInt;
    d = c;
    a = paramLong1;
    b = paramLong2;
    g = paramString;
    h = parambc;
  }
  
  public boolean a()
  {
    synchronized (f)
    {
      long l = h.a();
      if (l - e < b)
      {
        ba.b("Excessive " + g + " detected; call ignored.");
        return false;
      }
      if (d < c)
      {
        double d1 = (l - e) / a;
        if (d1 > 0.0D) {
          d = Math.min(c, d1 + d);
        }
      }
      e = l;
      if (d >= 1.0D)
      {
        d -= 1.0D;
        return true;
      }
    }
    ba.b("Excessive " + g + " detected; call ignored.");
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */