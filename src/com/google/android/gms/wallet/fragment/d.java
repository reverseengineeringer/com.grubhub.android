package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.c.a;
import com.google.android.gms.c.j;
import com.google.android.gms.d.dc;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

class d
  implements a
{
  private final dc a;
  
  private d(dc paramdc)
  {
    a = paramdc;
  }
  
  private void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    try
    {
      a.a(paramInt1, paramInt2, paramIntent);
      return;
    }
    catch (RemoteException paramIntent)
    {
      throw new RuntimeException(paramIntent);
    }
  }
  
  private void a(MaskedWallet paramMaskedWallet)
  {
    try
    {
      a.a(paramMaskedWallet);
      return;
    }
    catch (RemoteException paramMaskedWallet)
    {
      throw new RuntimeException(paramMaskedWallet);
    }
  }
  
  private void a(MaskedWalletRequest paramMaskedWalletRequest)
  {
    try
    {
      a.a(paramMaskedWalletRequest);
      return;
    }
    catch (RemoteException paramMaskedWalletRequest)
    {
      throw new RuntimeException(paramMaskedWalletRequest);
    }
  }
  
  private void a(WalletFragmentInitParams paramWalletFragmentInitParams)
  {
    try
    {
      a.a(paramWalletFragmentInitParams);
      return;
    }
    catch (RemoteException paramWalletFragmentInitParams)
    {
      throw new RuntimeException(paramWalletFragmentInitParams);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    try
    {
      a.a(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramLayoutInflater = (View)j.a(a.a(j.a(paramLayoutInflater), j.a(paramViewGroup), paramBundle));
      return paramLayoutInflater;
    }
    catch (RemoteException paramLayoutInflater)
    {
      throw new RuntimeException(paramLayoutInflater);
    }
  }
  
  public void a()
  {
    try
    {
      a.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    paramBundle1 = (WalletFragmentOptions)paramBundle1.getParcelable("extraWalletFragmentOptions");
    try
    {
      a.a(j.a(paramActivity), paramBundle1, paramBundle2);
      return;
    }
    catch (RemoteException paramActivity)
    {
      throw new RuntimeException(paramActivity);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    try
    {
      a.a(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeException(paramBundle);
    }
  }
  
  public void b()
  {
    try
    {
      a.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  public void b(Bundle paramBundle)
  {
    try
    {
      a.b(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      throw new RuntimeException(paramBundle);
    }
  }
  
  public void c()
  {
    try
    {
      a.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  public void d()
  {
    try
    {
      a.d();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
  
  public void e() {}
  
  public void f() {}
  
  public void g() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */