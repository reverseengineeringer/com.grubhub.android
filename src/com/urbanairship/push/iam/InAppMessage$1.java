package com.urbanairship.push.iam;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class InAppMessage$1
  implements Parcelable.Creator<InAppMessage>
{
  public InAppMessage createFromParcel(Parcel paramParcel)
  {
    return new InAppMessage(paramParcel, null);
  }
  
  public InAppMessage[] newArray(int paramInt)
  {
    return new InAppMessage[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessage.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */