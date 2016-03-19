package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class GetInstrumentsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetInstrumentsRequest> CREATOR = new d();
  int[] a;
  private final int b;
  
  GetInstrumentsRequest()
  {
    this(1, null);
  }
  
  GetInstrumentsRequest(int paramInt, int[] paramArrayOfInt)
  {
    b = paramInt;
    a = paramArrayOfInt;
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
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.firstparty.GetInstrumentsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */