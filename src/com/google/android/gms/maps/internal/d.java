package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.CameraUpdateParcelable;
import com.google.android.gms.maps.model.internal.GroundOverlayOptionsParcelable;
import com.google.android.gms.maps.model.internal.MarkerOptionsParcelable;
import com.google.android.gms.maps.model.internal.a;
import com.google.android.gms.maps.model.internal.j;
import com.google.android.gms.maps.model.internal.m;
import com.google.android.gms.maps.model.internal.s;
import com.google.android.gms.maps.model.internal.v;
import com.google.android.gms.maps.model.internal.y;

public abstract interface d
  extends IInterface
{
  public abstract CameraPosition a()
    throws RemoteException;
  
  public abstract a a(PolylineOptions paramPolylineOptions)
    throws RemoteException;
  
  public abstract j a(CircleOptions paramCircleOptions)
    throws RemoteException;
  
  public abstract m a(GroundOverlayOptions paramGroundOverlayOptions)
    throws RemoteException;
  
  public abstract m a(GroundOverlayOptions paramGroundOverlayOptions, GroundOverlayOptionsParcelable paramGroundOverlayOptionsParcelable)
    throws RemoteException;
  
  public abstract s a(MarkerOptions paramMarkerOptions)
    throws RemoteException;
  
  public abstract s a(MarkerOptions paramMarkerOptions, MarkerOptionsParcelable paramMarkerOptionsParcelable)
    throws RemoteException;
  
  public abstract v a(PolygonOptions paramPolygonOptions)
    throws RemoteException;
  
  public abstract y a(TileOverlayOptions paramTileOverlayOptions)
    throws RemoteException;
  
  public abstract void a(int paramInt)
    throws RemoteException;
  
  public abstract void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws RemoteException;
  
  public abstract void a(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(com.google.android.gms.c.g paramg)
    throws RemoteException;
  
  public abstract void a(com.google.android.gms.c.g paramg, int paramInt, ah paramah)
    throws RemoteException;
  
  public abstract void a(com.google.android.gms.c.g paramg, ah paramah)
    throws RemoteException;
  
  public abstract void a(an paraman)
    throws RemoteException;
  
  public abstract void a(aq paramaq)
    throws RemoteException;
  
  public abstract void a(at paramat)
    throws RemoteException;
  
  public abstract void a(aw paramaw)
    throws RemoteException;
  
  public abstract void a(az paramaz)
    throws RemoteException;
  
  public abstract void a(bf parambf)
    throws RemoteException;
  
  public abstract void a(bi parambi)
    throws RemoteException;
  
  public abstract void a(bl parambl)
    throws RemoteException;
  
  public abstract void a(bo parambo)
    throws RemoteException;
  
  public abstract void a(br parambr)
    throws RemoteException;
  
  public abstract void a(bu parambu)
    throws RemoteException;
  
  public abstract void a(bx parambx)
    throws RemoteException;
  
  public abstract void a(ca paramca)
    throws RemoteException;
  
  public abstract void a(cs paramcs, com.google.android.gms.c.g paramg)
    throws RemoteException;
  
  public abstract void a(g paramg)
    throws RemoteException;
  
  public abstract void a(CameraUpdateParcelable paramCameraUpdateParcelable)
    throws RemoteException;
  
  public abstract void a(CameraUpdateParcelable paramCameraUpdateParcelable, int paramInt, ah paramah)
    throws RemoteException;
  
  public abstract void a(CameraUpdateParcelable paramCameraUpdateParcelable, ah paramah)
    throws RemoteException;
  
  public abstract void a(String paramString)
    throws RemoteException;
  
  public abstract void a(boolean paramBoolean)
    throws RemoteException;
  
  public abstract float b()
    throws RemoteException;
  
  public abstract void b(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void b(com.google.android.gms.c.g paramg)
    throws RemoteException;
  
  public abstract void b(CameraUpdateParcelable paramCameraUpdateParcelable)
    throws RemoteException;
  
  public abstract boolean b(boolean paramBoolean)
    throws RemoteException;
  
  public abstract float c()
    throws RemoteException;
  
  public abstract void c(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void d()
    throws RemoteException;
  
  public abstract void d(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void e()
    throws RemoteException;
  
  public abstract int f()
    throws RemoteException;
  
  public abstract boolean g()
    throws RemoteException;
  
  public abstract boolean h()
    throws RemoteException;
  
  public abstract boolean i()
    throws RemoteException;
  
  public abstract Location j()
    throws RemoteException;
  
  public abstract ab k()
    throws RemoteException;
  
  public abstract p l()
    throws RemoteException;
  
  public abstract boolean m()
    throws RemoteException;
  
  public abstract com.google.android.gms.maps.model.internal.p n()
    throws RemoteException;
  
  public abstract void o()
    throws RemoteException;
  
  public abstract void p()
    throws RemoteException;
  
  public abstract void q()
    throws RemoteException;
  
  public abstract void r()
    throws RemoteException;
  
  public abstract boolean s()
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */