package com.urbanairship.json;

import com.urbanairship.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONStringer;

public class JsonMap
  implements Iterable<Map.Entry<String, JsonValue>>
{
  private final Map<String, JsonValue> map;
  
  public JsonMap(Map<String, JsonValue> paramMap)
  {
    if (paramMap == null) {}
    for (paramMap = new HashMap();; paramMap = new HashMap(paramMap))
    {
      map = paramMap;
      return;
    }
  }
  
  public boolean containsKey(String paramString)
  {
    return map.containsKey(paramString);
  }
  
  public boolean containsValue(JsonValue paramJsonValue)
  {
    return map.containsValue(paramJsonValue);
  }
  
  public Set<Map.Entry<String, JsonValue>> entrySet()
  {
    return map.entrySet();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof JsonMap)) {
      return map.equals(map);
    }
    return false;
  }
  
  public JsonValue get(String paramString)
  {
    return (JsonValue)map.get(paramString);
  }
  
  public Map<String, JsonValue> getMap()
  {
    return new HashMap(map);
  }
  
  public int hashCode()
  {
    return map.hashCode();
  }
  
  public boolean isEmpty()
  {
    return map.isEmpty();
  }
  
  public Iterator<Map.Entry<String, JsonValue>> iterator()
  {
    return entrySet().iterator();
  }
  
  public Set<String> keySet()
  {
    return map.keySet();
  }
  
  public JsonValue opt(String paramString)
  {
    paramString = get(paramString);
    if (paramString != null) {
      return paramString;
    }
    return JsonValue.NULL;
  }
  
  public int size()
  {
    return map.size();
  }
  
  public String toString()
  {
    try
    {
      Object localObject = new JSONStringer();
      write((JSONStringer)localObject);
      localObject = ((JSONStringer)localObject).toString();
      return (String)localObject;
    }
    catch (JSONException localJSONException)
    {
      Logger.error("JsonMap - Failed to create JSON String.", localJSONException);
    }
    return "";
  }
  
  public Collection<JsonValue> values()
  {
    return new ArrayList(map.values());
  }
  
  void write(JSONStringer paramJSONStringer)
    throws JSONException
  {
    paramJSONStringer.object();
    Iterator localIterator = entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramJSONStringer.key((String)localEntry.getKey());
      ((JsonValue)localEntry.getValue()).write(paramJSONStringer);
    }
    paramJSONStringer.endObject();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.json.JsonMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */