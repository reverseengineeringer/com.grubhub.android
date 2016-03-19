package com.urbanairship.json;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.Logger;
import com.urbanairship.util.UAStringUtil;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.json.JSONTokener;

public class JsonValue
  implements Parcelable
{
  public static final Parcelable.Creator<JsonValue> CREATOR = new Parcelable.Creator()
  {
    public JsonValue createFromParcel(Parcel paramAnonymousParcel)
    {
      try
      {
        paramAnonymousParcel = JsonValue.parseString(paramAnonymousParcel.readString());
        return paramAnonymousParcel;
      }
      catch (JsonException paramAnonymousParcel)
      {
        Logger.error("JsonValue - Unable to create JsonValue from parcel.", paramAnonymousParcel);
      }
      return null;
    }
    
    public JsonValue[] newArray(int paramAnonymousInt)
    {
      return new JsonValue[paramAnonymousInt];
    }
  };
  public static final JsonValue NULL = new JsonValue(null);
  private final Object value;
  
  private JsonValue(Object paramObject)
  {
    value = paramObject;
  }
  
  public static JsonValue parseString(String paramString)
    throws JsonException
  {
    if (UAStringUtil.isEmpty(paramString)) {
      return NULL;
    }
    paramString = new JSONTokener(paramString);
    try
    {
      paramString = wrap(paramString.nextValue());
      return paramString;
    }
    catch (JSONException paramString)
    {
      throw new JsonException("Unable to parse string", paramString);
    }
  }
  
  public static JsonValue wrap(char paramChar)
  {
    return wrap(Character.valueOf(paramChar), NULL);
  }
  
  public static JsonValue wrap(int paramInt)
  {
    return wrap(Integer.valueOf(paramInt), NULL);
  }
  
  public static JsonValue wrap(long paramLong)
  {
    return wrap(Long.valueOf(paramLong), NULL);
  }
  
  public static JsonValue wrap(JsonSerializable paramJsonSerializable)
  {
    return wrap(paramJsonSerializable, NULL);
  }
  
  public static JsonValue wrap(Object paramObject)
    throws JsonException
  {
    if ((paramObject == null) || (paramObject == JSONObject.NULL)) {
      return NULL;
    }
    if ((paramObject instanceof JsonValue)) {
      return (JsonValue)paramObject;
    }
    if (((paramObject instanceof JsonMap)) || ((paramObject instanceof JsonList)) || ((paramObject instanceof Boolean)) || ((paramObject instanceof Integer)) || ((paramObject instanceof Long)) || ((paramObject instanceof String))) {
      return new JsonValue(paramObject);
    }
    Object localObject;
    if ((paramObject instanceof JsonSerializable))
    {
      localObject = ((JsonSerializable)paramObject).toJsonValue();
      paramObject = localObject;
      if (localObject == null) {
        paramObject = NULL;
      }
      return (JsonValue)paramObject;
    }
    if (((paramObject instanceof Byte)) || ((paramObject instanceof Short))) {
      return new JsonValue(Integer.valueOf(((Number)paramObject).intValue()));
    }
    if ((paramObject instanceof Character)) {
      return new JsonValue(((Character)paramObject).toString());
    }
    if ((paramObject instanceof Float)) {
      return new JsonValue(Double.valueOf(((Number)paramObject).doubleValue()));
    }
    if ((paramObject instanceof Double))
    {
      localObject = (Double)paramObject;
      if ((((Double)localObject).isInfinite()) || (((Double)localObject).isNaN())) {
        throw new JsonException("Invalid Double value: " + localObject);
      }
      return new JsonValue(paramObject);
    }
    try
    {
      if ((paramObject instanceof JSONArray)) {
        return wrapJSONArray((JSONArray)paramObject);
      }
      if ((paramObject instanceof JSONObject)) {
        return wrapJSONObject((JSONObject)paramObject);
      }
      if ((paramObject instanceof Collection)) {
        return wrapCollection((Collection)paramObject);
      }
      if (paramObject.getClass().isArray()) {
        return wrapArray(paramObject);
      }
      if ((paramObject instanceof Map))
      {
        paramObject = wrapMap((Map)paramObject);
        return (JsonValue)paramObject;
      }
    }
    catch (JsonException paramObject)
    {
      throw ((Throwable)paramObject);
    }
    catch (Exception paramObject)
    {
      throw new JsonException("Failed to wrap value.", (Throwable)paramObject);
    }
    throw new JsonException("Illegal object: " + paramObject);
  }
  
  public static JsonValue wrap(Object paramObject, JsonValue paramJsonValue)
  {
    try
    {
      paramObject = wrap(paramObject);
      return (JsonValue)paramObject;
    }
    catch (JsonException paramObject) {}
    return paramJsonValue;
  }
  
  public static JsonValue wrap(String paramString)
  {
    return wrap(paramString, NULL);
  }
  
  public static JsonValue wrap(boolean paramBoolean)
  {
    return wrap(Boolean.valueOf(paramBoolean), NULL);
  }
  
  private static JsonValue wrapArray(Object paramObject)
    throws JsonException
  {
    int j = Array.getLength(paramObject);
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      if (localObject != null) {
        localArrayList.add(wrap(localObject));
      }
      i += 1;
    }
    return new JsonValue(new JsonList(localArrayList));
  }
  
  private static JsonValue wrapCollection(Collection paramCollection)
    throws JsonException
  {
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject = paramCollection.next();
      if (localObject != null) {
        localArrayList.add(wrap(localObject));
      }
    }
    return new JsonValue(new JsonList(localArrayList));
  }
  
  private static JsonValue wrapJSONArray(JSONArray paramJSONArray)
    throws JsonException
  {
    ArrayList localArrayList = new ArrayList(paramJSONArray.length());
    int i = 0;
    while (i < paramJSONArray.length())
    {
      if (!paramJSONArray.isNull(i)) {
        localArrayList.add(wrap(paramJSONArray.opt(i)));
      }
      i += 1;
    }
    return new JsonValue(new JsonList(localArrayList));
  }
  
  private static JsonValue wrapJSONObject(JSONObject paramJSONObject)
    throws JsonException
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!paramJSONObject.isNull(str)) {
        localHashMap.put(str, wrap(paramJSONObject.opt(str)));
      }
    }
    return new JsonValue(new JsonMap(localHashMap));
  }
  
  private static JsonValue wrapMap(Map<?, ?> paramMap)
    throws JsonException
  {
    HashMap localHashMap = new HashMap();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (!(localEntry.getKey() instanceof String)) {
        throw new JsonException("Only string map keys are accepted.");
      }
      if (localEntry.getValue() != null) {
        localHashMap.put((String)localEntry.getKey(), wrap(localEntry.getValue()));
      }
    }
    return new JsonValue(new JsonMap(localHashMap));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof JsonValue)) {
      return false;
    }
    paramObject = (JsonValue)paramObject;
    if (isNull()) {
      return ((JsonValue)paramObject).isNull();
    }
    return value.equals(value);
  }
  
  public boolean getBoolean(boolean paramBoolean)
  {
    if (isNull()) {}
    while (!isBoolean()) {
      return paramBoolean;
    }
    return ((Boolean)value).booleanValue();
  }
  
  public double getDouble(double paramDouble)
  {
    if (isNull()) {}
    do
    {
      return paramDouble;
      if (isDouble()) {
        return ((Double)value).doubleValue();
      }
    } while (!isNumber());
    return ((Number)value).doubleValue();
  }
  
  public int getInt(int paramInt)
  {
    if (isNull()) {}
    do
    {
      return paramInt;
      if (isInteger()) {
        return ((Integer)value).intValue();
      }
    } while (!isNumber());
    return ((Number)value).intValue();
  }
  
  public JsonList getList()
  {
    if ((isNull()) || (!isJsonList())) {
      return null;
    }
    return (JsonList)value;
  }
  
  public long getLong(long paramLong)
  {
    if (isNull()) {}
    do
    {
      return paramLong;
      if (isLong()) {
        return ((Long)value).longValue();
      }
    } while (!isNumber());
    return ((Number)value).longValue();
  }
  
  public JsonMap getMap()
  {
    if ((isNull()) || (!isJsonMap())) {
      return null;
    }
    return (JsonMap)value;
  }
  
  public Number getNumber()
  {
    if ((isNull()) || (!isNumber())) {
      return null;
    }
    return (Number)value;
  }
  
  public String getString()
  {
    return getString(null);
  }
  
  public String getString(String paramString)
  {
    if (isNull()) {
      return null;
    }
    if (isString()) {
      return (String)value;
    }
    return paramString;
  }
  
  public Object getValue()
  {
    return value;
  }
  
  public int hashCode()
  {
    int i = 17;
    if (value != null) {
      i = value.hashCode() + 527;
    }
    return i;
  }
  
  public boolean isBoolean()
  {
    return value instanceof Boolean;
  }
  
  public boolean isDouble()
  {
    return value instanceof Double;
  }
  
  public boolean isInteger()
  {
    return value instanceof Integer;
  }
  
  public boolean isJsonList()
  {
    return value instanceof JsonList;
  }
  
  public boolean isJsonMap()
  {
    return value instanceof JsonMap;
  }
  
  public boolean isLong()
  {
    return value instanceof Long;
  }
  
  public boolean isNull()
  {
    return value == null;
  }
  
  public boolean isNumber()
  {
    return value instanceof Number;
  }
  
  public boolean isString()
  {
    return value instanceof String;
  }
  
  public String toString()
  {
    if (isNull()) {
      return "null";
    }
    try
    {
      if ((value instanceof String)) {
        return JSONObject.quote((String)value);
      }
      if ((value instanceof Number)) {
        return JSONObject.numberToString((Number)value);
      }
      if (((value instanceof JsonMap)) || ((value instanceof JsonList))) {
        return value.toString();
      }
      String str = String.valueOf(value);
      return str;
    }
    catch (JSONException localJSONException)
    {
      Logger.error("JsonValue - Failed to create JSON String.", localJSONException);
    }
    return "";
  }
  
  void write(JSONStringer paramJSONStringer)
    throws JSONException
  {
    if (isNull())
    {
      paramJSONStringer.value(null);
      return;
    }
    if ((value instanceof JsonList))
    {
      ((JsonList)value).write(paramJSONStringer);
      return;
    }
    if ((value instanceof JsonMap))
    {
      ((JsonMap)value).write(paramJSONStringer);
      return;
    }
    paramJSONStringer.value(value);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(toString());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.json.JsonValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */