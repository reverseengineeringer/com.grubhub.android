package com.urbanairship.push.iam;

import android.content.Context;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.Event;
import com.urbanairship.push.notifications.NotificationActionButton;
import com.urbanairship.util.DateUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ResolutionEvent
  extends Event
{
  private static final String BUTTON_DESCRIPTION = "button_description";
  private static final String BUTTON_GROUP = "button_group";
  private static final String BUTTON_ID = "button_id";
  private static final String CONVERSION_SEND_ID = "conversion_send_id";
  private static final String DISPLAY_TIME = "display_time";
  private static final String EXPIRY = "expiry";
  private static final String ID = "id";
  private static final String REPLACEMENT_ID = "replacement_id";
  private static final String RESOLUTION = "resolution";
  private static final String RESOLUTION_BUTTON_CLICK = "button_click";
  private static final String RESOLUTION_DIRECT_OPEN = "direct_open";
  private static final String RESOLUTION_EXPIRED = "expired";
  private static final String RESOLUTION_MESSAGE_CLICK = "message_click";
  private static final String RESOLUTION_REPLACED = "replaced";
  private static final String RESOLUTION_TIMED_OUT = "timed_out";
  private static final String RESOLUTION_TYPE = "type";
  private static final String RESOLUTION_USER_DISMISSED = "user_dismissed";
  private static final String TYPE = "in_app_resolution";
  private final String id;
  private final Map<String, Object> resolutionData;
  
  private ResolutionEvent(String paramString, Map<String, Object> paramMap)
  {
    id = paramString;
    resolutionData = paramMap;
  }
  
  public static ResolutionEvent createButtonClickedResolutionEvent(Context paramContext, InAppMessage paramInAppMessage, NotificationActionButton paramNotificationActionButton, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "button_click");
    localHashMap.put("button_id", paramNotificationActionButton.getId());
    localHashMap.put("button_group", paramInAppMessage.getButtonGroupId());
    localHashMap.put("display_time", millisecondsToSecondsString(paramLong));
    if (paramNotificationActionButton.getDescription() != null) {
      localHashMap.put("button_description", paramNotificationActionButton.getDescription());
    }
    for (;;)
    {
      return new ResolutionEvent(paramInAppMessage.getId(), localHashMap);
      if (paramNotificationActionButton.getLabel() > 0) {
        localHashMap.put("button_description", paramContext.getString(paramNotificationActionButton.getLabel()));
      }
    }
  }
  
  public static ResolutionEvent createClickedResolutionEvent(InAppMessage paramInAppMessage, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "message_click");
    localHashMap.put("display_time", millisecondsToSecondsString(paramLong));
    return new ResolutionEvent(paramInAppMessage.getId(), localHashMap);
  }
  
  public static ResolutionEvent createDirectOpenResolutionEvent(InAppMessage paramInAppMessage)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "direct_open");
    return new ResolutionEvent(paramInAppMessage.getId(), localHashMap);
  }
  
  public static ResolutionEvent createExpiredResolutionEvent(InAppMessage paramInAppMessage)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "expired");
    localHashMap.put("expiry", DateUtils.createIso8601TimeStamp(paramInAppMessage.getExpiry()));
    return new ResolutionEvent(paramInAppMessage.getId(), localHashMap);
  }
  
  public static ResolutionEvent createReplacedResolutionEvent(InAppMessage paramInAppMessage1, InAppMessage paramInAppMessage2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "replaced");
    localHashMap.put("replacement_id", paramInAppMessage2.getId());
    return new ResolutionEvent(paramInAppMessage1.getId(), localHashMap);
  }
  
  public static ResolutionEvent createTimedOutResolutionEvent(InAppMessage paramInAppMessage, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "timed_out");
    localHashMap.put("display_time", millisecondsToSecondsString(paramLong));
    return new ResolutionEvent(paramInAppMessage.getId(), localHashMap);
  }
  
  public static ResolutionEvent createUserDismissedResolutionEvent(InAppMessage paramInAppMessage, long paramLong)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "user_dismissed");
    localHashMap.put("display_time", millisecondsToSecondsString(paramLong));
    return new ResolutionEvent(paramInAppMessage.getId(), localHashMap);
  }
  
  protected final JSONObject getEventData()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.putOpt("id", id);
      localJSONObject.putOpt("resolution", new JSONObject(resolutionData));
      localJSONObject.putOpt("conversion_send_id", UAirship.shared().getAnalytics().getConversionSendId());
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Logger.error("ResolutionEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
  
  public final String getType()
  {
    return "in_app_resolution";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.ResolutionEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */