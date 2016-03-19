package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.provider.Settings.Secure;
import android.util.Log;
import com.urbanairship.BaseManager;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.push.notifications.DefaultNotificationFactory;
import com.urbanairship.push.notifications.NotificationActionButtonGroup;
import com.urbanairship.push.notifications.NotificationFactory;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushUser;
import com.urbanairship.util.UAStringUtil;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class PushManager
  extends BaseManager
{
  public static final String ACTION_CHANNEL_UPDATED = "com.urbanairship.push.CHANNEL_UPDATED";
  public static final String ACTION_NOTIFICATION_BUTTON_OPENED_PROXY = "com.urbanairship.ACTION_NOTIFICATION_BUTTON_OPENED_PROXY";
  public static final String ACTION_NOTIFICATION_DISMISSED = "com.urbanairship.push.DISMISSED";
  public static final String ACTION_NOTIFICATION_DISMISSED_PROXY = "com.urbanairship.ACTION_NOTIFICATION_DISMISSED_PROXY";
  public static final String ACTION_NOTIFICATION_OPENED = "com.urbanairship.push.OPENED";
  public static final String ACTION_NOTIFICATION_OPENED_PROXY = "com.urbanairship.ACTION_NOTIFICATION_OPENED_PROXY";
  public static final String ACTION_PUSH_RECEIVED = "com.urbanairship.push.RECEIVED";
  public static final String EXTRA_CHANNEL_ID = "com.urbanairship.push.EXTRA_CHANNEL_ID";
  public static final String EXTRA_ERROR = "com.urbanairship.push.EXTRA_ERROR";
  public static final String EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION = "com.urbanairship.push.EXTRA_NOTIFICATION_ACTION_BUTTON_DESCRIPTION";
  public static final String EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ACTIONS_PAYLOAD";
  public static final String EXTRA_NOTIFICATION_BUTTON_FOREGROUND = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_FOREGROUND";
  public static final String EXTRA_NOTIFICATION_BUTTON_ID = "com.urbanairship.push.EXTRA_NOTIFICATION_BUTTON_ID";
  public static final String EXTRA_NOTIFICATION_CONTENT_INTENT = "com.urbanairship.push.EXTRA_NOTIFICATION_CONTENT_INTENT";
  public static final String EXTRA_NOTIFICATION_DELETE_INTENT = "com.urbanairship.push.EXTRA_NOTIFICATION_DELETE_INTENT";
  public static final String EXTRA_NOTIFICATION_ID = "com.urbanairship.push.NOTIFICATION_ID";
  public static final String EXTRA_PUSH_MESSAGE = "com.urbanairship.push.EXTRA_PUSH_MESSAGE";
  private final String DEFAULT_TAG_GROUP = "device";
  private final String UA_NOTIFICATION_BUTTON_GROUP_PREFIX = "ua_";
  private final Map<String, NotificationActionButtonGroup> actionGroupMap = new HashMap();
  private boolean channelTagRegistrationEnabled = true;
  private final NamedUser namedUser;
  private NotificationFactory notificationFactory;
  private final PushPreferences preferences;
  
  public PushManager(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    this(paramContext, new PushPreferences(paramPreferenceDataStore), new NamedUser(paramPreferenceDataStore));
  }
  
  PushManager(Context paramContext, PushPreferences paramPushPreferences, NamedUser paramNamedUser)
  {
    preferences = paramPushPreferences;
    notificationFactory = new DefaultNotificationFactory(paramContext);
    namedUser = paramNamedUser;
    if ((Logger.logLevel < 7) && (!UAStringUtil.isEmpty(getChannelId()))) {
      Log.d(UAirship.getAppName() + " Channel ID", getChannelId());
    }
    actionGroupMap.putAll(NotificationActionButtonGroupFactory.createUrbanAirshipGroups());
  }
  
  static String getSecureId(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  public void addNotificationActionButtonGroup(String paramString, NotificationActionButtonGroup paramNotificationActionButtonGroup)
  {
    if (paramString.startsWith("ua_"))
    {
      Logger.warn("Unable to add any notification button groups that starts with the reserved Urban Airship prefix ua_");
      return;
    }
    actionGroupMap.put(paramString, paramNotificationActionButtonGroup);
  }
  
  public TagGroupsEditor editTagGroups()
  {
    new TagGroupsEditor("com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS")
    {
      public TagGroupsEditor addTag(String paramAnonymousString1, String paramAnonymousString2)
      {
        if ((channelTagRegistrationEnabled) && ("device".equals(paramAnonymousString1)))
        {
          Logger.error("Unable to add tag " + paramAnonymousString2 + " to device tag group when channelTagRegistrationEnabled is true.");
          return this;
        }
        return super.addTag(paramAnonymousString1, paramAnonymousString2);
      }
      
      public TagGroupsEditor addTags(String paramAnonymousString, Set<String> paramAnonymousSet)
      {
        if ((channelTagRegistrationEnabled) && ("device".equals(paramAnonymousString)))
        {
          Logger.error("Unable to add tags { " + paramAnonymousSet + " } to device tag group when channelTagRegistrationEnabled is true.");
          return this;
        }
        return super.addTags(paramAnonymousString, paramAnonymousSet);
      }
      
      public TagGroupsEditor removeTag(String paramAnonymousString1, String paramAnonymousString2)
      {
        if ((channelTagRegistrationEnabled) && ("device".equals(paramAnonymousString1)))
        {
          Logger.error("Unable to remove tag " + paramAnonymousString2 + " from device tag group when channelTagRegistrationEnabled is true.");
          return this;
        }
        return super.removeTag(paramAnonymousString1, paramAnonymousString2);
      }
      
      public TagGroupsEditor removeTags(String paramAnonymousString, Set<String> paramAnonymousSet)
      {
        if ((channelTagRegistrationEnabled) && ("device".equals(paramAnonymousString)))
        {
          Logger.error("Unable to remove tags { " + paramAnonymousSet + " } from device tag group when channelTagRegistrationEnabled is true.");
          return this;
        }
        return super.removeTags(paramAnonymousString, paramAnonymousSet);
      }
    };
  }
  
  public String getAdmId()
  {
    return preferences.getAdmId();
  }
  
  public String getAlias()
  {
    return preferences.getAlias();
  }
  
  public String getChannelId()
  {
    return preferences.getChannelId();
  }
  
  String getChannelLocation()
  {
    return preferences.getChannelLocation();
  }
  
  public boolean getChannelTagRegistrationEnabled()
  {
    return channelTagRegistrationEnabled;
  }
  
  @Deprecated
  public boolean getDeviceTagsEnabled()
  {
    return getChannelTagRegistrationEnabled();
  }
  
  @Deprecated
  public String getGcmId()
  {
    return preferences.getGcmId();
  }
  
  public String getGcmToken()
  {
    return preferences.getGcmToken();
  }
  
  public String getLastReceivedSendId()
  {
    return preferences.getLastReceivedSendId();
  }
  
  public NamedUser getNamedUser()
  {
    return namedUser;
  }
  
  ChannelRegistrationPayload getNextChannelRegistrationPayload()
  {
    ChannelRegistrationPayload.Builder localBuilder = new ChannelRegistrationPayload.Builder().setAlias(getAlias()).setTags(getChannelTagRegistrationEnabled(), getTags()).setOptIn(isOptIn());
    boolean bool;
    if ((isPushEnabled()) && (isPushAvailable()))
    {
      bool = true;
      localBuilder = localBuilder.setBackgroundEnabled(bool).setUserId(UAirship.shared().getRichPushManager().getRichPushUser().getId()).setApid(preferences.getApid());
      switch (UAirship.shared().getPlatformType())
      {
      }
    }
    for (;;)
    {
      return localBuilder.build();
      bool = false;
      break;
      localBuilder.setDeviceType("android").setPushAddress(getGcmToken());
      continue;
      localBuilder.setDeviceType("amazon").setPushAddress(getAdmId());
    }
  }
  
  public NotificationActionButtonGroup getNotificationActionGroup(String paramString)
  {
    return (NotificationActionButtonGroup)actionGroupMap.get(paramString);
  }
  
  public NotificationFactory getNotificationFactory()
  {
    return notificationFactory;
  }
  
  PushPreferences getPreferences()
  {
    return preferences;
  }
  
  public Date[] getQuietTimeInterval()
  {
    return preferences.getQuietTimeInterval();
  }
  
  public Set<String> getTags()
  {
    Set localSet1 = preferences.getTags();
    Set localSet2 = TagUtils.normalizeTags(localSet1);
    if (localSet1.size() != localSet2.size()) {
      setTags(localSet2);
    }
    return localSet2;
  }
  
  public boolean getUserNotificationsEnabled()
  {
    return preferences.getUserNotificationsEnabled();
  }
  
  protected void init()
  {
    preferences.migratePushEnabledSettings();
    Intent localIntent = new Intent(UAirship.getApplicationContext(), PushService.class).setAction("com.urbanairship.push.ACTION_START_REGISTRATION");
    UAirship.getApplicationContext().startService(localIntent);
    if (getChannelId() != null) {
      startUpdateTagsService();
    }
    namedUser.startUpdateService();
    if (namedUser.getId() != null) {
      namedUser.startUpdateTagsService();
    }
  }
  
  public boolean isInQuietTime()
  {
    return preferences.isInQuietTime();
  }
  
  public boolean isOptIn()
  {
    return (isPushEnabled()) && (isPushAvailable()) && (getUserNotificationsEnabled());
  }
  
  public boolean isPushAvailable()
  {
    boolean bool = true;
    switch (UAirship.shared().getPlatformType())
    {
    default: 
      bool = false;
    }
    do
    {
      do
      {
        return bool;
      } while (!UAStringUtil.isEmpty(getPreferences().getAdmId()));
      return false;
    } while (!UAStringUtil.isEmpty(getPreferences().getGcmToken()));
    return false;
  }
  
  public boolean isPushEnabled()
  {
    return preferences.isPushEnabled();
  }
  
  public boolean isQuietTimeEnabled()
  {
    return preferences.isQuietTimeEnabled();
  }
  
  public boolean isSoundEnabled()
  {
    return preferences.isSoundEnabled();
  }
  
  public boolean isVibrateEnabled()
  {
    return preferences.isVibrateEnabled();
  }
  
  public void removeNotificationActionButtonGroup(String paramString)
  {
    if (paramString.startsWith("ua_"))
    {
      Logger.error("Unable to remove any reserved Urban Airship actions groups that begin with ua_");
      return;
    }
    actionGroupMap.remove(paramString);
  }
  
  void setAdmId(String paramString)
  {
    preferences.setAppVersionCode(getPackageInfoversionCode);
    preferences.setAdmId(paramString);
    preferences.setDeviceId(getSecureId(UAirship.getApplicationContext()));
  }
  
  public void setAlias(String paramString)
  {
    String str = paramString;
    if (paramString != null) {
      str = paramString.trim();
    }
    if (!UAStringUtil.equals(str, preferences.getAlias()))
    {
      preferences.setAlias(str);
      updateRegistration();
    }
  }
  
  public void setAliasAndTags(String paramString, Set<String> paramSet)
  {
    int j = 1;
    if (paramSet == null) {
      throw new IllegalArgumentException("Tags must be non-null.");
    }
    paramSet = TagUtils.normalizeTags(paramSet);
    int i = 0;
    if (!UAStringUtil.equals(paramString, preferences.getAlias()))
    {
      preferences.setAlias(paramString);
      i = 1;
    }
    if (!paramSet.equals(preferences.getTags()))
    {
      preferences.setTags(paramSet);
      i = j;
    }
    for (;;)
    {
      if (i != 0) {
        updateRegistration();
      }
      return;
    }
  }
  
  void setChannel(String paramString1, String paramString2)
  {
    preferences.setChannelId(paramString1);
    preferences.setChannelLocation(paramString2);
  }
  
  public void setChannelTagRegistrationEnabled(boolean paramBoolean)
  {
    channelTagRegistrationEnabled = paramBoolean;
  }
  
  @Deprecated
  public void setDeviceTagsEnabled(boolean paramBoolean)
  {
    setChannelTagRegistrationEnabled(paramBoolean);
  }
  
  void setGcmId(String paramString)
  {
    preferences.setGcmId(paramString);
  }
  
  void setGcmToken(String paramString)
  {
    preferences.setGcmToken(paramString);
    preferences.setAppVersionCode(getPackageInfoversionCode);
    preferences.setDeviceId(getSecureId(UAirship.getApplicationContext()));
  }
  
  void setLastReceivedSendId(String paramString)
  {
    preferences.setLastReceivedSendId(paramString);
  }
  
  public void setNotificationFactory(NotificationFactory paramNotificationFactory)
  {
    notificationFactory = paramNotificationFactory;
  }
  
  public void setPushEnabled(boolean paramBoolean)
  {
    preferences.setPushEnabled(paramBoolean);
    updateRegistration();
  }
  
  public void setQuietTimeEnabled(boolean paramBoolean)
  {
    preferences.setQuietTimeEnabled(paramBoolean);
  }
  
  public void setQuietTimeInterval(Date paramDate1, Date paramDate2)
  {
    preferences.setQuietTimeInterval(paramDate1, paramDate2);
  }
  
  public void setSoundEnabled(boolean paramBoolean)
  {
    preferences.setSoundEnabled(paramBoolean);
  }
  
  public void setTags(Set<String> paramSet)
  {
    if (paramSet == null) {
      throw new IllegalArgumentException("Tags must be non-null.");
    }
    paramSet = TagUtils.normalizeTags(paramSet);
    if (!paramSet.equals(preferences.getTags()))
    {
      preferences.setTags(paramSet);
      updateRegistration();
    }
  }
  
  public void setUserNotificationsEnabled(boolean paramBoolean)
  {
    preferences.setUserNotificationsEnabled(paramBoolean);
    updateRegistration();
  }
  
  public void setVibrateEnabled(boolean paramBoolean)
  {
    preferences.setVibrateEnabled(paramBoolean);
  }
  
  void startUpdateTagsService()
  {
    Intent localIntent = new Intent(UAirship.getApplicationContext(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS");
    UAirship.getApplicationContext().startService(localIntent);
  }
  
  public void updateRegistration()
  {
    Context localContext = UAirship.getApplicationContext();
    Intent localIntent = new Intent(localContext, PushService.class);
    localIntent.setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
    localContext.startService(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.PushManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */