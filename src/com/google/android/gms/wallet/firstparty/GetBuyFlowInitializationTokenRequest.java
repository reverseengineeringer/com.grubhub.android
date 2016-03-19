package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class GetBuyFlowInitializationTokenRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetBuyFlowInitializationTokenRequest> CREATOR = new b();
  byte[] a;
  private final int b;
  
  GetBuyFlowInitializationTokenRequest()
  {
    this(1, null);
  }
  
  GetBuyFlowInitializationTokenRequest(int paramInt, byte[] paramArrayOfByte)
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
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.firstparty.GetBuyFlowInitializationTokenRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */