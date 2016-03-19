package com.urbanairship.analytics;

import com.urbanairship.Logger;
import com.urbanairship.push.PushMessage;
import org.json.JSONException;
import org.json.JSONObject;

public class InteractiveNotificationEvent
  extends Event
{
  private static final String BUTTON_DESCRIPTION_KEY = "button_description";
  private static final String BUTTON_GROUP_KEY = "button_group";
  private static final String BUTTON_ID_KEY = "button_id";
  private static final String FOREGROUND_KEY = "foreground";
  private static final String SEND_ID_KEY = "send_id";
  private static final String TYPE = "interactive_notification_action";
  private final String buttonDescription;
  private final String buttonGroupId;
  private final String buttonId;
  private final boolean isForeground;
  private final String sendId;
  
  public InteractiveNotificationEvent(PushMessage paramPushMessage, String paramString1, String paramString2, boolean paramBoolean)
  {
    sendId = paramPushMessage.getSendId();
    buttonGroupId = paramPushMessage.getInteractiveNotificationType();
    buttonId = paramString1;
    buttonDescription = paramString2;
    isForeground = paramBoolean;
  }
  
  protected final JSONObject getEventData()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("send_id", sendId);
      localJSONObject.put("button_group", buttonGroupId);
      localJSONObject.put("button_id", buttonId);
      localJSONObject.put("button_description", buttonDescription);
      localJSONObject.put("foreground", isForeground);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Logger.error("InteractiveNotificationEvent - Error constructing JSON data.", localJSONException);
    }
    return localJSONObject;
  }
  
  public final String getType()
  {
    return "interactive_notification_action";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.InteractiveNotificationEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */