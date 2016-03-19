package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public abstract interface cm
  extends IInterface
{
  public abstract void a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */