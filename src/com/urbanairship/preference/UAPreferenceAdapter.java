package com.urbanairship.preference;

import android.os.Handler;
import android.os.Looper;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.location.UALocationManager;
import com.urbanairship.push.PushManager;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushUser;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class UAPreferenceAdapter
{
  private static final int CHANNEL_ID_MAX_RETRIES = 4;
  private static final int CHANNEL_ID_RETRY_DELAY = 1000;
  private int channelIdRetryCount = 0;
  private final Map<UAPreference.PreferenceType, Object> preferences = new HashMap();
  
  public UAPreferenceAdapter(PreferenceScreen paramPreferenceScreen)
  {
    checkForUAPreferences(paramPreferenceScreen);
  }
  
  private void checkForUAPreferences(PreferenceGroup paramPreferenceGroup)
  {
    if (paramPreferenceGroup == null) {
      return;
    }
    int i = 0;
    label7:
    Preference localPreference;
    if (i < paramPreferenceGroup.getPreferenceCount())
    {
      localPreference = paramPreferenceGroup.getPreference(i);
      if (!(localPreference instanceof PreferenceGroup)) {
        break label43;
      }
      checkForUAPreferences((PreferenceGroup)localPreference);
    }
    for (;;)
    {
      i += 1;
      break label7;
      break;
      label43:
      if ((localPreference instanceof UAPreference)) {
        trackPreference((UAPreference)localPreference);
      }
    }
  }
  
  private Object getInternalPreference(UAPreference.PreferenceType paramPreferenceType)
  {
    UAirship localUAirship = UAirship.shared();
    switch (3.$SwitchMap$com$urbanairship$preference$UAPreference$PreferenceType[paramPreferenceType.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      do
      {
        do
        {
          return null;
          return Boolean.valueOf(localUAirship.getLocationManager().isLocationUpdatesEnabled());
          return Boolean.valueOf(localUAirship.getLocationManager().isBackgroundLocationAllowed());
          return Boolean.valueOf(localUAirship.getPushManager().getUserNotificationsEnabled());
          return Boolean.valueOf(localUAirship.getPushManager().isQuietTimeEnabled());
          paramPreferenceType = localUAirship.getPushManager().getQuietTimeInterval();
        } while (paramPreferenceType == null);
        return Long.valueOf(paramPreferenceType[1].getTime());
        paramPreferenceType = localUAirship.getPushManager().getQuietTimeInterval();
      } while (paramPreferenceType == null);
      return Long.valueOf(paramPreferenceType[0].getTime());
    case 7: 
      return Boolean.valueOf(localUAirship.getPushManager().isSoundEnabled());
    case 8: 
      return Boolean.valueOf(localUAirship.getPushManager().isVibrateEnabled());
    case 9: 
      return localUAirship.getPushManager().getChannelId();
    case 10: 
      return localUAirship.getRichPushManager().getRichPushUser().getId();
    }
    return Boolean.valueOf(localUAirship.getAnalytics().isEnabled());
  }
  
  private void setInternalPreference(UAPreference.PreferenceType paramPreferenceType, Object paramObject)
  {
    UAirship localUAirship = UAirship.shared();
    switch (3.$SwitchMap$com$urbanairship$preference$UAPreference$PreferenceType[paramPreferenceType.ordinal()])
    {
    case 9: 
    case 10: 
    default: 
      return;
    case 2: 
      localUAirship.getLocationManager().setBackgroundLocationAllowed(((Boolean)paramObject).booleanValue());
      return;
    case 1: 
      localUAirship.getLocationManager().setLocationUpdatesEnabled(((Boolean)paramObject).booleanValue());
      return;
    case 3: 
      localUAirship.getPushManager().setUserNotificationsEnabled(((Boolean)paramObject).booleanValue());
      return;
    case 4: 
      localUAirship.getPushManager().setQuietTimeEnabled(((Boolean)paramObject).booleanValue());
      return;
    case 7: 
      localUAirship.getPushManager().setSoundEnabled(((Boolean)paramObject).booleanValue());
      return;
    case 8: 
      localUAirship.getPushManager().setVibrateEnabled(((Boolean)paramObject).booleanValue());
      return;
    case 5: 
      paramPreferenceType = localUAirship.getPushManager().getQuietTimeInterval();
      if (paramPreferenceType != null) {}
      for (paramPreferenceType = paramPreferenceType[0];; paramPreferenceType = new Date())
      {
        localUAirship.getPushManager().setQuietTimeInterval(paramPreferenceType, new Date(((Long)paramObject).longValue()));
        return;
      }
    case 6: 
      paramPreferenceType = localUAirship.getPushManager().getQuietTimeInterval();
      if (paramPreferenceType != null) {}
      for (paramPreferenceType = paramPreferenceType[1];; paramPreferenceType = new Date())
      {
        localUAirship.getPushManager().setQuietTimeInterval(new Date(((Long)paramObject).longValue()), paramPreferenceType);
        return;
      }
    }
    localUAirship.getAnalytics().setEnabled(((Boolean)paramObject).booleanValue());
  }
  
  private void trackPreference(final UAPreference paramUAPreference)
  {
    PushManager localPushManager = UAirship.shared().getPushManager();
    final UAPreference.PreferenceType localPreferenceType = paramUAPreference.getPreferenceType();
    if (localPreferenceType == null)
    {
      Logger.warn("Preference returned a null preference type. Ignoring preference " + paramUAPreference);
      return;
    }
    Object localObject = getInternalPreference(localPreferenceType);
    if (localObject != null) {}
    while ((localPreferenceType != UAPreference.PreferenceType.CHANNEL_ID) || (!localException.isPushEnabled()) || (channelIdRetryCount >= 4)) {
      try
      {
        paramUAPreference.setValue(localObject);
        ((Preference)paramUAPreference).setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener()
        {
          public boolean onPreferenceChange(Preference paramAnonymousPreference, Object paramAnonymousObject)
          {
            preferences.put(localPreferenceType, paramAnonymousObject);
            return true;
          }
        });
        return;
      }
      catch (Exception localException)
      {
        Logger.warn("Exception setting value " + localObject + ". Ignoring preference " + paramUAPreference, localException);
        return;
      }
    }
    channelIdRetryCount += 1;
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public void run()
      {
        UAPreferenceAdapter.this.trackPreference(paramUAPreference);
      }
    }, 1000L);
  }
  
  public void applyUrbanAirshipPreferences()
  {
    Iterator localIterator = preferences.keySet().iterator();
    while (localIterator.hasNext())
    {
      UAPreference.PreferenceType localPreferenceType = (UAPreference.PreferenceType)localIterator.next();
      Object localObject = preferences.get(localPreferenceType);
      if (localObject != null) {
        try
        {
          setInternalPreference(localPreferenceType, localObject);
        }
        catch (Exception localException)
        {
          Logger.warn("Unable to set " + localPreferenceType + ", invalid value " + localObject, localException);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.UAPreferenceAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */