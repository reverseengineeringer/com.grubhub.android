package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.ak;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.r;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bs;

public class b
  extends Service
{
  private static Boolean b;
  private Handler a;
  
  private void a()
  {
    try
    {
      synchronized (CampaignTrackingReceiver.a)
      {
        PowerManager.WakeLock localWakeLock = CampaignTrackingReceiver.b;
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
    boolean bool = p.a(paramContext, b.class);
    b = Boolean.valueOf(bool);
    return bool;
  }
  
  private Handler b()
  {
    Handler localHandler2 = a;
    Handler localHandler1 = localHandler2;
    if (localHandler2 == null)
    {
      localHandler1 = new Handler(getMainLooper());
      a = localHandler1;
    }
    return localHandler1;
  }
  
  protected void a(final i parami, Handler paramHandler, final int paramInt)
  {
    paramHandler.post(new Runnable()
    {
      public void run()
      {
        boolean bool = stopSelfResult(paramInt);
        if (bool) {
          parami.zza("Install campaign broadcast processed", Boolean.valueOf(bool));
        }
      }
    });
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    v.a(this).f().zzaT("CampaignTrackingService is starting up");
  }
  
  public void onDestroy()
  {
    v.a(this).f().zzaT("CampaignTrackingService is shutting down");
    super.onDestroy();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, final int paramInt2)
  {
    a();
    v localv = v.a(this);
    final i locali = localv.f();
    final Handler localHandler = null;
    if (localv.e().a()) {
      locali.zzaX("Unexpected installation campaign (package side)");
    }
    for (paramIntent = localHandler;; paramIntent = paramIntent.getStringExtra("referrer"))
    {
      localHandler = b();
      if (!TextUtils.isEmpty(paramIntent)) {
        break;
      }
      if (!localv.e().a()) {
        locali.zzaW("No campaign found on com.android.vending.INSTALL_REFERRER \"referrer\" extra");
      }
      localv.h().a(new Runnable()
      {
        public void run()
        {
          a(locali, localHandler, paramInt2);
        }
      });
      return 2;
    }
    paramInt1 = localv.e().e();
    if (paramIntent.length() <= paramInt1) {}
    for (;;)
    {
      locali.zza("CampaignTrackingService called. startId, campaign", Integer.valueOf(paramInt2), paramIntent);
      localv.i().a(paramIntent, new Runnable()
      {
        public void run()
        {
          a(locali, localHandler, paramInt2);
        }
      });
      return 2;
      locali.zzc("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(paramIntent.length()), Integer.valueOf(paramInt1));
      paramIntent = paramIntent.substring(0, paramInt1);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */