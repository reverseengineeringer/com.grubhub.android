package com.google.android.gms.d;

import android.accounts.Account;
import android.app.Activity;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;

public class dv
  extends n<di>
{
  private final Activity d;
  private final int e;
  private final String f;
  private final int g;
  
  public dv(Activity paramActivity, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, int paramInt1, String paramString, int paramInt2)
  {
    super(paramActivity, paramLooper, 4, paramConnectionCallbacks, paramOnConnectionFailedListener);
    d = paramActivity;
    e = paramInt1;
    f = paramString;
    g = paramInt2;
  }
  
  public static Bundle a(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("com.google.android.gms.wallet.EXTRA_ENVIRONMENT", paramInt1);
    localBundle.putString("androidPackageName", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      localBundle.putParcelable("com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT", new Account(paramString2, "com.google"));
    }
    localBundle.putInt("com.google.android.gms.wallet.EXTRA_THEME", paramInt2);
    return localBundle;
  }
  
  private Bundle p()
  {
    return a(e, d.getPackageName(), f, g);
  }
  
  public void a(FullWalletRequest paramFullWalletRequest, int paramInt)
  {
    dx localdx = new dx(d, paramInt);
    Bundle localBundle = p();
    try
    {
      ((di)m()).a(paramFullWalletRequest, localBundle, localdx);
      return;
    }
    catch (RemoteException paramFullWalletRequest)
    {
      Log.e("WalletClientImpl", "RemoteException getting full wallet", paramFullWalletRequest);
      localdx.a(8, null, Bundle.EMPTY);
    }
  }
  
  public void a(MaskedWalletRequest paramMaskedWalletRequest, int paramInt)
  {
    Bundle localBundle = p();
    dx localdx = new dx(d, paramInt);
    try
    {
      ((di)m()).a(paramMaskedWalletRequest, localBundle, localdx);
      return;
    }
    catch (RemoteException paramMaskedWalletRequest)
    {
      Log.e("WalletClientImpl", "RemoteException getting masked wallet", paramMaskedWalletRequest);
      localdx.a(8, null, Bundle.EMPTY);
    }
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    Bundle localBundle = p();
    dx localdx = new dx(d, paramInt);
    try
    {
      ((di)m()).a(paramString1, paramString2, localBundle, localdx);
      return;
    }
    catch (RemoteException paramString1)
    {
      Log.e("WalletClientImpl", "RemoteException changing masked wallet", paramString1);
      localdx.a(8, null, Bundle.EMPTY);
    }
  }
  
  protected di b(IBinder paramIBinder)
  {
    return dj.a(paramIBinder);
  }
  
  protected String d()
  {
    return "com.google.android.gms.wallet.service.BIND";
  }
  
  public void d(int paramInt)
  {
    Bundle localBundle = p();
    dx localdx = new dx(d, paramInt);
    try
    {
      ((di)m()).a(localBundle, localdx);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("WalletClientImpl", "RemoteException during checkForPreAuthorization", localRemoteException);
      localdx.a(8, false, Bundle.EMPTY);
    }
  }
  
  protected String e()
  {
    return "com.google.android.gms.wallet.internal.IOwService";
  }
  
  public boolean o()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */