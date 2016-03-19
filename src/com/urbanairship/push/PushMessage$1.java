package com.urbanairship.push;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class PushMessage$1
  implements Parcelable.Creator<PushMessage>
{
  public PushMessage createFromParcel(Parcel paramParcel)
  {
    return new PushMessage(paramParcel.readBundle());
  }
  
  public PushMessage[] newArray(int paramInt)
  {
    return new PushMessage[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.PushMessage.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */