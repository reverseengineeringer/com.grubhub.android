package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class e
  implements Parcelable.Creator<GetInstrumentsResponse>
{
  static void a(GetInstrumentsResponse paramGetInstrumentsResponse, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramGetInstrumentsResponse.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, paramInt);
  }
  
  public GetInstrumentsResponse a(Parcel paramParcel)
  {
    String[] arrayOfString = null;
    int j = a.b(paramParcel);
    int i = 0;
    byte[][] arrayOfByte = (byte[][])null;
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
        arrayOfString = a.p(paramParcel, k);
        break;
      case 3: 
        arrayOfByte = a.n(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new GetInstrumentsResponse(i, arrayOfString, arrayOfByte);
  }
  
  public GetInstrumentsResponse[] a(int paramInt)
  {
    return new GetInstrumentsResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.firstparty.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */