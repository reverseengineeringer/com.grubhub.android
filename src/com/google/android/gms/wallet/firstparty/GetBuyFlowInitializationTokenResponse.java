package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class GetBuyFlowInitializationTokenResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetBuyFlowInitializationTokenResponse> CREATOR = new c();
  byte[] a;
  private final int b;
  
  GetBuyFlowInitializationTokenResponse()
  {
    this(1, new byte[0]);
  }
  
  GetBuyFlowInitializationTokenResponse(int paramInt, byte[] paramArrayOfByte)
  {
    b = paramInt;
    a = paramArrayOfByte;
  }
  
  public int a()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.firstparty.GetBuyFlowInitializationTokenResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */