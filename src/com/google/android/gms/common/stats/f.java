package com.google.android.gms.common.stats;

import android.os.SystemClock;
import android.support.v4.e.l;
import android.util.Log;

public class f
{
  private final long a;
  private final int b;
  private final l<String, Long> c;
  
  public f()
  {
    a = 60000L;
    b = 10;
    c = new l(10);
  }
  
  public f(int paramInt, long paramLong)
  {
    a = paramLong;
    b = paramInt;
    c = new l();
  }
  
  private void a(long paramLong1, long paramLong2)
  {
    int i = c.size() - 1;
    while (i >= 0)
    {
      if (paramLong2 - ((Long)c.c(i)).longValue() > paramLong1) {
        c.d(i);
      }
      i -= 1;
    }
  }
  
  public Long a(String paramString)
  {
    long l2 = SystemClock.elapsedRealtime();
    long l1 = a;
    try
    {
      while (c.size() >= b)
      {
        a(l1, l2);
        l1 /= 2L;
        Log.w("ConnectionTracker", "The max capacity " + b + " is not enough. Current durationThreshold is: " + l1);
      }
      paramString = (Long)c.put(paramString, Long.valueOf(l2));
    }
    finally {}
    return paramString;
  }
  
  public boolean b(String paramString)
  {
    for (;;)
    {
      try
      {
        if (c.remove(paramString) != null)
        {
          bool = true;
          return bool;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.stats.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */