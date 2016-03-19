package com.google.android.gms.d;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.fragment.WalletFragmentInitParams;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public abstract interface dc
  extends IInterface
{
  public abstract g a(g paramg1, g paramg2, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a()
    throws RemoteException;
  
  public abstract void a(int paramInt1, int paramInt2, Intent paramIntent)
    throws RemoteException;
  
  public abstract void a(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(g paramg, WalletFragmentOptions paramWalletFragmentOptions, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(MaskedWallet paramMaskedWallet)
    throws RemoteException;
  
  public abstract void a(MaskedWalletRequest paramMaskedWalletRequest)
    throws RemoteException;
  
  public abstract void a(WalletFragmentInitParams paramWalletFragmentInitParams)
    throws RemoteException;
  
  public abstract void a(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void b()
    throws RemoteException;
  
  public abstract void b(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void c()
    throws RemoteException;
  
  public abstract void d()
    throws RemoteException;
  
  public abstract int e()
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */