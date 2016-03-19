package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class GroundOverlayOptionsParcelable
  implements SafeParcelable
{
  public static final f CREATOR = new f();
  private final int a;
  private BitmapDescriptorParcelable b;
  
  public GroundOverlayOptionsParcelable()
  {
    a = 1;
  }
  
  GroundOverlayOptionsParcelable(int paramInt, BitmapDescriptorParcelable paramBitmapDescriptorParcelable)
  {
    a = paramInt;
    b = paramBitmapDescriptorParcelable;
  }
  
  int a()
  {
    return a;
  }
  
  public BitmapDescriptorParcelable b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.GroundOverlayOptionsParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */