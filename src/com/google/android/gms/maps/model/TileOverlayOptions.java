package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.internal.ab;
import com.google.android.gms.maps.model.internal.ac;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final v CREATOR = new v();
  private final int a;
  private ab b;
  private h c;
  private boolean d = true;
  private float e;
  private boolean f = true;
  
  public TileOverlayOptions()
  {
    a = 1;
  }
  
  TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    a = paramInt;
    b = ac.a(paramIBinder);
    if (b == null) {}
    for (paramIBinder = null;; paramIBinder = new h()
        {
          private final ab c = TileOverlayOptions.a(TileOverlayOptions.this);
        })
    {
      c = paramIBinder;
      d = paramBoolean1;
      e = paramFloat;
      f = paramBoolean2;
      return;
    }
  }
  
  int a()
  {
    return a;
  }
  
  IBinder b()
  {
    return b.asBinder();
  }
  
  public float c()
  {
    return e;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean e()
  {
    return f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    v.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */