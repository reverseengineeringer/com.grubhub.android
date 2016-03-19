package com.urbanairship.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build.VERSION;
import android.support.v4.content.o;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.LifeCycleCallbacks;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;
import com.urbanairship.location.LocationRequestOptions;
import java.util.UUID;

public class Analytics
{
  public static final String ACTION_APP_BACKGROUND = "com.urbanairship.analytics.APP_BACKGROUND";
  public static final String ACTION_APP_FOREGROUND = "com.urbanairship.analytics.APP_FOREGROUND";
  private static LifeCycleCallbacks lifeCycleCallbacks;
  private final ActivityMonitor activityMonitor;
  private final AirshipConfigOptions configOptions;
  private final Context context;
  private String conversionSendId;
  private final EventDataManager dataManager;
  private boolean inBackground;
  private final int minSdkVersion;
  private final AnalyticsPreferences preferences;
  private String sessionId;
  
  public Analytics(Context paramContext, PreferenceDataStore paramPreferenceDataStore, AirshipConfigOptions paramAirshipConfigOptions)
  {
    this(paramContext, paramPreferenceDataStore, paramAirshipConfigOptions, new ActivityMonitor(minSdkVersion, Build.VERSION.SDK_INT, analyticsEnabled));
  }
  
  Analytics(final Context paramContext, PreferenceDataStore paramPreferenceDataStore, AirshipConfigOptions paramAirshipConfigOptions, ActivityMonitor paramActivityMonitor)
  {
    preferences = new AnalyticsPreferences(paramPreferenceDataStore);
    context = paramContext.getApplicationContext();
    dataManager = new EventDataManager();
    minSdkVersion = minSdkVersion;
    inBackground = true;
    configOptions = paramAirshipConfigOptions;
    startNewSession();
    activityMonitor = paramActivityMonitor;
    activityMonitor.setListener(new ActivityMonitor.Listener()
    {
      public void onBackground(long paramAnonymousLong)
      {
        Analytics.access$002(Analytics.this, true);
        addEvent(new AppBackgroundEvent(paramAnonymousLong));
        o.a(paramContext).a(new Intent("com.urbanairship.analytics.APP_BACKGROUND"));
        setConversionSendId(null);
      }
      
      public void onForeground(long paramAnonymousLong)
      {
        startNewSession();
        Analytics.access$002(Analytics.this, false);
        o.a(paramContext).a(new Intent("com.urbanairship.analytics.APP_FOREGROUND"));
        addEvent(new AppForegroundEvent(paramAnonymousLong));
      }
    });
  }
  
  public static void activityStarted(Activity paramActivity)
  {
    UAirship.shared(new UAirship.OnReadyCallback()
    {
      public void onAirshipReady(UAirship paramAnonymousUAirship)
      {
        paramAnonymousUAirship.getAnalytics().reportActivityStarted(Analytics.this, 0, val$timeMS);
      }
    });
  }
  
  public static void activityStopped(Activity paramActivity)
  {
    UAirship.shared(new UAirship.OnReadyCallback()
    {
      public void onAirshipReady(UAirship paramAnonymousUAirship)
      {
        paramAnonymousUAirship.getAnalytics().reportActivityStopped(Analytics.this, 0, val$timeMS);
      }
    });
  }
  
  @TargetApi(14)
  public static void registerLifeCycleCallbacks(Application paramApplication)
  {
    if (lifeCycleCallbacks == null)
    {
      lifeCycleCallbacks = new LifeCycleCallbacks(paramApplication)
      {
        public void onActivityStarted(final Activity paramAnonymousActivity)
        {
          UAirship.shared(new UAirship.OnReadyCallback()
          {
            public void onAirshipReady(UAirship paramAnonymous2UAirship)
            {
              paramAnonymous2UAirship.getAnalytics().reportActivityStarted(paramAnonymousActivity, 1, val$timeStamp);
            }
          });
        }
        
        public void onActivityStopped(final Activity paramAnonymousActivity)
        {
          UAirship.shared(new UAirship.OnReadyCallback()
          {
            public void onAirshipReady(UAirship paramAnonymous2UAirship)
            {
              paramAnonymous2UAirship.getAnalytics().reportActivityStopped(paramAnonymousActivity, 1, val$timeStamp);
            }
          });
        }
      };
      lifeCycleCallbacks.register();
    }
  }
  
  private void reportActivityStarted(Activity paramActivity, int paramInt, long paramLong)
  {
    if ((minSdkVersion >= 14) && (configOptions.analyticsEnabled) && (paramInt == 0)) {
      Logger.warn("activityStarted call is no longer necessary starting with SDK 14 - ICE CREAM SANDWICH. Analytics is auto-instrumented for you.");
    }
    activityMonitor.activityStarted(paramActivity, paramInt, paramLong);
  }
  
  private void reportActivityStopped(Activity paramActivity, int paramInt, long paramLong)
  {
    if ((minSdkVersion >= 14) && (configOptions.analyticsEnabled) && (paramInt == 0)) {
      Logger.warn("activityStopped call is no longer necessary starting with SDK 14 - ICE CREAM SANDWICH. Analytics is auto-instrumented for you.");
    }
    activityMonitor.activityStopped(paramActivity, paramInt, paramLong);
  }
  
  @TargetApi(14)
  public static void unregisterLifeCycleCallbacks()
  {
    if (lifeCycleCallbacks != null) {
      lifeCycleCallbacks.unregister();
    }
  }
  
  public void addEvent(Event paramEvent)
  {
    if ((paramEvent == null) || (!paramEvent.isValid()))
    {
      Logger.warn("Analytics - Invalid event: " + paramEvent);
      return;
    }
    if (!isEnabled())
    {
      Logger.debug("Analytics disabled - ignoring event: " + paramEvent.getType());
      return;
    }
    String str = paramEvent.createEventPayload(sessionId);
    if (str == null) {
      Logger.error("Analytics - Failed to add event " + paramEvent.getType());
    }
    Intent localIntent = new Intent(context, EventService.class).setAction("com.urbanairship.analytics.ADD").putExtra("EXTRA_EVENT_TYPE", paramEvent.getType()).putExtra("EXTRA_EVENT_ID", paramEvent.getEventId()).putExtra("EXTRA_EVENT_DATA", str).putExtra("EXTRA_EVENT_TIME_STAMP", paramEvent.getTime()).putExtra("EXTRA_EVENT_SESSION_ID", sessionId);
    if (context.startService(localIntent) == null)
    {
      Logger.warn("Unable to start analytics service. Check that the event service is added to the manifest.");
      return;
    }
    Logger.debug("Analytics - Added event: " + paramEvent.getType() + ": " + str);
  }
  
  public String getConversionSendId()
  {
    return conversionSendId;
  }
  
  EventDataManager getDataManager()
  {
    return dataManager;
  }
  
  AnalyticsPreferences getPreferences()
  {
    return preferences;
  }
  
  String getSessionId()
  {
    return sessionId;
  }
  
  public boolean isAppInForeground()
  {
    return !inBackground;
  }
  
  public boolean isEnabled()
  {
    return (configOptions.analyticsEnabled) && (preferences.isAnalyticsEnabled());
  }
  
  public void recordLocation(Location paramLocation)
  {
    recordLocation(paramLocation, null, LocationEvent.UpdateType.SINGLE);
  }
  
  public void recordLocation(Location paramLocation, LocationRequestOptions paramLocationRequestOptions, LocationEvent.UpdateType paramUpdateType)
  {
    int i = 1;
    int j = -1;
    if (paramLocationRequestOptions == null) {
      i = -1;
    }
    for (;;)
    {
      addEvent(new LocationEvent(paramLocation, paramUpdateType, i, j, isAppInForeground()));
      return;
      int k = (int)paramLocationRequestOptions.getMinDistance();
      j = k;
      if (paramLocationRequestOptions.getPriority() != 1)
      {
        i = 2;
        j = k;
      }
    }
  }
  
  public void setConversionSendId(String paramString)
  {
    Logger.debug("Analytics - Setting conversion send ID: " + paramString);
    conversionSendId = paramString;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    if ((preferences.isAnalyticsEnabled()) && (!paramBoolean))
    {
      Intent localIntent = new Intent(context, EventService.class).setAction("com.urbanairship.analytics.DELETE_ALL");
      context.startService(localIntent);
    }
    preferences.setAnalyticsEnabled(paramBoolean);
  }
  
  void startNewSession()
  {
    sessionId = UUID.randomUUID().toString();
    Logger.debug("Analytics - New session: " + sessionId);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.Analytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */