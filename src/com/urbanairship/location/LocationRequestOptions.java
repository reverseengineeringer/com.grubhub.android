package com.urbanairship.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.Logger;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonSerializable;
import com.urbanairship.json.JsonValue;
import java.util.HashMap;
import java.util.Map;

public class LocationRequestOptions
  implements Parcelable, JsonSerializable
{
  public static final Parcelable.Creator<LocationRequestOptions> CREATOR = new Parcelable.Creator()
  {
    public LocationRequestOptions createFromParcel(Parcel paramAnonymousParcel)
    {
      return new LocationRequestOptions(paramAnonymousParcel, null);
    }
    
    public LocationRequestOptions[] newArray(int paramAnonymousInt)
    {
      return new LocationRequestOptions[paramAnonymousInt];
    }
  };
  public static final int DEFAULT_REQUEST_PRIORITY = 2;
  public static final float DEFAULT_UPDATE_INTERVAL_METERS = 800.0F;
  public static final long DEFAULT_UPDATE_INTERVAL_MILLISECONDS = 300000L;
  public static final String MIN_DISTANCE_KEY = "minDistance";
  public static final String MIN_TIME_KEY = "minTime";
  public static final int PRIORITY_BALANCED_POWER_ACCURACY = 2;
  public static final int PRIORITY_HIGH_ACCURACY = 1;
  public static final String PRIORITY_KEY = "priority";
  public static final int PRIORITY_LOW_POWER = 3;
  public static final int PRIORITY_NO_POWER = 4;
  private final float minDistance;
  private final long minTime;
  private final int priority;
  
  private LocationRequestOptions(int paramInt, long paramLong, float paramFloat)
  {
    priority = paramInt;
    minTime = paramLong;
    minDistance = paramFloat;
  }
  
  private LocationRequestOptions(Parcel paramParcel)
  {
    this(paramParcel.readInt(), paramParcel.readLong(), paramParcel.readFloat());
  }
  
  private LocationRequestOptions(LocationRequestOptions.Builder paramBuilder)
  {
    this(LocationRequestOptions.Builder.access$000(paramBuilder), LocationRequestOptions.Builder.access$100(paramBuilder), LocationRequestOptions.Builder.access$200(paramBuilder));
  }
  
  public static LocationRequestOptions createDefaultOptions()
  {
    return new LocationRequestOptions(2, 300000L, 800.0F);
  }
  
  public static LocationRequestOptions parseJson(String paramString)
    throws JsonException
  {
    paramString = JsonValue.parseString(paramString).getMap();
    if (paramString == null) {
      return null;
    }
    Number localNumber = paramString.opt("minDistance").getNumber();
    if (localNumber == null) {}
    for (float f = 800.0F;; f = localNumber.floatValue())
    {
      long l = paramString.opt("minTime").getLong(300000L);
      int i = paramString.opt("priority").getInt(2);
      verifyPriority(i);
      verifyMinDistance(f);
      verifyMinTime(l);
      return new LocationRequestOptions(i, l, f);
    }
  }
  
  private static void verifyMinDistance(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      throw new IllegalArgumentException("minDistance must be greater or equal to 0");
    }
  }
  
  private static void verifyMinTime(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("minTime must be greater or equal to 0");
    }
  }
  
  private static void verifyPriority(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Priority can only be either PRIORITY_HIGH_ACCURACY, PRIORITY_BALANCED_POWER_ACCURACY, PRIORITY_LOW_POWER, or PRIORITY_NO_POWER");
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LocationRequestOptions)) {}
    do
    {
      return false;
      paramObject = (LocationRequestOptions)paramObject;
    } while ((priority != priority) || (minTime != minTime) || (minDistance != minDistance));
    return true;
  }
  
  public float getMinDistance()
  {
    return minDistance;
  }
  
  public long getMinTime()
  {
    return minTime;
  }
  
  public int getPriority()
  {
    return priority;
  }
  
  public JsonValue toJsonValue()
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("priority", Integer.valueOf(getPriority()));
    ((Map)localObject).put("minDistance", Float.valueOf(getMinDistance()));
    ((Map)localObject).put("minTime", Long.valueOf(getMinTime()));
    try
    {
      localObject = JsonValue.wrap(localObject);
      return (JsonValue)localObject;
    }
    catch (JsonException localJsonException)
    {
      Logger.error("LocationRequestOptions - Unable to serialize to JSON.", localJsonException);
    }
    return JsonValue.NULL;
  }
  
  public String toString()
  {
    return "LocationRequestOptions: Priority " + priority + " minTime " + minTime + " minDistance " + minDistance;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(priority);
    paramParcel.writeLong(minTime);
    paramParcel.writeFloat(minDistance);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationRequestOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */