package com.urbanairship.push;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.json.JsonList;
import com.urbanairship.json.JsonValue;
import com.urbanairship.util.UAStringUtil;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class PushPreferences
{
  private static final String ADM_REGISTRATION_ID_KEY = "com.urbanairship.push.ADM_REGISTRATION_ID_KEY";
  private static final String ALIAS_KEY = "com.urbanairship.push.ALIAS";
  private static final String APID_KEY = "com.urbanairship.push.APID";
  private static final String APP_VERSION_KEY = "com.urbanairship.push.APP_VERSION";
  private static final String CHANNEL_ID_KEY = "com.urbanairship.push.CHANNEL_ID";
  private static final String CHANNEL_ID_PREFERENCE_KEY = "com.urbanairship.preferences.CHANNEL_ID";
  private static final String CHANNEL_LOCATION_KEY = "com.urbanairship.push.CHANNEL_LOCATION";
  private static final String CHANNEL_LOCATION_PREFERENCE_KEY = "com.urbanairship.preferences.CHANNEL_LOCATION";
  private static final String DEVICE_ID_KEY = "com.urbanairship.push.DEVICE_ID";
  private static final String GCM_INSTANCE_ID_TOKEN_KEY = "com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY";
  private static final String GCM_REGISTRATION_ID_KEY = "com.urbanairship.push.GCM_REGISTRATION_ID_KEY";
  private static final String KEY_PREFIX = "com.urbanairship.push";
  private static final String LAST_RECEIVED_SEND_ID = "com.urbanairship.push.LAST_RECEIVED_SEND_ID";
  private static final String PUSH_ENABLED_KEY = "com.urbanairship.push.PUSH_ENABLED";
  private static final String PUSH_ENABLED_SETTINGS_MIGRATED_KEY = "com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED";
  private static final String REGISTERED_GCM_SENDER_IDS = "com.urbanairship.push.REGISTERED_GCM_SENDER_IDS";
  private static final String SHARED_PREFERENCES_NAME = "com.urbanairship.preferences";
  private static final String SOUND_ENABLED_KEY = "com.urbanairship.push.SOUND_ENABLED";
  private static final String TAGS_KEY = "com.urbanairship.push.TAGS";
  private static final String USER_NOTIFICATIONS_ENABLED_KEY = "com.urbanairship.push.USER_NOTIFICATIONS_ENABLED";
  private static final String VIBRATE_ENABLED_KEY = "com.urbanairship.push.VIBRATE_ENABLED";
  private final PreferenceDataStore preferenceDataStore;
  
  public PushPreferences(PreferenceDataStore paramPreferenceDataStore)
  {
    preferenceDataStore = paramPreferenceDataStore;
  }
  
  private SharedPreferences getSharedPreferences()
  {
    return UAirship.getApplicationContext().getSharedPreferences("com.urbanairship.preferences", 0);
  }
  
  String getAdmId()
  {
    return preferenceDataStore.getString("com.urbanairship.push.ADM_REGISTRATION_ID_KEY", null);
  }
  
  String getAlias()
  {
    return preferenceDataStore.getString("com.urbanairship.push.ALIAS", null);
  }
  
  String getApid()
  {
    return preferenceDataStore.getString("com.urbanairship.push.APID", null);
  }
  
  int getAppVersionCode()
  {
    return preferenceDataStore.getInt("com.urbanairship.push.APP_VERSION", -1);
  }
  
  String getChannelId()
  {
    if (UAStringUtil.isEmpty(preferenceDataStore.getString("com.urbanairship.push.CHANNEL_ID", null)))
    {
      String str = getSharedPreferences().getString("com.urbanairship.preferences.CHANNEL_ID", null);
      preferenceDataStore.put("com.urbanairship.push.CHANNEL_ID", str);
      return str;
    }
    return preferenceDataStore.getString("com.urbanairship.push.CHANNEL_ID", null);
  }
  
  String getChannelLocation()
  {
    if (UAStringUtil.isEmpty(preferenceDataStore.getString("com.urbanairship.push.CHANNEL_LOCATION", null))) {
      preferenceDataStore.put("com.urbanairship.push.CHANNEL_LOCATION", getSharedPreferences().getString("com.urbanairship.preferences.CHANNEL_LOCATION", null));
    }
    return preferenceDataStore.getString("com.urbanairship.push.CHANNEL_LOCATION", null);
  }
  
  String getDeviceId()
  {
    return preferenceDataStore.getString("com.urbanairship.push.DEVICE_ID", null);
  }
  
  String getGcmId()
  {
    return preferenceDataStore.getString("com.urbanairship.push.GCM_REGISTRATION_ID_KEY", null);
  }
  
  String getGcmToken()
  {
    return preferenceDataStore.getString("com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY", null);
  }
  
  String getLastReceivedSendId()
  {
    return preferenceDataStore.getString("com.urbanairship.push.LAST_RECEIVED_SEND_ID", null);
  }
  
  boolean getPushEnabledSettingsMigrated()
  {
    return preferenceDataStore.getBoolean("com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED", false);
  }
  
  Date[] getQuietTimeInterval()
  {
    int i = preferenceDataStore.getInt("com.urbanairship.push.QuietTime.START_HOUR", -1);
    int j = preferenceDataStore.getInt("com.urbanairship.push.QuietTime.START_MINUTE", -1);
    int k = preferenceDataStore.getInt("com.urbanairship.push.QuietTime.END_HOUR", -1);
    int m = preferenceDataStore.getInt("com.urbanairship.push.QuietTime.END_MINUTE", -1);
    if ((i == -1) || (j == -1) || (k == -1) || (m == -1)) {
      return null;
    }
    Object localObject = Calendar.getInstance();
    ((Calendar)localObject).set(11, i);
    ((Calendar)localObject).set(12, j);
    ((Calendar)localObject).set(13, 0);
    localObject = ((Calendar)localObject).getTime();
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(11, k);
    localCalendar.set(12, m);
    localCalendar.set(13, 0);
    if (k < i) {
      localCalendar.add(5, 1);
    }
    return new Date[] { localObject, localCalendar.getTime() };
  }
  
  Set<String> getRegisteredGcmSenderIds()
  {
    HashSet localHashSet = new HashSet();
    Object localObject = preferenceDataStore.getJsonValue("com.urbanairship.push.REGISTERED_GCM_SENDER_IDS");
    if (((JsonValue)localObject).isJsonList())
    {
      localObject = ((JsonValue)localObject).getList().iterator();
      while (((Iterator)localObject).hasNext())
      {
        JsonValue localJsonValue = (JsonValue)((Iterator)localObject).next();
        if (localJsonValue.isString()) {
          localHashSet.add(localJsonValue.getString());
        }
      }
    }
    return localHashSet;
  }
  
  Set<String> getTags()
  {
    HashSet localHashSet = new HashSet();
    Object localObject = preferenceDataStore.getJsonValue("com.urbanairship.push.TAGS");
    if (((JsonValue)localObject).isJsonList())
    {
      localObject = ((JsonValue)localObject).getList().iterator();
      while (((Iterator)localObject).hasNext())
      {
        JsonValue localJsonValue = (JsonValue)((Iterator)localObject).next();
        if (localJsonValue.isString()) {
          localHashSet.add(localJsonValue.getString());
        }
      }
    }
    return localHashSet;
  }
  
  boolean getUserNotificationsEnabled()
  {
    return preferenceDataStore.getBoolean("com.urbanairship.push.USER_NOTIFICATIONS_ENABLED", false);
  }
  
  boolean isInQuietTime()
  {
    boolean bool = true;
    if (!isQuietTimeEnabled()) {}
    Calendar localCalendar1;
    int i;
    int j;
    int k;
    int m;
    do
    {
      return false;
      localCalendar1 = Calendar.getInstance();
      i = preferenceDataStore.getInt("com.urbanairship.push.QuietTime.START_HOUR", -1);
      j = preferenceDataStore.getInt("com.urbanairship.push.QuietTime.START_MINUTE", -1);
      k = preferenceDataStore.getInt("com.urbanairship.push.QuietTime.END_HOUR", -1);
      m = preferenceDataStore.getInt("com.urbanairship.push.QuietTime.END_MINUTE", -1);
    } while ((-1 == i) || (-1 == j) || (-1 == k) || (-1 == m));
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.set(11, i);
    localCalendar2.set(12, j);
    localCalendar2.set(13, 0);
    Calendar localCalendar3 = Calendar.getInstance();
    localCalendar3.set(11, k);
    localCalendar3.set(12, m);
    localCalendar3.set(13, 0);
    if ((localCalendar2.after(localCalendar1)) && (localCalendar3.before(localCalendar2))) {
      localCalendar2.add(6, -1);
    }
    if (localCalendar3.before(localCalendar2)) {
      localCalendar3.add(6, 1);
    }
    if ((localCalendar1.after(localCalendar2)) && (localCalendar1.before(localCalendar3))) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  boolean isPushEnabled()
  {
    return preferenceDataStore.getBoolean("com.urbanairship.push.PUSH_ENABLED", true);
  }
  
  boolean isQuietTimeEnabled()
  {
    return preferenceDataStore.getBoolean("com.urbanairship.push.QuietTime.ENABLED", false);
  }
  
  boolean isSoundEnabled()
  {
    return preferenceDataStore.getBoolean("com.urbanairship.push.SOUND_ENABLED", true);
  }
  
  boolean isVibrateEnabled()
  {
    return preferenceDataStore.getBoolean("com.urbanairship.push.VIBRATE_ENABLED", true);
  }
  
  void migratePushEnabledSettings()
  {
    if (getPushEnabledSettingsMigrated()) {
      return;
    }
    Logger.info("Migrating push enabled preferences");
    boolean bool = preferenceDataStore.getBoolean("com.urbanairship.push.PUSH_ENABLED", false);
    Logger.info("Setting user notifications enabled to " + Boolean.toString(bool));
    setUserNotificationsEnabled(bool);
    if (!bool) {
      Logger.info("Push is now enabled. You can continue to toggle the opt-in state by enabling or disabling user notifications");
    }
    setPushEnabled(true);
    setPushEnabledSettingsMigrated(true);
  }
  
  void setAdmId(String paramString)
  {
    preferenceDataStore.put("com.urbanairship.push.ADM_REGISTRATION_ID_KEY", paramString);
  }
  
  void setAlias(String paramString)
  {
    preferenceDataStore.put("com.urbanairship.push.ALIAS", paramString);
  }
  
  void setAppVersionCode(int paramInt)
  {
    preferenceDataStore.put("com.urbanairship.push.APP_VERSION", paramInt);
  }
  
  @SuppressLint({"NewApi"})
  void setChannelId(String paramString)
  {
    preferenceDataStore.put("com.urbanairship.push.CHANNEL_ID", paramString);
    paramString = getSharedPreferences().edit().putString("com.urbanairship.preferences.CHANNEL_ID", paramString);
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramString.apply();
      return;
    }
    paramString.commit();
  }
  
  @SuppressLint({"NewApi"})
  void setChannelLocation(String paramString)
  {
    preferenceDataStore.put("com.urbanairship.push.CHANNEL_LOCATION", paramString);
    paramString = getSharedPreferences().edit().putString("com.urbanairship.preferences.CHANNEL_LOCATION", paramString);
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramString.apply();
      return;
    }
    paramString.commit();
  }
  
  void setDeviceId(String paramString)
  {
    preferenceDataStore.put("com.urbanairship.push.DEVICE_ID", paramString);
  }
  
  void setGcmId(String paramString)
  {
    preferenceDataStore.put("com.urbanairship.push.GCM_REGISTRATION_ID_KEY", paramString);
  }
  
  void setGcmToken(String paramString)
  {
    preferenceDataStore.put("com.urbanairship.push.GCM_INSTANCE_ID_TOKEN_KEY", paramString);
  }
  
  void setLastReceivedSendId(String paramString)
  {
    preferenceDataStore.put("com.urbanairship.push.LAST_RECEIVED_SEND_ID", paramString);
  }
  
  void setPushEnabled(boolean paramBoolean)
  {
    preferenceDataStore.put("com.urbanairship.push.PUSH_ENABLED", paramBoolean);
  }
  
  void setPushEnabledSettingsMigrated(boolean paramBoolean)
  {
    preferenceDataStore.put("com.urbanairship.push.PUSH_ENABLED_SETTINGS_MIGRATED", paramBoolean);
  }
  
  void setQuietTimeEnabled(boolean paramBoolean)
  {
    preferenceDataStore.put("com.urbanairship.push.QuietTime.ENABLED", paramBoolean);
  }
  
  void setQuietTimeInterval(Date paramDate1, Date paramDate2)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate1);
    int i = localCalendar.get(11);
    int j = localCalendar.get(12);
    paramDate1 = Calendar.getInstance();
    paramDate1.setTime(paramDate2);
    int k = paramDate1.get(11);
    int m = paramDate1.get(12);
    preferenceDataStore.put("com.urbanairship.push.QuietTime.START_HOUR", i);
    preferenceDataStore.put("com.urbanairship.push.QuietTime.START_MINUTE", j);
    preferenceDataStore.put("com.urbanairship.push.QuietTime.END_HOUR", k);
    preferenceDataStore.put("com.urbanairship.push.QuietTime.END_MINUTE", m);
  }
  
  void setRegisteredGcmSenderIds(Set<String> paramSet)
  {
    preferenceDataStore.put("com.urbanairship.push.REGISTERED_GCM_SENDER_IDS", JsonValue.wrap(paramSet, null));
  }
  
  void setSoundEnabled(boolean paramBoolean)
  {
    preferenceDataStore.put("com.urbanairship.push.SOUND_ENABLED", paramBoolean);
  }
  
  void setTags(Set<String> paramSet)
  {
    if ((paramSet == null) || (paramSet.isEmpty()))
    {
      preferenceDataStore.remove("com.urbanairship.push.TAGS");
      return;
    }
    preferenceDataStore.put("com.urbanairship.push.TAGS", JsonValue.wrap(paramSet, null));
  }
  
  void setUserNotificationsEnabled(boolean paramBoolean)
  {
    preferenceDataStore.put("com.urbanairship.push.USER_NOTIFICATIONS_ENABLED", paramBoolean);
  }
  
  void setVibrateEnabled(boolean paramBoolean)
  {
    preferenceDataStore.put("com.urbanairship.push.VIBRATE_ENABLED", paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.PushPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */