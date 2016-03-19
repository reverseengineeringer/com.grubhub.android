package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.c.g;
import com.google.android.gms.c.h;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class GroundOverlayOptions
  implements SafeParcelable
{
  public static final k CREATOR = new k();
  private final int a;
  private a b;
  private LatLng c;
  private float d;
  private float e;
  private LatLngBounds f;
  private float g;
  private float h;
  private boolean i = true;
  private float j = 0.0F;
  private float k = 0.5F;
  private float l = 0.5F;
  
  public GroundOverlayOptions()
  {
    a = 1;
  }
  
  GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    a = paramInt;
    b = new a(h.a(paramIBinder));
    c = paramLatLng;
    d = paramFloat1;
    e = paramFloat2;
    f = paramLatLngBounds;
    g = paramFloat3;
    h = paramFloat4;
    i = paramBoolean;
    j = paramFloat5;
    k = paramFloat6;
    l = paramFloat7;
  }
  
  IBinder a()
  {
    return b.a().asBinder();
  }
  
  int b()
  {
    return a;
  }
  
  public LatLng c()
  {
    return c;
  }
  
  public float d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float e()
  {
    return e;
  }
  
  public LatLngBounds f()
  {
    return f;
  }
  
  public float g()
  {
    return g;
  }
  
  public float h()
  {
    return h;
  }
  
  public float i()
  {
    return j;
  }
  
  public float j()
  {
    return k;
  }
  
  public float k()
  {
    return l;
  }
  
  public boolean l()
  {
    return i;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */