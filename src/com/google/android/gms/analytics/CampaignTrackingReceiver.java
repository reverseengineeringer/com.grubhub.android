package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.ak;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.common.internal.aq;

public class CampaignTrackingReceiver
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
    boolean bool = p.a(paramContext, CampaignTrackingReceiver.class, true);
    c = Boolean.valueOf(bool);
    return bool;
  }
  
  protected Class<? extends b> a()
  {
    return b.class;
  }
  
  protected void a(String paramString) {}
  
  public void onReceive(Context paramContext, Intent arg2)
  {
    Object localObject = v.a(paramContext);
    locali = ((v)localObject).f();
    String str = ???.getStringExtra("referrer");
    ??? = ???.getAction();
    locali.zza("CampaignTrackingReceiver received", ???);
    if ((!"com.android.vending.INSTALL_REFERRER".equals(???)) || (TextUtils.isEmpty(str)))
    {
      locali.zzaW("CampaignTrackingReceiver received unexpected intent without referrer extra");
      return;
    }
    boolean bool = b.a(paramContext);
    if (!bool) {
      locali.zzaW("CampaignTrackingService not registered or disabled. Installation tracking not possible. See http://goo.gl/8Rd3yj for instructions.");
    }
    a(str);
    if (((v)localObject).e().a())
    {
      locali.zzaX("Received unexpected installation campaign on package side");
      return;
    }
    ??? = a();
    aq.a(???);
    localObject = new Intent(paramContext, ???);
    ((Intent)localObject).putExtra("referrer", str);
    synchronized (a)
    {
      paramContext.startService((Intent)localObject);
      if (!bool) {
        return;
      }
    }
    try
    {
      paramContext = (PowerManager)paramContext.getSystemService("power");
      if (b == null)
      {
        b = paramContext.newWakeLock(1, "Analytics campaign WakeLock");
        b.setReferenceCounted(false);
      }
      b.acquire(1000L);
    }
    catch (SecurityException paramContext)
    {
      for (;;)
      {
        locali.zzaW("CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.CampaignTrackingReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */