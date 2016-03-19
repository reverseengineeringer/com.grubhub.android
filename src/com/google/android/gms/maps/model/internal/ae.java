package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class ae
  implements Parcelable.Creator<MarkerOptionsParcelable>
{
  static void a(MarkerOptionsParcelable paramMarkerOptionsParcelable, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramMarkerOptionsParcelable.a());
    c.a(paramParcel, 2, paramMarkerOptionsParcelable.b(), paramInt, false);
    c.a(paramParcel, i);
  }
  
  public MarkerOptionsParcelable a(Parcel paramParcel)
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
    return new MarkerOptionsParcelable(i, localBitmapDescriptorParcelable);
  }
  
  public MarkerOptionsParcelable[] a(int paramInt)
  {
    return new MarkerOptionsParcelable[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */