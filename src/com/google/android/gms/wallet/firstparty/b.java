package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.c;

public class b
  implements Parcelable.Creator<GetBuyFlowInitializationTokenRequest>
{
  static void a(GetBuyFlowInitializationTokenRequest paramGetBuyFlowInitializationTokenRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramGetBuyFlowInitializationTokenRequest.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, paramInt);
  }
  
  public GetBuyFlowInitializationTokenRequest a(Parcel paramParcel)
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
      throw new com.google.android.gms.common.internal.safeparcel.b("Overread allowed size end=" + j, paramParcel);
    }
    return new GetBuyFlowInitializationTokenRequest(i, arrayOfByte);
  }
  
  public GetBuyFlowInitializationTokenRequest[] a(int paramInt)
  {
    return new GetBuyFlowInitializationTokenRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.firstparty.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */