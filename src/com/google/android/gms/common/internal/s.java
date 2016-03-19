package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

public final class s
  implements ServiceConnection
{
  private final int b;
  
  public s(n paramn, int paramInt)
  {
    b = paramInt;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    aq.a(paramIBinder, "Expecting a valid IBinder");
    n.a(a, aj.a(paramIBinder));
    a.c(b);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    a.a.sendMessage(a.a.obtainMessage(4, b, 1));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */