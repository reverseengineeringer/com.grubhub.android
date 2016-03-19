package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager.WakeLock;
import com.google.android.gms.analytics.internal.ak;
import com.google.android.gms.analytics.internal.ap;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.r;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.common.internal.aq;

public final class a
  extends Service
{
  private static Boolean b;
  private final Handler a = new Handler();
  
  private void a()
  {
    try
    {
      synchronized (AnalyticsReceiver.a)
      {
        PowerManager.WakeLock localWakeLock = AnalyticsReceiver.b;
        if ((localWakeLock != null) && (localWakeLock.isHeld())) {
          localWakeLock.release();
        }
        return;
      }
      return;
    }
    catch (SecurityException localSecurityException) {}
  }
  
  public static boolean a(Context paramContext)
  {
    aq.a(paramContext);
    if (b != null) {
      return b.booleanValue();
    }
    boolean bool = p.a(paramContext, a.class);
    b = Boolean.valueOf(bool);
    return bool;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    v localv = v.a(this);
    i locali = localv.f();
    if (localv.e().a())
    {
      locali.zzaT("Device AnalyticsService is starting up");
      return;
    }
    locali.zzaT("Local AnalyticsService is starting up");
  }
  
  public void onDestroy()
  {
    v localv = v.a(this);
    i locali = localv.f();
    if (localv.e().a()) {
      locali.zzaT("Device AnalyticsService is shutting down");
    }
    for (;;)
    {
      super.onDestroy();
      return;
      locali.zzaT("Local AnalyticsService is shutting down");
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, final int paramInt2)
  {
    a();
    final v localv = v.a(this);
    final i locali = localv.f();
    paramIntent = paramIntent.getAction();
    if (localv.e().a()) {
      locali.zza("Device AnalyticsService called. startId, action", Integer.valueOf(paramInt2), paramIntent);
    }
    for (;;)
    {
      if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(paramIntent)) {
        localv.i().a(new ap()
        {
          public void a(Throwable paramAnonymousThrowable)
          {
            a.a(a.this).post(new Runnable()
            {
              public void run()
              {
                if (stopSelfResult(a))
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
        });
      }
      return 2;
      locali.zza("Local AnalyticsService called. startId, action", Integer.valueOf(paramInt2), paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */