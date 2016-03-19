package com.paypal.android.sdk.payments;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

 enum aj
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new bj();
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeSerializable(this);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */