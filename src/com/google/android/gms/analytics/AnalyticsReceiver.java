package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.google.android.gms.analytics.internal.ak;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.common.internal.aq;

public final class AnalyticsReceiver
  extends BroadcastReceiver
{
  static Object a = new Object();
  static PowerManager.WakeLock b;
  static Boolean c;
  
  public static boolean a(Context paramContext)
  {
    aq.a(paramContext);
    if (c != null) {
      return c.booleanValue();
    }
    boolean bool = p.a(paramContext, AnalyticsReceiver.class, false);
    c = Boolean.valueOf(bool);
    return bool;
  }
  
  public void onReceive(Context paramContext, Intent arg2)
  {
    Object localObject = v.a(paramContext);
    locali = ((v)localObject).f();
    ??? = ???.getAction();
    if (((v)localObject).e().a()) {
      locali.zza("Device AnalyticsReceiver got", ???);
    }
    for (;;)
    {
      boolean bool;
      if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(???))
      {
        bool = a.a(paramContext);
        localObject = new Intent(paramContext, a.class);
        ((Intent)localObject).setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
      }
      synchronized (a)
      {
        paramContext.startService((Intent)localObject);
        if (!bool)
        {
          return;
          locali.zza("Local AnalyticsReceiver got", ???);
          continue;
        }
        try
        {
          paramContext = (PowerManager)paramContext.getSystemService("power");
          if (b == null)
          {
            b = paramContext.newWakeLock(1, "Analytics WakeLock");
            b.setReferenceCounted(false);
          }
          b.acquire(1000L);
        }
        catch (SecurityException paramContext)
        {
          for (;;)
          {
            locali.zzaW("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
          }
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.AnalyticsReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */