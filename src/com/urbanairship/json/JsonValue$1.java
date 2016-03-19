package com.urbanairship.json;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.urbanairship.Logger;

final class JsonValue$1
  implements Parcelable.Creator<JsonValue>
{
  public JsonValue createFromParcel(Parcel paramParcel)
  {
    try
    {
      paramParcel = JsonValue.parseString(paramParcel.readString());
      return paramParcel;
    }
    catch (JsonException paramParcel)
    {
      Logger.error("JsonValue - Unable to create JsonValue from parcel.", paramParcel);
    }
    return null;
  }
  
  public JsonValue[] newArray(int paramInt)
  {
    return new JsonValue[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.json.JsonValue.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */