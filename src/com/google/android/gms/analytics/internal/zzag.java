package com.google.android.gms.analytics.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import com.google.android.gms.common.internal.aq;

class zzag
  extends BroadcastReceiver
{
  static final String a = zzag.class.getName();
  private final v b;
  private boolean c;
  private boolean d;
  
  zzag(v paramv)
  {
    aq.a(paramv);
    b = paramv;
  }
  
  private void g()
  {
    i();
    j();
  }
  
  private Context h()
  {
    return b.b();
  }
  
  private i i()
  {
    return b.f();
  }
  
  private r j()
  {
    return b.i();
  }
  
  public void a()
  {
    g();
    if (c) {
      return;
    }
    Context localContext = h();
    localContext.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    IntentFilter localIntentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
    localIntentFilter.addCategory(localContext.getPackageName());
    localContext.registerReceiver(this, localIntentFilter);
    d = f();
    b.f().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(d));
    c = true;
  }
  
  public void b()
  {
    if (!d()) {
      return;
    }
    b.f().zzaT("Unregistering connectivity change receiver");
    c = false;
    d = false;
    Context localContext = h();
    try
    {
      localContext.unregisterReceiver(this);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      i().zze("Failed to unregister the network broadcast receiver", localIllegalArgumentException);
    }
  }
  
  public void c()
  {
    if (Build.VERSION.SDK_INT <= 10) {
      return;
    }
    Context localContext = h();
    Intent localIntent = new Intent("com.google.analytics.RADIO_POWERED");
    localIntent.addCategory(localContext.getPackageName());
    localIntent.putExtra(a, true);
    localContext.sendOrderedBroadcast(localIntent, null);
  }
  
  public boolean d()
  {
    return c;
  }
  
  public boolean e()
  {
    if (!c) {
      b.f().zzaW("Connectivity unknown. Receiver not registered");
    }
    return d;
  }
  
  protected boolean f()
  {
    Object localObject = (ConnectivityManager)h().getSystemService("connectivity");
    try
    {
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if (localObject != null)
      {
        boolean bool = ((NetworkInfo)localObject).isConnected();
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (SecurityException localSecurityException) {}
    return false;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    g();
    paramContext = paramIntent.getAction();
    b.f().zza("NetworkBroadcastReceiver received action", paramContext);
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramContext))
    {
      boolean bool = f();
      if (d != bool)
      {
        d = bool;
        j().a(bool);
      }
    }
    do
    {
      return;
      if (!"com.google.analytics.RADIO_POWERED".equals(paramContext)) {
        break;
      }
    } while (paramIntent.hasExtra(a));
    j().e();
    return;
    b.f().zzd("NetworkBroadcastReceiver received unknown action", paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.zzag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */