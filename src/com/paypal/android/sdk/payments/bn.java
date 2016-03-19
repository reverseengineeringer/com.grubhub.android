package com.paypal.android.sdk.payments;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class bn
  implements ServiceConnection
{
  bn(s params) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    new StringBuilder().append(s.a()).append(".onServiceConnected");
    if (a.isFinishing()) {
      new StringBuilder().append(s.a()).append(".onServiceConnected exit - isFinishing");
    }
    do
    {
      return;
      s.a(a, a);
    } while (!s.b(a).a(new bo(this)));
    s.c(a);
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    s.a(a, null);
    s.a();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */