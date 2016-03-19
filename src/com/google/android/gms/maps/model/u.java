package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class u
  implements Parcelable.Creator<Tile>
{
  static void a(Tile paramTile, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramTile.a());
    c.a(paramParcel, 2, a);
    c.a(paramParcel, 3, b);
    c.a(paramParcel, 4, c, false);
    c.a(paramParcel, paramInt);
  }
  
  public Tile a(Parcel paramParcel)
  {
    int k = 0;
    int m = a.b(paramParcel);
    byte[] arrayOfByte = null;
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.a(paramParcel);
      switch (a.a(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        i = a.e(paramParcel, n);
        break;
      case 2: 
        j = a.e(paramParcel, n);
        break;
      case 3: 
        k = a.e(paramParcel, n);
        break;
      case 4: 
        arrayOfByte = a.m(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new b("Overread allowed size end=" + m, paramParcel);
    }
    return new Tile(i, j, k, arrayOfByte);
  }
  
  public Tile[] a(int paramInt)
  {
    return new Tile[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */