package com.google.android.gms.signin.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.d.ck;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

class n
  extends e
{
  private final ck a;
  private final ExecutorService b;
  
  public n(ck paramck, ExecutorService paramExecutorService)
  {
    a = paramck;
    b = paramExecutorService;
  }
  
  private q a()
    throws RemoteException
  {
    return a.d();
  }
  
  public void a(final String paramString1, final String paramString2, final i parami)
    throws RemoteException
  {
    b.submit(new Runnable()
    {
      public void run()
      {
        try
        {
          boolean bool = n.a(n.this).a(paramString1, paramString2);
          parami.a(bool);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("SignInClientImpl", "RemoteException thrown when processing uploadServerAuthCode callback", localRemoteException);
        }
      }
    });
  }
  
  public void a(final String paramString, final List<Scope> paramList, final i parami)
    throws RemoteException
  {
    b.submit(new Runnable()
    {
      public void run()
      {
        try
        {
          Object localObject = n.a(n.this);
          Set localSet = Collections.unmodifiableSet(new HashSet(paramList));
          localObject = ((q)localObject).a(paramString, localSet);
          localObject = new CheckServerAuthResult(((r)localObject).a(), ((r)localObject).b());
          parami.a((CheckServerAuthResult)localObject);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          Log.e("SignInClientImpl", "RemoteException thrown when processing checkServerAuthorization callback", localRemoteException);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */