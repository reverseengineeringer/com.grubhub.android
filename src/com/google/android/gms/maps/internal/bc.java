package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.c.g;

public abstract interface bc
  extends IInterface
{
  public abstract void a(Location paramLocation)
    throws RemoteException;
  
  public abstract void a(g paramg)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */