package com.urbanairship.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;

public abstract class BaseIntentReceiver
  extends BroadcastReceiver
{
  public static final int RESULT_ACTIVITY_LAUNCHED = 1;
  public static final int RESULT_ACTIVITY_NOT_LAUNCHED = -1;
  
  private void handleDismissedIntent(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
    PushMessage localPushMessage = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
    if (localPushMessage == null)
    {
      Logger.error("BaseIntentReceiver - Intent is missing push message for: " + paramIntent.getAction());
      return;
    }
    onNotificationDismissed(paramContext, localPushMessage, i);
  }
  
  private void handlePushOpened(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1);
    PushMessage localPushMessage = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
    if (localPushMessage == null)
    {
      Logger.error("BaseIntentReceiver - Intent is missing push message for: " + paramIntent.getAction());
      return;
    }
    boolean bool;
    if (paramIntent.hasExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"))
    {
      bool = onNotificationActionOpened(paramContext, localPushMessage, i, paramIntent.getStringExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID"), paramIntent.getBooleanExtra("com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND", false));
      label82:
      if ((!isOrderedBroadcast()) || (getResultCode() == 1)) {
        break label121;
      }
      if (!bool) {
        break label123;
      }
    }
    label121:
    label123:
    for (i = 1;; i = -1)
    {
      setResultCode(i);
      return;
      bool = onNotificationOpened(paramContext, localPushMessage, i);
      break label82;
      break;
    }
  }
  
  private void handlePushReceived(Context paramContext, Intent paramIntent)
  {
    PushMessage localPushMessage = (PushMessage)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE");
    if (localPushMessage == null)
    {
      Logger.error("BaseIntentReceiver - Intent is missing push message for: " + paramIntent.getAction());
      return;
    }
    if (paramIntent.hasExtra("com.urbanairship.push.NOTIFICATION_ID"))
    {
      onPushReceived(paramContext, localPushMessage, paramIntent.getIntExtra("com.urbanairship.push.NOTIFICATION_ID", -1));
      return;
    }
    onBackgroundPushReceived(paramContext, localPushMessage);
  }
  
  private void handleRegistrationIntent(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.hasExtra("com.urbanairship.push.EXTRA_ERROR"))
    {
      onChannelRegistrationFailed(paramContext);
      return;
    }
    String str = paramIntent.getStringExtra("com.urbanairship.push.EXTRA_CHANNEL_ID");
    if (str == null)
    {
      Logger.error("BaseIntentReceiver - Intent is missing channel ID for: " + paramIntent.getAction());
      return;
    }
    onChannelRegistrationSucceeded(paramContext, str);
  }
  
  protected abstract void onBackgroundPushReceived(Context paramContext, PushMessage paramPushMessage);
  
  protected abstract void onChannelRegistrationFailed(Context paramContext);
  
  protected abstract void onChannelRegistrationSucceeded(Context paramContext, String paramString);
  
  protected abstract boolean onNotificationActionOpened(Context paramContext, PushMessage paramPushMessage, int paramInt, String paramString, boolean paramBoolean);
  
  protected void onNotificationDismissed(Context paramContext, PushMessage paramPushMessage, int paramInt) {}
  
  protected abstract boolean onNotificationOpened(Context paramContext, PushMessage paramPushMessage, int paramInt);
  
  protected abstract void onPushReceived(Context paramContext, PushMessage paramPushMessage, int paramInt);
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Autopilot.automaticTakeOff(paramContext);
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {
      return;
    }
    String str = paramIntent.getAction();
    Logger.info(getClass().getSimpleName() + " - Received intent with action: " + str);
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
        handlePushReceived(paramContext, paramIntent);
        return;
        if (str.equals("com.urbanairship.push.RECEIVED"))
        {
          i = 0;
          continue;
          if (str.equals("com.urbanairship.push.OPENED"))
          {
            i = 1;
            continue;
            if (str.equals("com.urbanairship.push.CHANNEL_UPDATED"))
            {
              i = 2;
              continue;
              if (str.equals("com.urbanairship.push.DISMISSED")) {
                i = 3;
              }
            }
          }
        }
        break;
      }
    }
    handlePushOpened(paramContext, paramIntent);
    return;
    handleRegistrationIntent(paramContext, paramIntent);
    return;
    handleDismissedIntent(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.BaseIntentReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */