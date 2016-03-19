package com.google.android.gms.analytics.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.analytics.AnalyticsReceiver;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bc;

public class ao
  extends t
{
  private boolean a;
  private boolean b;
  private AlarmManager c = (AlarmManager)getContext().getSystemService("alarm");
  
  protected ao(v paramv)
  {
    super(paramv);
  }
  
  private PendingIntent e()
  {
    Intent localIntent = new Intent(getContext(), AnalyticsReceiver.class);
    localIntent.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
    return PendingIntent.getBroadcast(getContext(), 0, localIntent, 0);
  }
  
  public boolean a()
  {
    return a;
  }
  
  public boolean b()
  {
    return b;
  }
  
  public void c()
  {
    zzia();
    aq.a(a(), "Receiver not registered");
    long l1 = zzhR().j();
    if (l1 > 0L)
    {
      d();
      long l2 = zzhP().b();
      b = true;
      c.setInexactRepeating(2, l2 + l1, 0L, e());
    }
  }
  
  public void d()
  {
    zzia();
    b = false;
    c.cancel(e());
  }
  
  protected void zzhn()
  {
    try
    {
      c.cancel(e());
      if (zzhR().j() > 0L)
      {
        ActivityInfo localActivityInfo = getContext().getPackageManager().getReceiverInfo(new ComponentName(getContext(), AnalyticsReceiver.class), 2);
        if ((localActivityInfo != null) && (enabled))
        {
          zzaT("Receiver registered. Using alarm for local dispatch.");
          a = true;
        }
      }
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */