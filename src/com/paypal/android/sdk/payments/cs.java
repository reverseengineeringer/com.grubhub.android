package com.paypal.android.sdk.payments;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class cs
  implements ServiceConnection
{
  cs(ck paramck) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    new StringBuilder().append(ck.b()).append(".onServiceConnected");
    a.a = a;
    if (a.a.a(new ct(this))) {
      ck.d(a);
    }
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    a.a = null;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */