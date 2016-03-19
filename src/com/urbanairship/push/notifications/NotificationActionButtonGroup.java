package com.urbanairship.push.notifications;

import android.content.Context;
import android.support.v4.app.ba;
import com.urbanairship.Logger;
import com.urbanairship.push.PushMessage;
import com.urbanairship.util.UAStringUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class NotificationActionButtonGroup
{
  private final List<NotificationActionButton> actionButtons;
  
  private NotificationActionButtonGroup(List<NotificationActionButton> paramList)
  {
    actionButtons = new ArrayList(paramList);
  }
  
  List<ba> createAndroidActions(Context paramContext, PushMessage paramPushMessage, int paramInt, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (!UAStringUtil.isEmpty(paramString)) {}
    for (;;)
    {
      NotificationActionButton localNotificationActionButton;
      try
      {
        JSONObject localJSONObject = new JSONObject(paramString);
        paramString = localJSONObject;
        Iterator localIterator = getNotificationActionButtons().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localNotificationActionButton = (NotificationActionButton)localIterator.next();
        if (paramString != null) {
          break label127;
        }
        localJSONObject = null;
        localArrayList.add(localNotificationActionButton.createAndroidNotificationAction(paramContext, localJSONObject, paramPushMessage, paramInt));
        continue;
        paramString = null;
      }
      catch (JSONException localJSONException)
      {
        Logger.error("Failed to parse notification actions payload: " + paramString, localJSONException);
      }
      continue;
      label127:
      String str = paramString.optString(localNotificationActionButton.getId());
    }
    return localArrayList;
  }
  
  public List<NotificationActionButton> getNotificationActionButtons()
  {
    return new ArrayList(actionButtons);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.NotificationActionButtonGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */