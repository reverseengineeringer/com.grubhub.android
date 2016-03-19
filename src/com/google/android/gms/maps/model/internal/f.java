package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class f
  implements Parcelable.Creator<GroundOverlayOptionsParcelable>
{
  static void a(GroundOverlayOptionsParcelable paramGroundOverlayOptionsParcelable, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramGroundOverlayOptionsParcelable.a());
    c.a(paramParcel, 2, paramGroundOverlayOptionsParcelable.b(), paramInt, false);
    c.a(paramParcel, i);
  }
  
  public GroundOverlayOptionsParcelable a(Parcel paramParcel)
  {
    int j = a.b(paramParcel);
    int i = 0;
    BitmapDescriptorParcelable localBitmapDescriptorParcelable = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.a(paramParcel);
      switch (a.a(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.e(paramParcel, k);
        break;
      case 2: 
        localBitmapDescriptorParcelable = (BitmapDescriptorParcelable)a.a(paramParcel, k, BitmapDescriptorParcelable.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new GroundOverlayOptionsParcelable(i, localBitmapDescriptorParcelable);
  }
  
  public GroundOverlayOptionsParcelable[] a(int paramInt)
  {
    return new GroundOverlayOptionsParcelable[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */