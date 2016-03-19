package com.google.android.gms.d;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.firstparty.GetBuyFlowInitializationTokenResponse;
import com.google.android.gms.wallet.firstparty.GetInstrumentsResponse;

public abstract interface dr
  extends IInterface
{
  public abstract void a(int paramInt, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(int paramInt, FullWallet paramFullWallet, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(int paramInt, MaskedWallet paramMaskedWallet, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(int paramInt, boolean paramBoolean, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(Status paramStatus, GetBuyFlowInitializationTokenResponse paramGetBuyFlowInitializationTokenResponse, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(Status paramStatus, GetInstrumentsResponse paramGetInstrumentsResponse, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void b(int paramInt, boolean paramBoolean, Bundle paramBundle)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */