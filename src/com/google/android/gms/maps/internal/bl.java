package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;

public abstract interface bl
  extends IInterface
{
  public abstract void a(LatLng paramLatLng)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */