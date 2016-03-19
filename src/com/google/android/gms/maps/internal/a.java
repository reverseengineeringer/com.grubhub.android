package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public abstract interface a
  extends IInterface
{
  public abstract g a()
    throws RemoteException;
  
  public abstract g a(float paramFloat)
    throws RemoteException;
  
  public abstract g a(float paramFloat1, float paramFloat2)
    throws RemoteException;
  
  public abstract g a(float paramFloat, int paramInt1, int paramInt2)
    throws RemoteException;
  
  public abstract g a(CameraPosition paramCameraPosition)
    throws RemoteException;
  
  public abstract g a(LatLng paramLatLng)
    throws RemoteException;
  
  public abstract g a(LatLng paramLatLng, float paramFloat)
    throws RemoteException;
  
  public abstract g a(LatLngBounds paramLatLngBounds, int paramInt)
    throws RemoteException;
  
  public abstract g a(LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
    throws RemoteException;
  
  public abstract g b()
    throws RemoteException;
  
  public abstract g b(float paramFloat)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */