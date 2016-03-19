package com.urbanairship.analytics;

import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.UAStringUtil;
import org.json.JSONException;
import org.json.JSONObject;

class AppBackgroundEvent
  extends Event
{
  static final String TYPE = "app_background";
  
  AppBackgroundEvent(long paramLong)
  {
    super(paramLong);
  }
  
  protected final JSONObject getEventData()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("connection_type", getConnectionType());
      String str = getConnectionSubType();
      if (!UAStringUtil.isEmpty(str)) {
        localJSONObject.put("connection_subtype", str);
      }
      localJSONObject.put("push_id", UAirship.shared().getAnalytics().getConversionSendId());
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Logger.error("AppBackgroundEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
  
  public final String getType()
  {
    return "app_background";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.AppBackgroundEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */