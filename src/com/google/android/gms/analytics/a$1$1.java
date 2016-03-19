package com.google.android.gms.analytics;

import com.google.android.gms.analytics.internal.ak;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.v;

class a$1$1
  implements Runnable
{
  a$1$1(a.1 param1) {}
  
  public void run()
  {
    if (a.d.stopSelfResult(a.a))
    {
      if (a.b.e().a()) {
        a.c.zzaT("Device AnalyticsService processed last dispatch request");
      }
    }
    else {
      return;
    }
    a.c.zzaT("Local AnalyticsService processed last dispatch request");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.a.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */