package com.urbanairship.preference;

import android.content.Context;
import android.util.AttributeSet;

public class LocationBackgroundUpdatesAllowedPreference
  extends UACheckBoxPreference
{
  public LocationBackgroundUpdatesAllowedPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public UAPreference.PreferenceType getPreferenceType()
  {
    return UAPreference.PreferenceType.LOCATION_BACKGROUND_UPDATES_ALLOWED;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.LocationBackgroundUpdatesAllowedPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */