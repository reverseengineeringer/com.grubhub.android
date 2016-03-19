package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

public abstract interface af
  extends IInterface
{
  public abstract void a(int paramInt, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */