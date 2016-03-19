package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.google.android.gms.common.stats.b;
import java.util.HashMap;

final class aa
  extends z
  implements Handler.Callback
{
  private final HashMap<ab, ac> a = new HashMap();
  private final Context b;
  private final Handler c;
  private final b d;
  private final long e;
  
  aa(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    c = new Handler(paramContext.getMainLooper(), this);
    d = b.a();
    e = 5000L;
  }
  
  private boolean a(ab paramab, ServiceConnection paramServiceConnection, String paramString)
  {
    aq.a(paramServiceConnection, "ServiceConnection must not be null");
    for (;;)
    {
      ac localac;
      synchronized (a)
      {
        localac = (ac)a.get(paramab);
        if (localac == null)
        {
          localac = new ac(this, paramab);
          localac.a(paramServiceConnection, paramString);
          localac.a(paramString);
          a.put(paramab, localac);
          paramab = localac;
          boolean bool = paramab.a();
          return bool;
        }
        c.removeMessages(0, localac);
        if (localac.a(paramServiceConnection)) {
          throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + paramab);
        }
      }
      localac.a(paramServiceConnection, paramString);
      switch (localac.b())
      {
      case 1: 
        paramServiceConnection.onServiceConnected(localac.e(), localac.d());
        paramab = localac;
        break;
      case 2: 
        localac.a(paramString);
        paramab = localac;
        break;
      default: 
        paramab = localac;
      }
    }
  }
  
  private void b(ab paramab, ServiceConnection paramServiceConnection, String paramString)
  {
    aq.a(paramServiceConnection, "ServiceConnection must not be null");
    ac localac;
    synchronized (a)
    {
      localac = (ac)a.get(paramab);
      if (localac == null) {
        throw new IllegalStateException("Nonexistent connection status for service config: " + paramab);
      }
    }
    if (!localac.a(paramServiceConnection)) {
      throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + paramab);
    }
    localac.b(paramServiceConnection, paramString);
    if (localac.c())
    {
      paramab = c.obtainMessage(0, localac);
      c.sendMessageDelayed(paramab, e);
    }
  }
  
  public boolean a(String paramString1, ServiceConnection paramServiceConnection, String paramString2)
  {
    return a(new ab(paramString1), paramServiceConnection, paramString2);
  }
  
  public void b(String paramString1, ServiceConnection paramServiceConnection, String paramString2)
  {
    b(new ab(paramString1), paramServiceConnection, paramString2);
  }
  
  public boolean handleMessage(Message arg1)
  {
    switch (what)
    {
    default: 
      return false;
    }
    ac localac = (ac)obj;
    synchronized (a)
    {
      if (localac.c())
      {
        if (localac.a()) {
          localac.b("GmsClientSupervisor");
        }
        a.remove(ac.a(localac));
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */