package com.urbanairship;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.o;

public class ApplicationMetrics
{
  private static final String LAST_OPEN_KEY = "com.urbanairship.application.metrics.LAST_OPEN";
  private final PreferenceDataStore preferenceDataStore;
  
  ApplicationMetrics(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    preferenceDataStore = paramPreferenceDataStore;
    registerBroadcastReceivers(paramContext);
  }
  
  private void registerBroadcastReceivers(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.urbanairship.analytics.APP_FOREGROUND");
    o.a(paramContext).a(new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        preferenceDataStore.put("com.urbanairship.application.metrics.LAST_OPEN", System.currentTimeMillis());
      }
    }, localIntentFilter);
  }
  
  public long getLastOpenTimeMillis()
  {
    return preferenceDataStore.getLong("com.urbanairship.application.metrics.LAST_OPEN", -1L);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.ApplicationMetrics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */