package com.google.android.gms.signin.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Scope;
import java.util.List;

public abstract interface d
  extends IInterface
{
  public abstract void a(String paramString1, String paramString2, i parami)
    throws RemoteException;
  
  public abstract void a(String paramString, List<Scope> paramList, i parami)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */