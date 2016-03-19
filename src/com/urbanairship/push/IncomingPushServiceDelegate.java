package com.urbanairship.push;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.cj;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.BaseIntentService.Delegate;
import com.urbanairship.CoreReceiver;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.actions.ActionService;
import com.urbanairship.actions.Situation;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.PushArrivedEvent;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonList;
import com.urbanairship.json.JsonValue;
import com.urbanairship.push.iam.InAppMessage;
import com.urbanairship.push.iam.InAppMessageManager;
import com.urbanairship.push.notifications.NotificationFactory;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushManager.RefreshMessagesCallback;
import com.urbanairship.util.UAStringUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

class IncomingPushServiceDelegate
  extends BaseIntentService.Delegate
{
  private static final String LAST_CANONICAL_IDS_KEY = "com.urbanairship.push.LAST_CANONICAL_IDS";
  private static final int MAX_CANONICAL_IDS = 10;
  private static final int RICH_PUSH_REFRESH_WAIT_TIME_MS = 60000;
  private final UAirship airship;
  private final cj notificationManager;
  private final PushManager pushManager;
  
  public IncomingPushServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    this(paramContext, paramPreferenceDataStore, UAirship.shared(), cj.a(paramContext));
  }
  
  public IncomingPushServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore, UAirship paramUAirship, cj paramcj)
  {
    super(paramContext, paramPreferenceDataStore);
    airship = paramUAirship;
    pushManager = paramUAirship.getPushManager();
    notificationManager = paramcj;
  }
  
  private void createPushArrivedEvent(String paramString)
  {
    String str = paramString;
    if (UAStringUtil.isEmpty(paramString)) {
      str = UUID.randomUUID().toString();
    }
    airship.getAnalytics().addEvent(new PushArrivedEvent(str));
  }
  
  private boolean isUniqueCanonicalId(String paramString)
  {
    if (UAStringUtil.isEmpty(paramString)) {
      return true;
    }
    try
    {
      Object localObject = JsonValue.parseString(getDataStore().getString("com.urbanairship.push.LAST_CANONICAL_IDS", null)).getList();
      if (localObject == null)
      {
        localObject = new ArrayList();
        paramString = JsonValue.wrap(paramString);
        if (!((List)localObject).contains(paramString)) {
          break label75;
        }
        return false;
      }
    }
    catch (JsonException localJsonException)
    {
      List localList;
      for (;;)
      {
        Logger.debug("IncomingPushServiceDelegate - Unable to parse canonical Ids.", localJsonException);
        localList = null;
        continue;
        localList = localList.getList();
      }
      label75:
      localList.add(paramString);
      paramString = localList;
      if (localList.size() > 10) {
        paramString = localList.subList(localList.size() - 10, localList.size());
      }
      getDataStore().put("com.urbanairship.push.LAST_CANONICAL_IDS", JsonValue.wrap(paramString, null).toString());
    }
    return true;
  }
  
  private void onAdmMessageReceived(Intent paramIntent)
  {
    if (airship.getPlatformType() != 1)
    {
      Logger.error("Received intent from invalid transport acting as ADM.");
      return;
    }
    if (!airship.getPushManager().isPushAvailable())
    {
      Logger.error("IncomingPushServiceDelegate - Received intent from ADM without registering.");
      return;
    }
    paramIntent = (Intent)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_INTENT");
    if (paramIntent == null)
    {
      Logger.error("IncomingPushServiceDelegate - Received ADM message missing original intent.");
      return;
    }
    processMessage(new PushMessage(paramIntent.getExtras()));
  }
  
  private void onGcmMessageReceived(Intent paramIntent)
  {
    if (airship.getPlatformType() != 2)
    {
      Logger.error("Received intent from invalid transport acting as GCM.");
      return;
    }
    if (!airship.getPushManager().isPushAvailable())
    {
      Logger.error("IncomingPushServiceDelegate - Received intent from GCM without registering.");
      return;
    }
    paramIntent = (Intent)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_INTENT");
    if (paramIntent == null)
    {
      Logger.error("IncomingPushServiceDelegate - Received GCM message missing original intent.");
      return;
    }
    String str = paramIntent.getStringExtra("from");
    if ((str != null) && (!str.equals(airship.getAirshipConfigOptions().gcmSender)))
    {
      Logger.info("Ignoring GCM message from sender: " + str);
      return;
    }
    if ("deleted_messages".equals(paramIntent.getStringExtra("message_type")))
    {
      Logger.info("GCM deleted " + paramIntent.getStringExtra("total_deleted") + " pending messages.");
      return;
    }
    processMessage(new PushMessage(paramIntent.getExtras()));
  }
  
  private void processMessage(PushMessage paramPushMessage)
  {
    if (!pushManager.isPushEnabled())
    {
      Logger.info("Received a push when push is disabled! Ignoring.");
      return;
    }
    if (!isUniqueCanonicalId(paramPushMessage.getCanonicalPushId()))
    {
      Logger.info("Received a duplicate push with canonical ID: " + paramPushMessage.getCanonicalPushId());
      return;
    }
    pushManager.setLastReceivedSendId(paramPushMessage.getSendId());
    createPushArrivedEvent(paramPushMessage.getSendId());
    if (paramPushMessage.isExpired())
    {
      Logger.debug("Received expired push message, ignoring.");
      return;
    }
    if (paramPushMessage.isPing())
    {
      Logger.verbose("IncomingPushServiceDelegate - Received UA Ping");
      return;
    }
    Object localObject = new Bundle();
    ((Bundle)localObject).putParcelable("com.urbanairship.PUSH_MESSAGE", paramPushMessage);
    ActionService.runActions(UAirship.getApplicationContext(), paramPushMessage.getActions(), Situation.PUSH_RECEIVED, (Bundle)localObject);
    localObject = paramPushMessage.getInAppMessage();
    if (localObject != null)
    {
      Logger.debug("IncomingPushServiceDelegate - Received a Push with an in-app message.");
      airship.getInAppMessageManager().setPendingMessage((InAppMessage)localObject);
    }
    if (!UAStringUtil.isEmpty(paramPushMessage.getRichPushMessageId()))
    {
      Logger.debug("IncomingPushServiceDelegate - Received a Rich Push.");
      refreshRichPushMessages();
    }
    localObject = null;
    if (!pushManager.getUserNotificationsEnabled()) {
      Logger.info("User notifications disabled. Unable to display notification for message: " + paramPushMessage);
    }
    for (;;)
    {
      sendPushReceivedBroadcast(paramPushMessage, (Integer)localObject);
      return;
      localObject = showNotification(paramPushMessage, pushManager.getNotificationFactory());
    }
  }
  
  private void refreshRichPushMessages()
  {
    final Semaphore localSemaphore = new Semaphore(0);
    airship.getRichPushManager().refreshMessages(new RichPushManager.RefreshMessagesCallback()
    {
      public void onRefreshMessages(boolean paramAnonymousBoolean)
      {
        localSemaphore.release();
      }
    });
    try
    {
      localSemaphore.tryAcquire(60000L, TimeUnit.MILLISECONDS);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      Logger.warn("Interrupted while waiting for rich push messages to refresh");
    }
  }
  
  private void sendPushReceivedBroadcast(PushMessage paramPushMessage, Integer paramInteger)
  {
    paramPushMessage = new Intent("com.urbanairship.push.RECEIVED").putExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE", paramPushMessage).addCategory(UAirship.getPackageName()).setPackage(UAirship.getPackageName());
    if (paramInteger != null) {
      paramPushMessage.putExtra("com.urbanairship.push.NOTIFICATION_ID", paramInteger.intValue());
    }
    getContext().sendBroadcast(paramPushMessage, UAirship.getUrbanAirshipPermission());
  }
  
  private Integer showNotification(PushMessage paramPushMessage, NotificationFactory paramNotificationFactory)
  {
    if (paramNotificationFactory == null)
    {
      Logger.info("NotificationFactory is null. Unable to display notification for message: " + paramPushMessage);
      return null;
    }
    try
    {
      Integer localInteger = Integer.valueOf(paramNotificationFactory.getNextId(paramPushMessage));
      paramNotificationFactory = paramNotificationFactory.createNotification(paramPushMessage, localInteger.intValue());
      if (paramNotificationFactory != null)
      {
        if ((!pushManager.isVibrateEnabled()) || (pushManager.isInQuietTime()))
        {
          vibrate = null;
          defaults &= 0xFFFFFFFD;
        }
        if ((!pushManager.isSoundEnabled()) || (pushManager.isInQuietTime()))
        {
          sound = null;
          defaults &= 0xFFFFFFFE;
        }
        Intent localIntent = new Intent(getContext(), CoreReceiver.class).setAction("com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY").addCategory(UUID.randomUUID().toString()).putExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE", paramPushMessage).putExtra("com.urbanairship.push.NOTIFICATION_ID", localInteger);
        if (contentIntent != null) {
          localIntent.putExtra("com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT", contentIntent);
        }
        paramPushMessage = new Intent(getContext(), CoreReceiver.class).setAction("com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY").addCategory(UUID.randomUUID().toString()).putExtra("com.urbanairship.push.EXTRA_PUSH_MESSAGE", paramPushMessage).putExtra("com.urbanairship.push.NOTIFICATION_ID", localInteger);
        if (deleteIntent != null) {
          paramPushMessage.putExtra("com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT", deleteIntent);
        }
        contentIntent = PendingIntent.getBroadcast(getContext(), 0, localIntent, 0);
        deleteIntent = PendingIntent.getBroadcast(getContext(), 0, paramPushMessage, 0);
        Logger.info("Posting notification " + paramNotificationFactory + " with ID " + localInteger);
        notificationManager.a(localInteger.intValue(), paramNotificationFactory);
      }
      return localInteger;
    }
    catch (Exception paramPushMessage)
    {
      Logger.error("Unable to create and display notification.", paramPushMessage);
    }
    return null;
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
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
        if (str.equals("com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE"))
        {
          i = 0;
          continue;
          if (str.equals("com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE")) {
            i = 1;
          }
        }
        break;
      }
    }
    onAdmMessageReceived(paramIntent);
    return;
    onGcmMessageReceived(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.IncomingPushServiceDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */