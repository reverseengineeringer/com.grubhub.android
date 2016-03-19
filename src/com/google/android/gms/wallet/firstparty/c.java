package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class c
  implements Parcelable.Creator<GetBuyFlowInitializationTokenResponse>
{
  static void a(GetBuyFlowInitializationTokenResponse paramGetBuyFlowInitializationTokenResponse, Parcel paramParcel, int paramInt)
  {
    paramInt = com.google.android.gms.common.internal.safeparcel.c.a(paramParcel);
    com.google.android.gms.common.internal.safeparcel.c.a(paramParcel, 1, paramGetBuyFlowInitializationTokenResponse.a());
    com.google.android.gms.common.internal.safeparcel.c.a(paramParcel, 2, a, false);
    com.google.android.gms.common.internal.safeparcel.c.a(paramParcel, paramInt);
  }
  
  public GetBuyFlowInitializationTokenResponse a(Parcel paramParcel)
  {
    int j = a.b(paramParcel);
    int i = 0;
    byte[] arrayOfByte = null;
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
        arrayOfByte = a.m(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new GetBuyFlowInitializationTokenResponse(i, arrayOfByte);
  }
  
  public GetBuyFlowInitializationTokenResponse[] a(int paramInt)
  {
    return new GetBuyFlowInitializationTokenResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.firstparty.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */