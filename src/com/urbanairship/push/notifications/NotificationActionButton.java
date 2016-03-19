package com.urbanairship.push.notifications;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ba;
import android.support.v4.app.bb;
import com.urbanairship.CoreActivity;
import com.urbanairship.CoreReceiver;
import com.urbanairship.push.PushMessage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class NotificationActionButton
{
  private final String description;
  private final Bundle extras;
  private final int iconId;
  private final String id;
  private final boolean isForegroundAction;
  private final int labelId;
  private final List<LocalizableRemoteInput> remoteInputs;
  
  private NotificationActionButton(String paramString1, int paramInt1, int paramInt2, String paramString2, Bundle paramBundle, boolean paramBoolean, List<LocalizableRemoteInput> paramList)
  {
    id = paramString1;
    labelId = paramInt2;
    iconId = paramInt1;
    extras = paramBundle;
    description = paramString2;
    isForegroundAction = paramBoolean;
    remoteInputs = paramList;
  }
  
  ba createAndroidNotificationAction(Context paramContext, String paramString, PushMessage paramPushMessage, int paramInt)
  {
    String str1;
    String str2;
    if (labelId > 0)
    {
      str1 = paramContext.getString(labelId);
      if (description != null) {
        break label190;
      }
      str2 = str1;
      label28:
      paramString = new Intent("com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY").addCategory(UUID.randomUUID().toString()).putExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE", paramPushMessage).putExtra("com.urbanairship.push.NOTIFICATION_ID", paramInt).putExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID", id).putExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD", paramString).putExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND", isForegroundAction).putExtra("com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION", str2);
      if (!isForegroundAction) {
        break label199;
      }
      paramString.setClass(paramContext, CoreActivity.class);
    }
    for (paramString = PendingIntent.getActivity(paramContext, 0, paramString, 0);; paramString = PendingIntent.getBroadcast(paramContext, 0, paramString, 0))
    {
      paramString = new bb(iconId, str1, paramString).a(extras);
      if (remoteInputs == null) {
        break label218;
      }
      paramPushMessage = remoteInputs.iterator();
      while (paramPushMessage.hasNext()) {
        paramString.a(((LocalizableRemoteInput)paramPushMessage.next()).createRemoteInput(paramContext));
      }
      str1 = "";
      break;
      label190:
      str2 = description;
      break label28;
      label199:
      paramString.setClass(paramContext, CoreReceiver.class);
    }
    label218:
    return paramString.a();
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public Bundle getExtras()
  {
    return new Bundle(extras);
  }
  
  public int getIcon()
  {
    return iconId;
  }
  
  public String getId()
  {
    return id;
  }
  
  public int getLabel()
  {
    return labelId;
  }
  
  public List<LocalizableRemoteInput> getRemoteInputs()
  {
    if (remoteInputs == null) {
      return null;
    }
    return new ArrayList(remoteInputs);
  }
  
  public boolean isForegroundAction()
  {
    return isForegroundAction;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.NotificationActionButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */