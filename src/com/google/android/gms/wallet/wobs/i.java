package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class i
  implements Parcelable.Creator<UriData>
{
  static void a(UriData paramUriData, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramUriData.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, paramInt);
  }
  
  public UriData a(Parcel paramParcel)
  {
    String str2 = null;
    int j = a.b(paramParcel);
    int i = 0;
    String str1 = null;
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
        str1 = a.j(paramParcel, k);
        break;
      case 3: 
        str2 = a.j(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new UriData(i, str1, str2);
  }
  
  public UriData[] a(int paramInt)
  {
    return new UriData[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */