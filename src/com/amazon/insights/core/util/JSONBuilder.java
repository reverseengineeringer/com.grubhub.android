package com.amazon.insights.core.util;

import org.json.JSONException;
import org.json.JSONObject;

public class JSONBuilder
  implements JSONSerializable
{
  private JSONObject json = new JSONObject();
  
  public JSONBuilder(Object paramObject)
  {
    if (paramObject != null)
    {
      withAttribute("class", paramObject.getClass().getName());
      withAttribute("hashCode", Integer.toHexString(paramObject.hashCode()));
    }
  }
  
  public JSONObject toJSONObject()
  {
    return json;
  }
  
  public String toString()
  {
    try
    {
      if (json != null) {
        return json.toString(4);
      }
      return "";
    }
    catch (JSONException localJSONException) {}
    return json.toString();
  }
  
  public JSONBuilder withAttribute(String paramString, Object paramObject)
  {
    Object localObject = paramObject;
    if ((paramObject instanceof JSONSerializable)) {
      localObject = ((JSONSerializable)paramObject).toJSONObject();
    }
    try
    {
      json.putOpt(paramString, localObject);
      return this;
    }
    catch (JSONException paramString) {}
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.util.JSONBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */