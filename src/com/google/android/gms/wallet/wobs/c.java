package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class c
  implements Parcelable.Creator<LabelValue>
{
  static void a(LabelValue paramLabelValue, Parcel paramParcel, int paramInt)
  {
    paramInt = com.google.android.gms.common.internal.safeparcel.c.a(paramParcel);
    com.google.android.gms.common.internal.safeparcel.c.a(paramParcel, 1, paramLabelValue.a());
    com.google.android.gms.common.internal.safeparcel.c.a(paramParcel, 2, a, false);
    com.google.android.gms.common.internal.safeparcel.c.a(paramParcel, 3, b, false);
    com.google.android.gms.common.internal.safeparcel.c.a(paramParcel, paramInt);
  }
  
  public LabelValue a(Parcel paramParcel)
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
    return new LabelValue(i, str1, str2);
  }
  
  public LabelValue[] a(int paramInt)
  {
    return new LabelValue[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */