package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class d
  implements Parcelable.Creator<GetInstrumentsRequest>
{
  static void a(GetInstrumentsRequest paramGetInstrumentsRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramGetInstrumentsRequest.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, paramInt);
  }
  
  public GetInstrumentsRequest a(Parcel paramParcel)
  {
    int j = a.b(paramParcel);
    int i = 0;
    int[] arrayOfInt = null;
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
        arrayOfInt = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new GetInstrumentsRequest(i, arrayOfInt);
  }
  
  public GetInstrumentsRequest[] a(int paramInt)
  {
    return new GetInstrumentsRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.firstparty.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */