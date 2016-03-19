package com.urbanairship.analytics;

import com.urbanairship.PreferenceDataStore;

class AnalyticsPreferences
{
  private static final String ANALYTICS_ENABLED_KEY = "com.urbanairship.analytics.ANALYTICS_ENABLED";
  private static final String KEY_PREFIX = "com.urbanairship.analytics";
  private static final String LAST_SEND_KEY = "com.urbanairship.analytics.LAST_SEND";
  static final int MAX_BATCH_INTERVAL_MS = 604800000;
  static final int MAX_BATCH_SIZE_BYTES = 512000;
  private static final String MAX_BATCH_SIZE_KEY = "com.urbanairship.analytics.MAX_BATCH_SIZE";
  static final int MAX_TOTAL_DB_SIZE_BYTES = 5242880;
  private static final String MAX_TOTAL_DB_SIZE_KEY = "com.urbanairship.analytics.MAX_TOTAL_DB_SIZE";
  private static final String MAX_WAIT_KEY = "com.urbanairship.analytics.MAX_WAIT";
  static final int MAX_WAIT_MS = 1209600000;
  private static final String MIN_BATCH_INTERVAL_KEY = "com.urbanairship.analytics.MIN_BATCH_INTERVAL";
  static final int MIN_BATCH_INTERVAL_MS = 60000;
  static final int MIN_BATCH_SIZE_BYTES = 1024;
  static final int MIN_TOTAL_DB_SIZE_BYTES = 10240;
  static final int MIN_WAIT_MS = 604800000;
  private static final String SCHEDULED_SEND_TIME = "com.urbanairship.analytics.SCHEDULED_SEND_TIME";
  private final PreferenceDataStore preferenceDataStore;
  
  AnalyticsPreferences(PreferenceDataStore paramPreferenceDataStore)
  {
    preferenceDataStore = paramPreferenceDataStore;
  }
  
  long getLastSendTime()
  {
    return preferenceDataStore.getLong("com.urbanairship.analytics.LAST_SEND", 0L);
  }
  
  int getMaxBatchSize()
  {
    return preferenceDataStore.getInt("com.urbanairship.analytics.MAX_BATCH_SIZE", 512000);
  }
  
  int getMaxTotalDbSize()
  {
    return preferenceDataStore.getInt("com.urbanairship.analytics.MAX_TOTAL_DB_SIZE", 5242880);
  }
  
  int getMaxWait()
  {
    return preferenceDataStore.getInt("com.urbanairship.analytics.MAX_WAIT", 1209600000);
  }
  
  int getMinBatchInterval()
  {
    return preferenceDataStore.getInt("com.urbanairship.analytics.MIN_BATCH_INTERVAL", 60000);
  }
  
  long getScheduledSendTime()
  {
    return preferenceDataStore.getLong("com.urbanairship.analytics.SCHEDULED_SEND_TIME", 0L);
  }
  
  boolean isAnalyticsEnabled()
  {
    return preferenceDataStore.getBoolean("com.urbanairship.analytics.ANALYTICS_ENABLED", true);
  }
  
  void setAnalyticsEnabled(boolean paramBoolean)
  {
    preferenceDataStore.put("com.urbanairship.analytics.ANALYTICS_ENABLED", paramBoolean);
  }
  
  void setLastSendTime(long paramLong)
  {
    preferenceDataStore.put("com.urbanairship.analytics.LAST_SEND", paramLong);
  }
  
  void setMaxBatchSize(int paramInt)
  {
    preferenceDataStore.put("com.urbanairship.analytics.MAX_BATCH_SIZE", paramInt);
  }
  
  void setMaxTotalDbSize(int paramInt)
  {
    preferenceDataStore.put("com.urbanairship.analytics.MAX_TOTAL_DB_SIZE", paramInt);
  }
  
  void setMaxWait(int paramInt)
  {
    preferenceDataStore.put("com.urbanairship.analytics.MAX_WAIT", paramInt);
  }
  
  void setMinBatchInterval(int paramInt)
  {
    preferenceDataStore.put("com.urbanairship.analytics.MIN_BATCH_INTERVAL", paramInt);
  }
  
  void setScheduledSendTime(long paramLong)
  {
    preferenceDataStore.put("com.urbanairship.analytics.SCHEDULED_SEND_TIME", paramLong);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.AnalyticsPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */