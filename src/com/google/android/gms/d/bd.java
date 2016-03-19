package com.google.android.gms.d;

import android.os.SystemClock;

public final class bd
  implements bc
{
  private static bd a;
  
  public static bc c()
  {
    try
    {
      if (a == null) {
        a = new bd();
      }
      bd localbd = a;
      return localbd;
    }
    finally {}
  }
  
  public long a()
  {
    return System.currentTimeMillis();
  }
  
  public long b()
  {
    return SystemClock.elapsedRealtime();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */