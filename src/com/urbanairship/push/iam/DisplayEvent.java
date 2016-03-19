package com.urbanairship.push.iam;

import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.Event;
import com.urbanairship.util.UAStringUtil;
import org.json.JSONException;
import org.json.JSONObject;

public class DisplayEvent
  extends Event
{
  private static final String CONVERSION_SEND_ID = "conversion_send_id";
  private static final String ID = "id";
  private static final String TYPE = "in_app_display";
  private final String id;
  
  public DisplayEvent(InAppMessage paramInAppMessage)
  {
    id = paramInAppMessage.getId();
  }
  
  protected final JSONObject getEventData()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.putOpt("id", id);
      localJSONObject.putOpt("conversion_send_id", UAirship.shared().getAnalytics().getConversionSendId());
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Logger.error("DisplayEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
  
  public final String getType()
  {
    return "in_app_display";
  }
  
  public boolean isValid()
  {
    return !UAStringUtil.isEmpty(id);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.DisplayEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */