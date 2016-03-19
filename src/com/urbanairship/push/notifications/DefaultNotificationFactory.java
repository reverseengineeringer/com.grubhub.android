package com.urbanairship.push.notifications;

import android.app.Notification;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.v4.app.be;
import android.support.v4.app.bf;
import android.support.v4.app.bs;
import com.urbanairship.Logger;
import com.urbanairship.push.PushMessage;
import com.urbanairship.util.NotificationIDGenerator;
import com.urbanairship.util.UAStringUtil;
import java.io.IOException;

public class DefaultNotificationFactory
  extends NotificationFactory
{
  private int accentColor = 0;
  private int constantNotificationId = -1;
  private int largeIcon;
  private int smallIconId;
  private Uri sound = null;
  private int titleId;
  
  public DefaultNotificationFactory(Context paramContext)
  {
    super(paramContext);
    titleId = getApplicationInfolabelRes;
    smallIconId = getApplicationInfoicon;
  }
  
  public Notification createNotification(PushMessage paramPushMessage, int paramInt)
  {
    if (UAStringUtil.isEmpty(paramPushMessage.getAlert())) {
      return null;
    }
    return createNotificationBuilder(paramPushMessage, paramInt, new be().c(paramPushMessage.getAlert())).b();
  }
  
  protected bf createNotificationBuilder(PushMessage paramPushMessage, int paramInt, bs parambs)
  {
    Object localObject;
    if (UAStringUtil.isEmpty(paramPushMessage.getTitle())) {
      localObject = getDefaultTitle();
    }
    for (;;)
    {
      bf localbf = new bf(getContext()).a((CharSequence)localObject).b(paramPushMessage.getAlert()).a(true).a(smallIconId).d(accentColor).b(paramPushMessage.isLocalOnly()).c(paramPushMessage.getPriority()).a(paramPushMessage.getCategory()).e(paramPushMessage.getVisibility());
      localObject = createPublicVersionNotification(paramPushMessage, smallIconId);
      if (localObject != null) {
        localbf.a((Notification)localObject);
      }
      int i = 3;
      if (sound != null)
      {
        localbf.a(sound);
        i = 2;
      }
      localbf.b(i);
      if (largeIcon > 0) {
        localbf.a(BitmapFactory.decodeResource(getContext().getResources(), largeIcon));
      }
      if (paramPushMessage.getSummary() != null) {
        localbf.c(paramPushMessage.getSummary());
      }
      localObject = null;
      try
      {
        bs localbs = createNotificationStyle(paramPushMessage);
        localObject = localbs;
        if (localObject != null)
        {
          localbf.a((bs)localObject);
          if (paramPushMessage.isLocalOnly()) {}
        }
      }
      catch (IOException localIOException)
      {
        try
        {
          do
          {
            for (;;)
            {
              localbf.a(createWearableExtender(paramPushMessage, paramInt));
              localbf.a(createNotificationActionsExtender(paramPushMessage, paramInt));
              return localbf;
              localObject = paramPushMessage.getTitle();
              break;
              localIOException = localIOException;
              Logger.error("Failed to create notification style.", localIOException);
            }
          } while (parambs == null);
          localbf.a(parambs);
        }
        catch (IOException parambs)
        {
          for (;;)
          {
            Logger.error("Failed to create wearable extender.", parambs);
          }
        }
      }
    }
  }
  
  public int getColor()
  {
    return accentColor;
  }
  
  public int getConstantNotificationId()
  {
    return constantNotificationId;
  }
  
  protected String getDefaultTitle()
  {
    if (getTitleId() == 0) {
      return getContext().getPackageManager().getApplicationLabel(getContext().getApplicationInfo()).toString();
    }
    if (getTitleId() > 0) {
      return getContext().getString(getTitleId());
    }
    return "";
  }
  
  public int getLargeIcon()
  {
    return largeIcon;
  }
  
  public int getNextId(PushMessage paramPushMessage)
  {
    if (constantNotificationId > 0) {
      return constantNotificationId;
    }
    return NotificationIDGenerator.nextID();
  }
  
  public int getSmallIconId()
  {
    return smallIconId;
  }
  
  public Uri getSound()
  {
    return sound;
  }
  
  public int getTitleId()
  {
    return titleId;
  }
  
  public void setColor(int paramInt)
  {
    accentColor = paramInt;
  }
  
  public void setConstantNotificationId(int paramInt)
  {
    constantNotificationId = paramInt;
  }
  
  public void setLargeIcon(int paramInt)
  {
    largeIcon = paramInt;
  }
  
  public void setSmallIconId(int paramInt)
  {
    smallIconId = paramInt;
  }
  
  public void setSound(Uri paramUri)
  {
    sound = paramUri;
  }
  
  public void setTitleId(int paramInt)
  {
    titleId = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.DefaultNotificationFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */