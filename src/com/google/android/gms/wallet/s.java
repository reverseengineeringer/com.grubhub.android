package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class s
  implements Parcelable.Creator<InstrumentInfo>
{
  static void a(InstrumentInfo paramInstrumentInfo, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramInstrumentInfo.a());
    c.a(paramParcel, 2, paramInstrumentInfo.b(), false);
    c.a(paramParcel, 3, paramInstrumentInfo.c(), false);
    c.a(paramParcel, paramInt);
  }
  
  public InstrumentInfo a(Parcel paramParcel)
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
    return new InstrumentInfo(i, str1, str2);
  }
  
  public InstrumentInfo[] a(int paramInt)
  {
    return new InstrumentInfo[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */