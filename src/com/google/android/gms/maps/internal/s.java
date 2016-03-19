package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public abstract interface s
  extends IInterface
{
  public abstract g a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
    throws RemoteException;
  
  public abstract StreetViewPanoramaOrientation a(g paramg)
    throws RemoteException;
  
  public abstract void a(cd paramcd)
    throws RemoteException;
  
  public abstract void a(cg paramcg)
    throws RemoteException;
  
  public abstract void a(cj paramcj)
    throws RemoteException;
  
  public abstract void a(cm paramcm)
    throws RemoteException;
  
  public abstract void a(LatLng paramLatLng)
    throws RemoteException;
  
  public abstract void a(LatLng paramLatLng, int paramInt)
    throws RemoteException;
  
  public abstract void a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, long paramLong)
    throws RemoteException;
  
  public abstract void a(String paramString)
    throws RemoteException;
  
  public abstract void a(boolean paramBoolean)
    throws RemoteException;
  
  public abstract boolean a()
    throws RemoteException;
  
  public abstract void b(boolean paramBoolean)
    throws RemoteException;
  
  public abstract boolean b()
    throws RemoteException;
  
  public abstract void c(boolean paramBoolean)
    throws RemoteException;
  
  public abstract boolean c()
    throws RemoteException;
  
  public abstract void d(boolean paramBoolean)
    throws RemoteException;
  
  public abstract boolean d()
    throws RemoteException;
  
  public abstract StreetViewPanoramaCamera e()
    throws RemoteException;
  
  public abstract StreetViewPanoramaLocation f()
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */