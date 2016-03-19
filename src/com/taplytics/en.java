package com.taplytics;

import org.json.JSONException;
import org.json.JSONObject;

public class en
  extends JSONObject
{
  public en(JSONObject paramJSONObject)
    throws JSONException
  {
    super(paramJSONObject.toString());
  }
  
  public boolean a(String paramString)
  {
    return (has(paramString)) && (!isNull(paramString));
  }
  
  public en b(String paramString)
    throws JSONException
  {
    return new en(getJSONObject(paramString));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */