package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Iterator;
import java.util.Set;

public class ad
  implements ServiceConnection
{
  public ad(ac paramac) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (aa.a(a.a))
    {
      ac.a(a, paramIBinder);
      ac.a(a, paramComponentName);
      Iterator localIterator = ac.b(a).iterator();
      if (localIterator.hasNext()) {
        ((ServiceConnection)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
      }
    }
    ac.a(a, 1);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (aa.a(a.a))
    {
      ac.a(a, null);
      ac.a(a, paramComponentName);
      Iterator localIterator = ac.b(a).iterator();
      if (localIterator.hasNext()) {
        ((ServiceConnection)localIterator.next()).onServiceDisconnected(paramComponentName);
      }
    }
    ac.a(a, 2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */