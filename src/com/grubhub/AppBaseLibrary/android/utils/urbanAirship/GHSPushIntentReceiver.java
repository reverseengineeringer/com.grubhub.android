package com.grubhub.AppBaseLibrary.android.utils.urbanAirship;

import android.content.Context;
import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.urbanairship.push.BaseIntentReceiver;
import com.urbanairship.push.PushMessage;

public class GHSPushIntentReceiver
  extends BaseIntentReceiver
{
  private static final String a = GHSApplication.class.getSimpleName();
  
  protected void onBackgroundPushReceived(Context paramContext, PushMessage paramPushMessage)
  {
    if (paramPushMessage != null)
    {
      a.a(a, "Received background push. Message: " + paramPushMessage);
      return;
    }
    a.a(a, "Received background push. Message is null!");
  }
  
  protected void onChannelRegistrationFailed(Context paramContext)
  {
    a.a(a, "Channel registration failed.");
  }
  
  protected void onChannelRegistrationSucceeded(Context paramContext, String paramString)
  {
    a.a(a, "Channel registration updated. Channel Id:" + paramString + ".");
  }
  
  protected boolean onNotificationActionOpened(Context paramContext, PushMessage paramPushMessage, int paramInt, String paramString, boolean paramBoolean)
  {
    if (paramPushMessage != null) {
      a.a(a, "User clicked notification button. Button ID: " + paramString + " Alert: " + paramPushMessage.getAlert());
    }
    for (;;)
    {
      return false;
      a.a(a, "User clicked notification button. Message is null!");
    }
  }
  
  protected void onNotificationDismissed(Context paramContext, PushMessage paramPushMessage, int paramInt)
  {
    if (paramPushMessage != null)
    {
      a.a(a, "Notification dismissed. Alert: " + paramPushMessage.getAlert() + ". Notification ID: " + paramInt);
      return;
    }
    a.a(a, "Notification dismissed. Message is null!");
  }
  
  protected boolean onNotificationOpened(Context paramContext, PushMessage paramPushMessage, int paramInt)
  {
    if (paramPushMessage != null)
    {
      a.a(a, "User clicked notification. Alert: " + paramPushMessage.getAlert());
      Object localObject = paramPushMessage.getPushBundle();
      if (localObject != null)
      {
        ((Bundle)localObject).getString("type");
        paramContext = ((Bundle)localObject).getString("utm_source");
        paramPushMessage = ((Bundle)localObject).getString("utm_medium");
        String str1 = ((Bundle)localObject).getString("utm_campaign");
        String str2 = ((Bundle)localObject).getString("utm_content");
        String str3 = ((Bundle)localObject).getString("event_category");
        String str4 = ((Bundle)localObject).getString("event_action");
        localObject = ((Bundle)localObject).getString("event_label");
        h.a().a(paramPushMessage, paramContext, str1, str2, null);
        if ((f.b(str3)) && (f.b(str4)) && (f.b((String)localObject))) {
          h.a().a(new c(str3, str4, (String)localObject));
        }
      }
    }
    for (;;)
    {
      return false;
      a.a(a, "User clicked notification. No Extras!");
      continue;
      a.a(a, "User clicked notification. Message is null!");
    }
  }
  
  protected void onPushReceived(Context paramContext, PushMessage paramPushMessage, int paramInt)
  {
    if (paramPushMessage != null)
    {
      a.a(a, "Received push notification. Alert: " + paramPushMessage.getAlert() + ". Notification ID: " + paramInt);
      return;
    }
    a.a(a, "Received push notification. Message is null!");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.urbanAirship.GHSPushIntentReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */