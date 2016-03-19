package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

public abstract interface v
  extends IInterface
{
  public abstract g a(g paramg1, g paramg2, Bundle paramBundle)
    throws RemoteException;
  
  public abstract s a()
    throws RemoteException;
  
  public abstract void a(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(g paramg, StreetViewPanoramaOptions paramStreetViewPanoramaOptions, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(cp paramcp)
    throws RemoteException;
  
  public abstract void b()
    throws RemoteException;
  
  public abstract void b(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void c()
    throws RemoteException;
  
  public abstract void d()
    throws RemoteException;
  
  public abstract void e()
    throws RemoteException;
  
  public abstract void f()
    throws RemoteException;
  
  public abstract boolean g()
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */