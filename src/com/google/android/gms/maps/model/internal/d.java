package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class d
  implements Parcelable.Creator<BitmapDescriptorParcelable>
{
  static void a(BitmapDescriptorParcelable paramBitmapDescriptorParcelable, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramBitmapDescriptorParcelable.a());
    c.a(paramParcel, 2, paramBitmapDescriptorParcelable.b());
    c.a(paramParcel, 3, paramBitmapDescriptorParcelable.c(), false);
    c.a(paramParcel, 4, paramBitmapDescriptorParcelable.d(), paramInt, false);
    c.a(paramParcel, i);
  }
  
  public BitmapDescriptorParcelable a(Parcel paramParcel)
  {
    Bitmap localBitmap = null;
    byte b = 0;
    int j = a.b(paramParcel);
    Bundle localBundle = null;
    int i = 0;
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
        b = a.d(paramParcel, k);
        break;
      case 3: 
        localBundle = a.l(paramParcel, k);
        break;
      case 4: 
        localBitmap = (Bitmap)a.a(paramParcel, k, Bitmap.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new BitmapDescriptorParcelable(i, b, localBundle, localBitmap);
  }
  
  public BitmapDescriptorParcelable[] a(int paramInt)
  {
    return new BitmapDescriptorParcelable[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */