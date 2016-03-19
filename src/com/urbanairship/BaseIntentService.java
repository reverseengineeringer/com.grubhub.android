package com.urbanairship;

import android.app.IntentService;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseIntentService
  extends IntentService
{
  protected static final long DEFAULT_MAX_BACK_OFF_TIME_MS = 5120000L;
  protected static final long DEFAULT_STARTING_BACK_OFF_TIME_MS = 10000L;
  private static final String EXTRA_BACK_OFF_MS = "com.urbanairship.EXTRA_BACK_OFF_MS";
  private final Map<String, BaseIntentService.Delegate> delegateMap = new HashMap();
  
  public BaseIntentService(String paramString)
  {
    super(paramString);
  }
  
  protected abstract BaseIntentService.Delegate getServiceDelegate(String paramString, PreferenceDataStore paramPreferenceDataStore);
  
  public void onCreate()
  {
    super.onCreate();
    Autopilot.automaticTakeOff(getApplicationContext());
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    try
    {
      String str = paramIntent.getAction();
      if (str == null) {
        return;
      }
      BaseIntentService.Delegate localDelegate2 = (BaseIntentService.Delegate)delegateMap.get(str);
      BaseIntentService.Delegate localDelegate1 = localDelegate2;
      if (localDelegate2 == null) {
        localDelegate1 = getServiceDelegate(str, sharedpreferenceDataStore);
      }
      if (localDelegate1 == null)
      {
        Logger.debug("BaseIntentService - No delegate for intent action: " + str);
        return;
      }
      delegateMap.put(str, localDelegate1);
      localDelegate1.onHandleIntent(paramIntent);
      return;
    }
    finally
    {
      WakefulBroadcastReceiver.completeWakefulIntent(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.BaseIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */