package com.urbanairship.push.notifications;

import android.app.Notification;
import android.content.Context;
import android.support.v4.app.bf;
import com.urbanairship.push.PushMessage;
import com.urbanairship.util.UAStringUtil;

public class SystemNotificationFactory
  extends DefaultNotificationFactory
{
  public SystemNotificationFactory(Context paramContext)
  {
    super(paramContext);
  }
  
  public Notification createNotification(PushMessage paramPushMessage, int paramInt)
  {
    if (UAStringUtil.isEmpty(paramPushMessage.getAlert())) {
      return null;
    }
    return createNotificationBuilder(paramPushMessage, paramInt, null).b();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.SystemNotificationFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */