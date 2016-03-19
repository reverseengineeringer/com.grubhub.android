package com.urbanairship.json;

import com.urbanairship.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONStringer;

public class JsonList
  implements Iterable<JsonValue>
{
  private final List<JsonValue> list;
  
  public JsonList(List<JsonValue> paramList)
  {
    if (paramList == null) {}
    for (paramList = new ArrayList();; paramList = new ArrayList(paramList))
    {
      list = paramList;
      return;
    }
  }
  
  public boolean contains(JsonValue paramJsonValue)
  {
    return list.contains(paramJsonValue);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof JsonList)) {
      return list.equals(list);
    }
    return false;
  }
  
  public JsonValue get(int paramInt)
  {
    return (JsonValue)list.get(paramInt);
  }
  
  public List<JsonValue> getList()
  {
    return new ArrayList(list);
  }
  
  public int hashCode()
  {
    return list.hashCode();
  }
  
  public int indexOf(JsonValue paramJsonValue)
  {
    return list.indexOf(paramJsonValue);
  }
  
  public boolean isEmpty()
  {
    return list.isEmpty();
  }
  
  public Iterator<JsonValue> iterator()
  {
    return list.iterator();
  }
  
  public int lastIndexOf(JsonValue paramJsonValue)
  {
    return list.indexOf(paramJsonValue);
  }
  
  public int size()
  {
    return list.size();
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
      Logger.error("JsonList - Failed to create JSON String.", localJSONException);
    }
    return "";
  }
  
  void write(JSONStringer paramJSONStringer)
    throws JSONException
  {
    paramJSONStringer.array();
    Iterator localIterator = iterator();
    while (localIterator.hasNext()) {
      ((JsonValue)localIterator.next()).write(paramJSONStringer);
    }
    paramJSONStringer.endArray();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.json.JsonList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */