package com.google.android.gms.d;

import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.appdatasearch.GetRecentContextCall.Response;
import com.google.android.gms.common.api.Status;

public abstract interface z
  extends IInterface
{
  public abstract void a(GetRecentContextCall.Response paramResponse)
    throws RemoteException;
  
  public abstract void a(Status paramStatus)
    throws RemoteException;
  
  public abstract void a(Status paramStatus, ParcelFileDescriptor paramParcelFileDescriptor)
    throws RemoteException;
  
  public abstract void a(Status paramStatus, boolean paramBoolean)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */