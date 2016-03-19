package com.google.android.gms.d;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.appdatasearch.GetRecentContextCall.Request;
import com.google.android.gms.appdatasearch.UsageInfo;

public abstract interface w
  extends IInterface
{
  public abstract void a(GetRecentContextCall.Request paramRequest, z paramz)
    throws RemoteException;
  
  public abstract void a(z paramz)
    throws RemoteException;
  
  public abstract void a(z paramz, String paramString1, String paramString2)
    throws RemoteException;
  
  public abstract void a(z paramz, String paramString, UsageInfo[] paramArrayOfUsageInfo)
    throws RemoteException;
  
  public abstract void a(z paramz, boolean paramBoolean)
    throws RemoteException;
  
  public abstract void b(z paramz)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */