package com.google.android.gms.signin.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.q;

class n$2
  implements Runnable
{
  n$2(n paramn, String paramString1, String paramString2, i parami) {}
  
  public void run()
  {
    try
    {
      boolean bool = n.a(d).a(a, b);
      c.a(bool);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("SignInClientImpl", "RemoteException thrown when processing uploadServerAuthCode callback", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.n.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */