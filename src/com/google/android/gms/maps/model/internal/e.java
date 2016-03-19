package com.google.android.gms.maps.model.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class e
  implements Parcelable.Creator<CameraUpdateParcelable>
{
  static void a(CameraUpdateParcelable paramCameraUpdateParcelable, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramCameraUpdateParcelable.a());
    c.a(paramParcel, 2, paramCameraUpdateParcelable.b());
    c.a(paramParcel, 3, paramCameraUpdateParcelable.c(), false);
    c.a(paramParcel, paramInt);
  }
  
  public CameraUpdateParcelable a(Parcel paramParcel)
  {
    int j = 0;
    int k = a.b(paramParcel);
    Bundle localBundle = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.a(paramParcel);
      switch (a.a(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        i = a.e(paramParcel, m);
        break;
      case 2: 
        j = a.e(paramParcel, m);
        break;
      case 3: 
        localBundle = a.l(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new CameraUpdateParcelable(i, j, localBundle);
  }
  
  public CameraUpdateParcelable[] a(int paramInt)
  {
    return new CameraUpdateParcelable[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */