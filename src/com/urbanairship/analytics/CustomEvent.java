package com.urbanairship.analytics;

import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import com.urbanairship.util.UAStringUtil;
import java.math.BigDecimal;
import org.json.JSONException;
import org.json.JSONObject;

public class CustomEvent
  extends Event
{
  public static final String CONVERSION_SEND_ID = "conversion_send_id";
  public static final String EVENT_NAME = "event_name";
  public static final String EVENT_VALUE = "event_value";
  public static final String INTERACTION_ID = "interaction_id";
  public static final String INTERACTION_TYPE = "interaction_type";
  public static final String LAST_RECEIVED_SEND_ID = "last_received_send_id";
  private static final int MAX_CHARACTER_LENGTH = 255;
  private static final BigDecimal MAX_VALUE = new BigDecimal(Integer.MAX_VALUE);
  public static final String MCRAP_TRANSACTION_TYPE = "ua_mcrap";
  private static final BigDecimal MIN_VALUE = new BigDecimal(Integer.MIN_VALUE);
  public static final String TRANSACTION_ID = "transaction_id";
  private static final String TYPE = "custom_event";
  private String eventName;
  private Long eventValue;
  private String interactionId;
  private String interactionType;
  private String sendId;
  private String transactionId;
  
  protected final JSONObject getEventData()
  {
    JSONObject localJSONObject = new JSONObject();
    String str = UAirship.shared().getAnalytics().getConversionSendId();
    try
    {
      localJSONObject.putOpt("event_name", eventName);
      localJSONObject.putOpt("event_value", eventValue);
      localJSONObject.putOpt("interaction_id", interactionId);
      localJSONObject.putOpt("interaction_type", interactionType);
      localJSONObject.putOpt("transaction_id", transactionId);
      if (!UAStringUtil.isEmpty(sendId))
      {
        localJSONObject.putOpt("conversion_send_id", sendId);
        return localJSONObject;
      }
      if (str != null)
      {
        localJSONObject.putOpt("conversion_send_id", str);
        return localJSONObject;
      }
    }
    catch (JSONException localJSONException)
    {
      Logger.error("CustomEvent - Error constructing JSON data.", localJSONException);
      return localJSONObject;
    }
    localJSONObject.putOpt("last_received_send_id", UAirship.shared().getPushManager().getLastReceivedSendId());
    return localJSONObject;
  }
  
  public final String getType()
  {
    return "custom_event";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.CustomEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */