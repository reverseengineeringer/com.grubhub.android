package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class ThreeDSecureInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ThreeDSecureInfo> CREATOR = new Parcelable.Creator()
  {
    public ThreeDSecureInfo a(Parcel paramAnonymousParcel)
    {
      return new ThreeDSecureInfo(paramAnonymousParcel, null);
    }
    
    public ThreeDSecureInfo[] a(int paramAnonymousInt)
    {
      return new ThreeDSecureInfo[paramAnonymousInt];
    }
  };
  @SerializedName("liabilityShifted")
  private boolean a;
  @SerializedName("liabilityShiftPossible")
  private boolean b;
  
  public ThreeDSecureInfo() {}
  
  private ThreeDSecureInfo(Parcel paramParcel)
  {
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      a = bool1;
      if (paramParcel.readByte() == 0) {
        break label40;
      }
    }
    label40:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      b = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    if (a)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (!b) {
        break label38;
      }
    }
    label38:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      return;
      b1 = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.ThreeDSecureInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */