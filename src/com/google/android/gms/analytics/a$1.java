package com.google.android.gms.analytics;

import android.os.Handler;
import com.google.android.gms.analytics.internal.ak;
import com.google.android.gms.analytics.internal.ap;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.v;

class a$1
  implements ap
{
  a$1(a parama, int paramInt, v paramv, i parami) {}
  
  public void a(Throwable paramThrowable)
  {
    a.a(d).post(new Runnable()
    {
      public void run()
      {
        if (d.stopSelfResult(a))
        {
          if (b.e().a()) {
            c.zzaT("Device AnalyticsService processed last dispatch request");
          }
        }
        else {
          return;
        }
        c.zzaT("Local AnalyticsService processed last dispatch request");
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */