package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class GetInstrumentsResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetInstrumentsResponse> CREATOR = new e();
  String[] a;
  byte[][] b;
  private final int c;
  
  GetInstrumentsResponse()
  {
    this(1, new String[0], new byte[0][]);
  }
  
  GetInstrumentsResponse(int paramInt, String[] paramArrayOfString, byte[][] paramArrayOfByte)
  {
    c = paramInt;
    a = paramArrayOfString;
    b = paramArrayOfByte;
  }
  
  public int a()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.firstparty.GetInstrumentsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */