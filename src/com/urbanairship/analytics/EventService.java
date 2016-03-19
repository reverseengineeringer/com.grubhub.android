package com.urbanairship.analytics;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import java.util.Map;

public class EventService
  extends IntentService
{
  static final String ACTION_ADD = "com.urbanairship.analytics.ADD";
  static final String ACTION_DELETE_ALL = "com.urbanairship.analytics.DELETE_ALL";
  static final String ACTION_SEND = "com.urbanairship.analytics.SEND";
  private static final long BATCH_DELAY = 10000L;
  static final String EXTRA_EVENT_DATA = "EXTRA_EVENT_DATA";
  static final String EXTRA_EVENT_ID = "EXTRA_EVENT_ID";
  static final String EXTRA_EVENT_SESSION_ID = "EXTRA_EVENT_SESSION_ID";
  static final String EXTRA_EVENT_TIME_STAMP = "EXTRA_EVENT_TIME_STAMP";
  static final String EXTRA_EVENT_TYPE = "EXTRA_EVENT_TYPE";
  private static final long REGION_BATCH_DELAY = 1000L;
  private static long backoffMs = 0L;
  private final EventAPIClient eventClient;
  
  public EventService()
  {
    this("EventService");
  }
  
  public EventService(String paramString)
  {
    this(paramString, new EventAPIClient());
  }
  
  EventService(String paramString, EventAPIClient paramEventAPIClient)
  {
    super(paramString);
    eventClient = paramEventAPIClient;
  }
  
  private void addEventFromIntent(Intent paramIntent)
  {
    AnalyticsPreferences localAnalyticsPreferences = UAirship.shared().getAnalytics().getPreferences();
    EventDataManager localEventDataManager = UAirship.shared().getAnalytics().getDataManager();
    String str1 = paramIntent.getStringExtra("EXTRA_EVENT_TYPE");
    String str2 = paramIntent.getStringExtra("EXTRA_EVENT_ID");
    String str3 = paramIntent.getStringExtra("EXTRA_EVENT_DATA");
    String str4 = paramIntent.getStringExtra("EXTRA_EVENT_TIME_STAMP");
    paramIntent = paramIntent.getStringExtra("EXTRA_EVENT_SESSION_ID");
    if ((str1 == null) || (str3 == null) || (str4 == null) || (str2 == null))
    {
      Logger.warn("Event service unable to add event with missing data.");
      return;
    }
    if (localEventDataManager.getDatabaseSize() > localAnalyticsPreferences.getMaxTotalDbSize())
    {
      Logger.info("Event database size exceeded. Deleting oldest session.");
      String str5 = localEventDataManager.getOldestSessionId();
      if ((str5 != null) && (str5.length() > 0)) {
        localEventDataManager.deleteSession(str5);
      }
    }
    if (localEventDataManager.insertEvent(str1, str3, str2, paramIntent, str4) <= 0L) {
      Logger.error("EventService - Unable to insert event into database.");
    }
    if (("location".equals(str1)) && (!UAirship.shared().getAnalytics().isAppInForeground()))
    {
      long l1 = System.currentTimeMillis();
      long l2 = localAnalyticsPreferences.getLastSendTime();
      l1 = sharedgetAirshipConfigOptionsbackgroundReportingIntervalMS - (l1 - l2);
      if ((l1 > getNextSendDelay()) && (l1 > 10000L))
      {
        Logger.info("LocationEvent was inserted, but may not be updated until " + l1 + " ms have passed");
        scheduleEventUpload(l1);
        return;
      }
      scheduleEventUpload(Math.max(getNextSendDelay(), 10000L));
      return;
    }
    if ("region_event".equals(str1))
    {
      scheduleEventUpload(1000L);
      return;
    }
    scheduleEventUpload(Math.max(getNextSendDelay(), 10000L));
  }
  
  private long getNextSendDelay()
  {
    AnalyticsPreferences localAnalyticsPreferences = UAirship.shared().getAnalytics().getPreferences();
    long l = localAnalyticsPreferences.getLastSendTime();
    return Math.max(localAnalyticsPreferences.getMinBatchInterval() + l + backoffMs - System.currentTimeMillis(), 0L);
  }
  
  private void scheduleEventUpload(long paramLong)
  {
    paramLong = System.currentTimeMillis() + paramLong;
    AnalyticsPreferences localAnalyticsPreferences = UAirship.shared().getAnalytics().getPreferences();
    AlarmManager localAlarmManager = (AlarmManager)getApplicationContext().getSystemService("alarm");
    Intent localIntent = new Intent(getApplicationContext(), EventService.class);
    localIntent.setAction("com.urbanairship.analytics.SEND");
    long l = localAnalyticsPreferences.getScheduledSendTime();
    if ((l < System.currentTimeMillis()) || (l > paramLong)) {}
    for (int i = 1; (i != 0) || (PendingIntent.getService(getApplicationContext(), 0, localIntent, 536870912) == null); i = 0)
    {
      localAlarmManager.set(1, paramLong, PendingIntent.getService(getApplicationContext(), 0, localIntent, 134217728));
      localAnalyticsPreferences.setScheduledSendTime(paramLong);
      return;
    }
    Logger.verbose("EventService - Alarm already scheduled for an earlier time.");
  }
  
  private void uploadEvents()
  {
    AnalyticsPreferences localAnalyticsPreferences = UAirship.shared().getAnalytics().getPreferences();
    EventDataManager localEventDataManager = UAirship.shared().getAnalytics().getDataManager();
    localAnalyticsPreferences.setLastSendTime(System.currentTimeMillis());
    int j = localEventDataManager.getEventCount();
    if (j <= 0)
    {
      Logger.debug("EventService - No events to send. Ending analytics upload.");
      return;
    }
    int i = localEventDataManager.getDatabaseSize() / j;
    Map localMap = localEventDataManager.getEvents(localAnalyticsPreferences.getMaxBatchSize() / i);
    EventResponse localEventResponse = eventClient.sendEvents(localMap.values());
    if ((localEventResponse != null) && (localEventResponse.getStatus() == 200)) {}
    for (i = 1;; i = 0)
    {
      if (i == 0) {
        break label203;
      }
      Logger.info("Analytic events uploaded successfully.");
      localEventDataManager.deleteEvents(localMap.keySet());
      backoffMs = 0L;
      if ((i == 0) || (j - localMap.size() > 0))
      {
        Logger.debug("EventService - Scheduling next event batch upload.");
        scheduleEventUpload(getNextSendDelay());
      }
      if (localEventResponse == null) {
        break;
      }
      localAnalyticsPreferences.setMaxTotalDbSize(localEventResponse.getMaxTotalSize());
      localAnalyticsPreferences.setMaxBatchSize(localEventResponse.getMaxBatchSize());
      localAnalyticsPreferences.setMaxWait(localEventResponse.getMaxWait());
      localAnalyticsPreferences.setMinBatchInterval(localEventResponse.getMinBatchInterval());
      return;
    }
    label203:
    if (backoffMs == 0L) {}
    for (backoffMs = localAnalyticsPreferences.getMinBatchInterval();; backoffMs = Math.min(backoffMs * 2L, localAnalyticsPreferences.getMaxWait()))
    {
      Logger.debug("Analytic events failed to send. Will retry in " + backoffMs + "ms.");
      break;
    }
  }
  
  public void onCreate()
  {
    super.onCreate();
    Autopilot.automaticTakeOff(getApplicationContext());
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if ((paramIntent == null) || (paramIntent.getAction() == null)) {
      return;
    }
    Logger.verbose("EventService - Received intent: " + paramIntent.getAction());
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
        Logger.warn("EventService - Unrecognized intent action: " + paramIntent.getAction());
        return;
        if (str.equals("com.urbanairship.analytics.DELETE_ALL"))
        {
          i = 0;
          continue;
          if (str.equals("com.urbanairship.analytics.ADD"))
          {
            i = 1;
            continue;
            if (str.equals("com.urbanairship.analytics.SEND")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    Logger.info("Deleting all analytic events.");
    UAirship.shared().getAnalytics().getDataManager().deleteAllEvents();
    return;
    addEventFromIntent(paramIntent);
    return;
    uploadEvents();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.EventService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */