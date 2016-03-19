package com.urbanairship.analytics;

import com.urbanairship.Logger;
import com.urbanairship.util.UAStringUtil;
import org.json.JSONException;
import org.json.JSONObject;

public class PushArrivedEvent
  extends Event
{
  static final String TYPE = "push_arrived";
  private final String pushId;
  
  public PushArrivedEvent(String paramString)
  {
    pushId = paramString;
  }
  
  protected final JSONObject getEventData()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("push_id", pushId);
      localJSONObject.put("connection_type", getConnectionType());
      String str = getConnectionSubType();
      if (!UAStringUtil.isEmpty(str)) {
        localJSONObject.put("connection_subtype", str);
      }
      localJSONObject.put("carrier", getCarrier());
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Logger.error("PushArrivedEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
  
  public final String getType()
  {
    return "push_arrived";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.PushArrivedEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */