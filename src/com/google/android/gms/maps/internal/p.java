package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

public abstract interface p
  extends IInterface
{
  public abstract g a(LatLng paramLatLng)
    throws RemoteException;
  
  public abstract LatLng a(g paramg)
    throws RemoteException;
  
  public abstract LatLng a(Point paramPoint)
    throws RemoteException;
  
  public abstract VisibleRegion a()
    throws RemoteException;
  
  public abstract Point b(LatLng paramLatLng)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */