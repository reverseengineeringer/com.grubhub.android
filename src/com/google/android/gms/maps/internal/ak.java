package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

public abstract interface ak
  extends IInterface
{
  public abstract a a()
    throws RemoteException;
  
  public abstract m a(com.google.android.gms.c.g paramg, GoogleMapOptions paramGoogleMapOptions)
    throws RemoteException;
  
  public abstract y a(com.google.android.gms.c.g paramg, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
    throws RemoteException;
  
  public abstract void a(com.google.android.gms.c.g paramg)
    throws RemoteException;
  
  public abstract void a(com.google.android.gms.c.g paramg, int paramInt)
    throws RemoteException;
  
  public abstract j b(com.google.android.gms.c.g paramg)
    throws RemoteException;
  
  public abstract com.google.android.gms.maps.model.internal.g b()
    throws RemoteException;
  
  public abstract v c(com.google.android.gms.c.g paramg)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */