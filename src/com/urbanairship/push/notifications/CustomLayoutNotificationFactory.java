package com.urbanairship.push.notifications;

import android.app.Notification;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.support.v4.app.bf;
import android.support.v4.app.bs;
import android.widget.RemoteViews;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushMessage;
import com.urbanairship.util.NotificationIDGenerator;
import java.io.IOException;

public class CustomLayoutNotificationFactory
  extends NotificationFactory
{
  public int constantNotificationId = -1;
  public int layout;
  public int layoutIconDrawableId;
  public int layoutIconId;
  public int layoutMessageId;
  public int layoutSubjectId;
  public Uri soundUri;
  public int statusBarIconDrawableId;
  
  public CustomLayoutNotificationFactory(Context paramContext)
  {
    super(paramContext);
    int i = getApplicationInfoicon;
    statusBarIconDrawableId = i;
    layoutIconDrawableId = i;
  }
  
  public Notification createNotification(PushMessage paramPushMessage, int paramInt)
  {
    Object localObject3 = null;
    Object localObject4 = paramPushMessage.getAlert();
    if ((localObject4 == null) || (((String)localObject4).length() == 0)) {
      return null;
    }
    RemoteViews localRemoteViews = new RemoteViews(getContext().getPackageName(), layout);
    if ((layoutIconId == 0) || (layoutSubjectId == 0) || (layoutMessageId == 0))
    {
      Logger.error("The CustomLayoutNotificationFactory object contains an invalid identifier (value of 0). layoutIconId: " + layoutIconId + " layoutSubjectId: " + layoutSubjectId + " layoutMessageId: " + layoutMessageId);
      throw new IllegalArgumentException("Unable to build notification. CustomLayoutNotificationFactory missing required parameter.");
    }
    int i = layoutSubjectId;
    Object localObject1;
    if (paramPushMessage.getTitle() != null) {
      localObject1 = paramPushMessage.getTitle();
    }
    for (;;)
    {
      localRemoteViews.setTextViewText(i, (CharSequence)localObject1);
      localRemoteViews.setTextViewText(layoutMessageId, (CharSequence)localObject4);
      localRemoteViews.setImageViewResource(layoutIconId, layoutIconDrawableId);
      localObject4 = new bf(getContext()).a(localRemoteViews).a(true).a(statusBarIconDrawableId).b(paramPushMessage.isLocalOnly()).c(paramPushMessage.getPriority()).a(paramPushMessage.getCategory()).e(paramPushMessage.getVisibility());
      localObject1 = createPublicVersionNotification(paramPushMessage, layoutIconId);
      if (localObject1 != null) {
        ((bf)localObject4).a((Notification)localObject1);
      }
      i = 3;
      if (soundUri != null)
      {
        ((bf)localObject4).a(soundUri);
        i = 2;
      }
      ((bf)localObject4).b(i);
      try
      {
        localObject1 = createNotificationStyle(paramPushMessage);
        if (localObject1 != null) {
          ((bf)localObject4).a((bs)localObject1);
        }
        if (paramPushMessage.isLocalOnly()) {}
      }
      catch (IOException localIOException1)
      {
        try
        {
          ((bf)localObject4).a(createWearableExtender(paramPushMessage, paramInt));
          ((bf)localObject4).a(createNotificationActionsExtender(paramPushMessage, paramInt));
          paramPushMessage = ((bf)localObject4).b();
          contentView = localRemoteViews;
          return paramPushMessage;
          localObject1 = UAirship.getAppName();
          continue;
          localIOException1 = localIOException1;
          Logger.error("Failed to create notification style.", localIOException1);
          Object localObject2 = localObject3;
        }
        catch (IOException localIOException2)
        {
          for (;;)
          {
            Logger.error("Failed to create wearable extender.", localIOException2);
          }
        }
      }
    }
  }
  
  public int getNextId(PushMessage paramPushMessage)
  {
    if (constantNotificationId > 0) {
      return constantNotificationId;
    }
    return NotificationIDGenerator.nextID();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.CustomLayoutNotificationFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */