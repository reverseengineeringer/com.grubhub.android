package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.e;

public final class u
  extends n<T>.o
{
  public final IBinder e;
  
  public u(n paramn, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(paramn, paramInt, paramBundle);
    e = paramIBinder;
  }
  
  protected void a(ConnectionResult paramConnectionResult)
  {
    if (n.e(f) != null) {
      n.e(f).onConnectionFailed(paramConnectionResult);
    }
    f.a(paramConnectionResult);
  }
  
  protected boolean a()
  {
    do
    {
      try
      {
        String str = e.getInterfaceDescriptor();
        if (!f.e().equals(str))
        {
          Log.e("GmsClient", "service descriptor mismatch: " + f.e() + " vs. " + str);
          return false;
        }
      }
      catch (RemoteException localRemoteException)
      {
        Log.w("GmsClient", "service probably died");
        return false;
      }
      localObject = f.a(e);
    } while ((localObject == null) || (!n.a(f, 2, 3, (IInterface)localObject)));
    Object localObject = f.a_();
    if (n.b(f) != null) {
      n.b(f).onConnected((Bundle)localObject);
    }
    e.c(n.f(f));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */