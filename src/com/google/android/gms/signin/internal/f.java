package com.google.android.gms.signin.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;

public abstract interface f
  extends IInterface
{
  public abstract void a(ConnectionResult paramConnectionResult, AuthAccountResult paramAuthAccountResult)
    throws RemoteException;
  
  public abstract void a(Status paramStatus)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */