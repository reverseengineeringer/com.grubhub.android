package com.urbanairship.actions;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.urbanairship.json.JsonValue;

final class ActionValue$1
  implements Parcelable.Creator<ActionValue>
{
  public ActionValue createFromParcel(Parcel paramParcel)
  {
    return new ActionValue((JsonValue)paramParcel.readParcelable(JsonValue.class.getClassLoader()));
  }
  
  public ActionValue[] newArray(int paramInt)
  {
    return new ActionValue[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionValue.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */