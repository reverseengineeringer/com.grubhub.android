package com.paypal.android.sdk.payments;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class w
  implements ServiceConnection
{
  w(LoginActivity paramLoginActivity) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    new StringBuilder().append(LoginActivity.class.getSimpleName()).append(".onServiceConnected");
    LoginActivity.a(a, a);
    if (LoginActivity.f(a).a(new x(this))) {
      a.a();
    }
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    LoginActivity.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */