package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class m
  implements Parcelable.Creator<LatLng>
{
  static void a(LatLng paramLatLng, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramLatLng.a());
    c.a(paramParcel, 2, a);
    c.a(paramParcel, 3, b);
    c.a(paramParcel, paramInt);
  }
  
  public LatLng a(Parcel paramParcel)
  {
    double d1 = 0.0D;
    int j = a.b(paramParcel);
    int i = 0;
    double d2 = 0.0D;
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
        d2 = a.i(paramParcel, k);
        break;
      case 3: 
        d1 = a.i(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new LatLng(i, d2, d1);
  }
  
  public LatLng[] a(int paramInt)
  {
    return new LatLng[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */