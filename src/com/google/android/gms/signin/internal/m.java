package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.internal.al;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.d.cj;
import com.google.android.gms.d.ck;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public class m
  extends com.google.android.gms.common.internal.n<i>
  implements cj
{
  private final boolean d;
  private final com.google.android.gms.common.internal.i e;
  private final ck f;
  private Integer g;
  private final ExecutorService h;
  
  public m(Context paramContext, Looper paramLooper, boolean paramBoolean, com.google.android.gms.common.internal.i parami, ck paramck, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, ExecutorService paramExecutorService)
  {
    super(paramContext, paramLooper, 44, paramConnectionCallbacks, paramOnConnectionFailedListener, parami);
    d = paramBoolean;
    e = parami;
    f = paramck;
    g = parami.j();
    h = paramExecutorService;
  }
  
  public static Bundle a(ck paramck, Integer paramInteger, ExecutorService paramExecutorService)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", paramck.a());
    localBundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", paramck.b());
    localBundle.putString("com.google.android.gms.signin.internal.serverClientId", paramck.c());
    if (paramck.d() != null) {
      localBundle.putParcelable("com.google.android.gms.signin.internal.signInCallbacks", new BinderWrapper(new n(paramck, paramExecutorService).asBinder()));
    }
    if (paramInteger != null) {
      localBundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", paramInteger.intValue());
    }
    return localBundle;
  }
  
  public void a(a parama, Set<Scope> paramSet, f paramf)
  {
    aq.a(paramf, "Expecting a valid ISignInCallbacks");
    try
    {
      ((i)m()).a(new AuthAccountRequest(parama, paramSet), paramf);
      return;
    }
    catch (RemoteException parama)
    {
      Log.w("SignInClientImpl", "Remote service probably died when authAccount is called");
      try
      {
        paramf.a(new ConnectionResult(8, null), new AuthAccountResult());
        return;
      }
      catch (RemoteException parama)
      {
        Log.wtf("SignInClientImpl", "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException.");
      }
    }
  }
  
  public void a(a parama, boolean paramBoolean)
  {
    try
    {
      ((i)m()).a(parama, g.intValue(), paramBoolean);
      return;
    }
    catch (RemoteException parama)
    {
      Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
    }
  }
  
  public void a(al paramal)
  {
    aq.a(paramal, "Expecting a valid IResolveAccountCallbacks");
    try
    {
      Account localAccount = e.c();
      ((i)m()).a(new ResolveAccountRequest(localAccount, g.intValue()), paramal);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("SignInClientImpl", "Remote service probably died when resolveAccount is called");
      try
      {
        paramal.a(new ResolveAccountResponse(8));
        return;
      }
      catch (RemoteException paramal)
      {
        Log.wtf("SignInClientImpl", "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException.");
      }
    }
  }
  
  protected i b(IBinder paramIBinder)
  {
    return j.a(paramIBinder);
  }
  
  public void b_()
  {
    try
    {
      ((i)m()).a(g.intValue());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
    }
  }
  
  public boolean c()
  {
    return d;
  }
  
  protected String d()
  {
    return "com.google.android.gms.signin.service.START";
  }
  
  protected String e()
  {
    return "com.google.android.gms.signin.internal.ISignInService";
  }
  
  public void g()
  {
    a(new t(this));
  }
  
  protected Bundle k()
  {
    Bundle localBundle = a(f, e.j(), h);
    String str = e.g();
    if (!i().getPackageName().equals(str)) {
      localBundle.putString("com.google.android.gms.signin.internal.realClientPackageName", e.g());
    }
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */