package com.urbanairship;

import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.cj;
import com.urbanairship.actions.ActionService;
import com.urbanairship.actions.Situation;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.Event;
import com.urbanairship.analytics.InteractiveNotificationEvent;
import com.urbanairship.push.PushMessage;
import com.urbanairship.push.iam.InAppMessage;
import com.urbanairship.push.iam.InAppMessageManager;
import com.urbanairship.push.iam.ResolutionEvent;
import com.urbanairship.util.UAStringUtil;

public class CoreReceiver
  extends BroadcastReceiver
{
  private static void clearInAppMessage(String paramString)
  {
    if (UAStringUtil.isEmpty(paramString)) {}
    InAppMessageManager localInAppMessageManager;
    InAppMessage localInAppMessage1;
    InAppMessage localInAppMessage2;
    do
    {
      return;
      localInAppMessageManager = UAirship.shared().getInAppMessageManager();
      localInAppMessage1 = localInAppMessageManager.getPendingMessage();
      localInAppMessage2 = localInAppMessageManager.getCurrentMessage();
    } while ((localInAppMessage1 == null) || (!paramString.equals(localInAppMessage1.getId())) || (localInAppMessage1.equals(localInAppMessage2)));
    Logger.info("Clearing pending in-app message due to directly interacting with the message's push notification.");
    localInAppMessageManager.setPendingMessage(null);
    paramString = ResolutionEvent.createDirectOpenResolutionEvent(localInAppMessage1);
    UAirship.shared().getAnalytics().addEvent(paramString);
  }
  
  static void handleChannelCapture(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.hasExtra("com.urbanairship.EXTRA_NOTIFICATION_ID"))
    {
      int i = paramIntent.getIntExtra("com.urbanairship.EXTRA_NOTIFICATION_ID", -1);
      cj.a(paramContext).a(i);
    }
    paramIntent = paramIntent.getStringExtra("com.urbanairship.EXTRA_ACTIONS");
    if (!UAStringUtil.isEmpty(paramIntent))
    {
      Logger.debug("Running actions for notification action: " + paramIntent);
      ActionService.runActions(paramContext, paramIntent, Situation.MANUAL_INVOCATION, null);
    }
  }
  
  static void handleNotificationButtonOpenedProxy(Context paramContext, Intent paramIntent)
  {
    Object localObject = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
    if (localObject == null)
    {
      Logger.error("CoreReceiver - Intent is missing push message for: " + paramIntent.getAction());
      return;
    }
    String str1 = paramIntent.getStringExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID");
    if (str1 == null)
    {
      Logger.error("CoreReceiver - Intent is missing notification button ID: " + paramIntent.getAction());
      return;
    }
    int i = paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
    boolean bool = paramIntent.getBooleanExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND", true);
    String str2 = paramIntent.getStringExtra("com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION");
    Logger.info("Notification opened ID: " + i + " action button Id: " + str1);
    if (bool) {
      UAirship.shared().getAnalytics().setConversionSendId(((PushMessage)localObject).getSendId());
    }
    clearInAppMessage(((PushMessage)localObject).getSendId());
    cj.a(paramContext).a(i);
    localObject = new InteractiveNotificationEvent((PushMessage)localObject, str1, str2, bool);
    UAirship.shared().getAnalytics().addEvent((Event)localObject);
    paramContext.sendOrderedBroadcast(new Intent("com.urbanairship.push.OPENED").putExtras(paramIntent.getExtras()).setPackage(UAirship.getPackageName()).addCategory(UAirship.getPackageName()), UAirship.getUrbanAirshipPermission());
  }
  
  private void handleNotificationDismissedProxy(Context paramContext, Intent paramIntent)
  {
    if ((PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE") == null)
    {
      Logger.error("CoreReceiver - Intent is missing push message for: " + paramIntent.getAction());
      return;
    }
    int i = paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
    Logger.info("Notification dismissed ID: " + i);
    PendingIntent localPendingIntent = (PendingIntent)paramIntent.getExtras().get("com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT");
    if (localPendingIntent != null) {}
    try
    {
      localPendingIntent.send();
      paramContext.sendOrderedBroadcast(new Intent("com.urbanairship.push.DISMISSED").putExtras(paramIntent.getExtras()).setPackage(UAirship.getPackageName()).addCategory(UAirship.getPackageName()), UAirship.getUrbanAirshipPermission());
      return;
    }
    catch (PendingIntent.CanceledException localCanceledException)
    {
      for (;;)
      {
        Logger.debug("Failed to send notification's deleteIntent, already canceled.");
      }
    }
  }
  
  private void handleNotificationOpened(Context paramContext, Intent paramIntent)
  {
    Object localObject = UAirship.shared().getAirshipConfigOptions();
    PushMessage localPushMessage = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
    if (localPushMessage == null) {
      Logger.error("CoreReceiver - Intent is missing push message for: " + paramIntent.getAction());
    }
    boolean bool;
    String str;
    do
    {
      return;
      if (!paramIntent.hasExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID")) {
        break;
      }
      bool = paramIntent.getBooleanExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND", false);
      str = paramIntent.getStringExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD");
      if ((bool) && (getResultCode() != 1) && (autoLaunchApplication) && (launchApplication(paramContext)) && (isOrderedBroadcast())) {
        setResultCode(1);
      }
    } while (UAStringUtil.isEmpty(str));
    Logger.debug("Running actions for notification action: " + str);
    if (bool) {}
    for (paramIntent = Situation.FOREGROUND_NOTIFICATION_ACTION_BUTTON;; paramIntent = Situation.BACKGROUND_NOTIFICATION_ACTION_BUTTON)
    {
      localObject = new Bundle();
      ((Bundle)localObject).putParcelable("com.urbanairship.PUSH_MESSAGE", localPushMessage);
      ActionService.runActions(paramContext, str, paramIntent, (Bundle)localObject);
      return;
    }
    if (getResultCode() != 1)
    {
      paramIntent = (PendingIntent)paramIntent.getExtras().get("com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT");
      if (paramIntent == null) {
        break label273;
      }
    }
    for (;;)
    {
      try
      {
        paramIntent.send();
        if (isOrderedBroadcast()) {
          setResultCode(1);
        }
        paramIntent = new Bundle();
        paramIntent.putParcelable("com.urbanairship.PUSH_MESSAGE", localPushMessage);
        ActionService.runActions(paramContext, localPushMessage.getActions(), Situation.PUSH_OPENED, paramIntent);
        return;
      }
      catch (PendingIntent.CanceledException paramIntent)
      {
        Logger.debug("Failed to send notification's contentIntent, already canceled.");
        continue;
      }
      label273:
      if ((autoLaunchApplication) && (launchApplication(paramContext)) && (isOrderedBroadcast())) {
        setResultCode(1);
      }
    }
  }
  
  static void handleNotificationOpenedProxy(Context paramContext, Intent paramIntent)
  {
    PushMessage localPushMessage = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
    if (localPushMessage == null)
    {
      Logger.error("CoreReceiver - Intent is missing push message for: " + paramIntent.getAction());
      return;
    }
    int i = paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
    Logger.info("Notification opened ID: " + i);
    UAirship.shared().getAnalytics().setConversionSendId(localPushMessage.getSendId());
    clearInAppMessage(localPushMessage.getSendId());
    paramContext.sendOrderedBroadcast(new Intent("com.urbanairship.push.OPENED").putExtras(paramIntent.getExtras()).setPackage(UAirship.getPackageName()).addCategory(UAirship.getPackageName()), UAirship.getUrbanAirshipPermission());
  }
  
  private boolean launchApplication(Context paramContext)
  {
    Intent localIntent = paramContext.getPackageManager().getLaunchIntentForPackage(UAirship.getPackageName());
    if (localIntent != null)
    {
      localIntent.setFlags(805306368);
      Logger.info("Starting application's launch intent.");
      paramContext.startActivity(localIntent);
      return true;
    }
    Logger.info("Unable to launch application. Launch intent is unavailable.");
    return false;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Autopilot.automaticTakeOff(paramContext);
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {
      return;
    }
    Logger.verbose("CoreReceiver - Received intent: " + paramIntent.getAction());
    String str = paramIntent.getAction();
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
      case 0: 
        handleNotificationOpenedProxy(paramContext, paramIntent);
        return;
        if (str.equals("com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY"))
        {
          i = 0;
          continue;
          if (str.equals("com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY"))
          {
            i = 1;
            continue;
            if (str.equals("com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY"))
            {
              i = 2;
              continue;
              if (str.equals("com.urbanairship.push.OPENED"))
              {
                i = 3;
                continue;
                if (str.equals("com.urbanairship.ACTION_CHANNEL_CAPTURE")) {
                  i = 4;
                }
              }
            }
          }
        }
        break;
      }
    }
    handleNotificationButtonOpenedProxy(paramContext, paramIntent);
    return;
    handleNotificationDismissedProxy(paramContext, paramIntent);
    return;
    handleNotificationOpened(paramContext, paramIntent);
    return;
    handleChannelCapture(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.CoreReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */