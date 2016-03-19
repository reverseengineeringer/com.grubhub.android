package com.paypal.android.sdk.payments;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class as
  implements ServiceConnection
{
  as(PayPalTouchActivity paramPayPalTouchActivity) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    new StringBuilder().append(PayPalTouchActivity.a()).append(".onServiceConnected");
    if (a.isFinishing()) {
      new StringBuilder().append(PayPalTouchActivity.a()).append(".onServiceConnected exit - isFinishing");
    }
    do
    {
      return;
      PayPalTouchActivity.a(a, a);
    } while (!PayPalTouchActivity.b(a).a(new au(this)));
    PayPalTouchActivity.a(a);
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    PayPalTouchActivity.a(a, null);
    PayPalTouchActivity.a();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */