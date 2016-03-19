package com.google.android.gms.signin.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

class n$1
  implements Runnable
{
  n$1(n paramn, List paramList, String paramString, i parami) {}
  
  public void run()
  {
    try
    {
      Object localObject = n.a(d);
      Set localSet = Collections.unmodifiableSet(new HashSet(a));
      localObject = ((q)localObject).a(b, localSet);
      localObject = new CheckServerAuthResult(((r)localObject).a(), ((r)localObject).b());
      c.a((CheckServerAuthResult)localObject);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("SignInClientImpl", "RemoteException thrown when processing checkServerAuthorization callback", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.n.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */