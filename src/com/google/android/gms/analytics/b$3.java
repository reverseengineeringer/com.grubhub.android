package com.google.android.gms.analytics;

import com.google.android.gms.analytics.internal.i;

class b$3
  implements Runnable
{
  b$3(b paramb, int paramInt, i parami) {}
  
  public void run()
  {
    boolean bool = c.stopSelfResult(a);
    if (bool) {
      b.zza("Install campaign broadcast processed", Boolean.valueOf(bool));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.b.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */