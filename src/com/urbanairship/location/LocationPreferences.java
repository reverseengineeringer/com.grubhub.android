package com.urbanairship.location;

import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.PreferenceDataStore.PreferenceChangeListener;
import com.urbanairship.json.JsonException;

class LocationPreferences
  implements PreferenceDataStore.PreferenceChangeListener
{
  static final String BACKGROUND_UPDATES_ALLOWED = "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED";
  static final String KEY_PREFIX = "com.urbanairship.location";
  static final String LOCATION_OPTIONS = "com.urbanairship.location.LOCATION_OPTIONS";
  static final String LOCATION_UPDATES_ENABLED = "com.urbanairship.location.LOCATION_UPDATES_ENABLED";
  private PreferenceDataStore.PreferenceChangeListener preferenceChangeListener;
  private final PreferenceDataStore preferenceDataStore;
  
  LocationPreferences(PreferenceDataStore paramPreferenceDataStore)
  {
    preferenceDataStore = paramPreferenceDataStore;
    paramPreferenceDataStore.addListener(this);
  }
  
  LocationRequestOptions getLocationRequestOptions()
  {
    LocationRequestOptions localLocationRequestOptions = null;
    String str = preferenceDataStore.getString("com.urbanairship.location.LOCATION_OPTIONS", null);
    if (str != null) {}
    try
    {
      localLocationRequestOptions = LocationRequestOptions.parseJson(str);
      return localLocationRequestOptions;
    }
    catch (JsonException localJsonException)
    {
      Logger.error("LocationPreferences - Failed parsing LocationRequestOptions from JSON: " + localJsonException.getMessage());
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Logger.error("LocationPreferences - Invalid LocationRequestOptions from JSON: " + localIllegalArgumentException.getMessage());
    }
    return null;
  }
  
  boolean isBackgroundLocationAllowed()
  {
    return preferenceDataStore.getBoolean("com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED", false);
  }
  
  boolean isLocationUpdatesEnabled()
  {
    return preferenceDataStore.getBoolean("com.urbanairship.location.LOCATION_UPDATES_ENABLED", false);
  }
  
  public void onPreferenceChange(String paramString)
  {
    if (paramString.startsWith("com.urbanairship.location")) {
      try
      {
        if (preferenceChangeListener != null) {
          preferenceChangeListener.onPreferenceChange(paramString);
        }
        return;
      }
      finally {}
    }
  }
  
  void setBackgroundLocationAllowed(boolean paramBoolean)
  {
    preferenceDataStore.put("com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED", paramBoolean);
  }
  
  void setListener(PreferenceDataStore.PreferenceChangeListener paramPreferenceChangeListener)
  {
    try
    {
      preferenceChangeListener = paramPreferenceChangeListener;
      return;
    }
    finally {}
  }
  
  void setLocationRequestOptions(LocationRequestOptions paramLocationRequestOptions)
  {
    preferenceDataStore.put("com.urbanairship.location.LOCATION_OPTIONS", paramLocationRequestOptions);
  }
  
  void setLocationUpdatesEnabled(boolean paramBoolean)
  {
    preferenceDataStore.put("com.urbanairship.location.LOCATION_UPDATES_ENABLED", paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */