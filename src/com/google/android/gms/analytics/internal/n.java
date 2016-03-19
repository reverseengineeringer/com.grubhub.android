package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bc;

class n
{
  private final bc a;
  private long b;
  
  public n(bc parambc)
  {
    aq.a(parambc);
    a = parambc;
  }
  
  public n(bc parambc, long paramLong)
  {
    aq.a(parambc);
    a = parambc;
    b = paramLong;
  }
  
  public void a()
  {
    b = a.b();
  }
  
  public boolean a(long paramLong)
  {
    if (b == 0L) {}
    while (a.b() - b > paramLong) {
      return true;
    }
    return false;
  }
  
  public void b()
  {
    b = 0L;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */