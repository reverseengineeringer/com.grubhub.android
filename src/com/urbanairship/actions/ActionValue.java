package com.urbanairship.actions;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonList;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonSerializable;
import com.urbanairship.json.JsonValue;

public class ActionValue
  implements Parcelable, JsonSerializable
{
  public static final Parcelable.Creator<ActionValue> CREATOR = new Parcelable.Creator()
  {
    public ActionValue createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ActionValue((JsonValue)paramAnonymousParcel.readParcelable(JsonValue.class.getClassLoader()));
    }
    
    public ActionValue[] newArray(int paramAnonymousInt)
    {
      return new ActionValue[paramAnonymousInt];
    }
  };
  private final JsonValue jsonValue;
  
  public ActionValue()
  {
    jsonValue = JsonValue.NULL;
  }
  
  public ActionValue(JsonValue paramJsonValue)
  {
    JsonValue localJsonValue = paramJsonValue;
    if (paramJsonValue == null) {
      localJsonValue = JsonValue.NULL;
    }
    jsonValue = localJsonValue;
  }
  
  public static ActionValue wrap(char paramChar)
  {
    return new ActionValue(JsonValue.wrap(paramChar));
  }
  
  public static ActionValue wrap(int paramInt)
  {
    return new ActionValue(JsonValue.wrap(paramInt));
  }
  
  public static ActionValue wrap(long paramLong)
  {
    return new ActionValue(JsonValue.wrap(paramLong));
  }
  
  public static ActionValue wrap(JsonSerializable paramJsonSerializable)
  {
    return new ActionValue(JsonValue.wrap(paramJsonSerializable));
  }
  
  public static ActionValue wrap(Object paramObject)
    throws ActionValueException
  {
    try
    {
      ActionValue localActionValue = new ActionValue(JsonValue.wrap(paramObject));
      return localActionValue;
    }
    catch (JsonException localJsonException)
    {
      throw new ActionValueException("Invalid ActionValue object: " + paramObject, localJsonException);
    }
  }
  
  public static ActionValue wrap(String paramString)
  {
    return new ActionValue(JsonValue.wrap(paramString));
  }
  
  public static ActionValue wrap(boolean paramBoolean)
  {
    return new ActionValue(JsonValue.wrap(paramBoolean));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ActionValue))
    {
      paramObject = (ActionValue)paramObject;
      return jsonValue.equals(jsonValue);
    }
    return false;
  }
  
  public boolean getBoolean(boolean paramBoolean)
  {
    return jsonValue.getBoolean(paramBoolean);
  }
  
  public double getDouble(double paramDouble)
  {
    return jsonValue.getDouble(paramDouble);
  }
  
  public int getInt(int paramInt)
  {
    return jsonValue.getInt(paramInt);
  }
  
  public JsonList getList()
  {
    return jsonValue.getList();
  }
  
  public long getLong(long paramLong)
  {
    return jsonValue.getLong(paramLong);
  }
  
  public JsonMap getMap()
  {
    return jsonValue.getMap();
  }
  
  public String getString()
  {
    return getString(null);
  }
  
  public String getString(String paramString)
  {
    return jsonValue.getString(paramString);
  }
  
  public int hashCode()
  {
    return jsonValue.hashCode();
  }
  
  public boolean isNull()
  {
    return jsonValue.isNull();
  }
  
  public JsonValue toJsonValue()
  {
    return jsonValue;
  }
  
  public String toString()
  {
    return jsonValue.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(jsonValue, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */