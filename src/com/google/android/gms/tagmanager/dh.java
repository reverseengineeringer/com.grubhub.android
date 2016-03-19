package com.google.android.gms.tagmanager;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Process;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class dh
  implements Runnable
{
  private final String b;
  private final String c;
  private final long d;
  private final long e;
  private final long f;
  private long g;
  
  dh(dg paramdg, String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    b = paramString1;
    c = paramString2;
    d = paramLong1;
    e = paramLong2;
    f = System.currentTimeMillis();
  }
  
  protected boolean a()
  {
    if (dg.d(a)) {
      return dg.e(a);
    }
    Object localObject = (ActivityManager)dg.f(a).getSystemService("activity");
    KeyguardManager localKeyguardManager = (KeyguardManager)dg.f(a).getSystemService("keyguard");
    PowerManager localPowerManager = (PowerManager)dg.f(a).getSystemService("power");
    localObject = ((ActivityManager)localObject).getRunningAppProcesses().iterator();
    while (((Iterator)localObject).hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
      if ((Process.myPid() == pid) && (importance == 100) && (!localKeyguardManager.inKeyguardRestrictedInputMode()) && (localPowerManager.isScreenOn())) {
        return true;
      }
    }
    return false;
  }
  
  public void run()
  {
    if ((e > 0L) && (g >= e))
    {
      if (!"0".equals(c)) {
        dg.a(a).remove(c);
      }
      return;
    }
    g += 1L;
    if (a())
    {
      long l = System.currentTimeMillis();
      dg.b(a).a(h.a(new Object[] { "event", b, "gtm.timerInterval", String.valueOf(d), "gtm.timerLimit", String.valueOf(e), "gtm.timerStartTime", String.valueOf(f), "gtm.timerCurrentTime", String.valueOf(l), "gtm.timerElapsedTime", String.valueOf(l - f), "gtm.timerEventNumber", String.valueOf(g), "gtm.triggers", c }));
    }
    dg.c(a).postDelayed(this, d);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */