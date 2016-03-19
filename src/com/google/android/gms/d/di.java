package com.google.android.gms.d;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.wallet.CreateWalletObjectsRequest;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.firstparty.GetBuyFlowInitializationTokenRequest;
import com.google.android.gms.wallet.firstparty.GetInstrumentsRequest;

public abstract interface di
  extends IInterface
{
  public abstract void a(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(Bundle paramBundle, dr paramdr)
    throws RemoteException;
  
  public abstract void a(CreateWalletObjectsRequest paramCreateWalletObjectsRequest, Bundle paramBundle, dr paramdr)
    throws RemoteException;
  
  public abstract void a(FullWalletRequest paramFullWalletRequest, Bundle paramBundle, dr paramdr)
    throws RemoteException;
  
  public abstract void a(MaskedWalletRequest paramMaskedWalletRequest, Bundle paramBundle, do paramdo)
    throws RemoteException;
  
  public abstract void a(MaskedWalletRequest paramMaskedWalletRequest, Bundle paramBundle, dr paramdr)
    throws RemoteException;
  
  public abstract void a(NotifyTransactionStatusRequest paramNotifyTransactionStatusRequest, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(GetBuyFlowInitializationTokenRequest paramGetBuyFlowInitializationTokenRequest, Bundle paramBundle, dr paramdr)
    throws RemoteException;
  
  public abstract void a(GetInstrumentsRequest paramGetInstrumentsRequest, Bundle paramBundle, dr paramdr)
    throws RemoteException;
  
  public abstract void a(String paramString1, String paramString2, Bundle paramBundle, dr paramdr)
    throws RemoteException;
  
  public abstract void b(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void b(Bundle paramBundle, dr paramdr)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */