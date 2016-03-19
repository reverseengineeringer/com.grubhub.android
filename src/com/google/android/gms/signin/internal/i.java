package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.internal.al;

public abstract interface i
  extends IInterface
{
  public abstract void a(int paramInt)
    throws RemoteException;
  
  public abstract void a(int paramInt, Account paramAccount, f paramf)
    throws RemoteException;
  
  public abstract void a(AuthAccountRequest paramAuthAccountRequest, f paramf)
    throws RemoteException;
  
  public abstract void a(ResolveAccountRequest paramResolveAccountRequest, al paramal)
    throws RemoteException;
  
  public abstract void a(a parama, int paramInt, boolean paramBoolean)
    throws RemoteException;
  
  public abstract void a(CheckServerAuthResult paramCheckServerAuthResult)
    throws RemoteException;
  
  public abstract void a(boolean paramBoolean)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */