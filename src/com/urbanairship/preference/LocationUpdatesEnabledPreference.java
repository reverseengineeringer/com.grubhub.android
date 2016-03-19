package com.urbanairship.preference;

import android.content.Context;
import android.util.AttributeSet;

public class LocationUpdatesEnabledPreference
  extends UACheckBoxPreference
{
  public LocationUpdatesEnabledPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public UAPreference.PreferenceType getPreferenceType()
  {
    return UAPreference.PreferenceType.LOCATION_UPDATES_ENABLED;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.LocationUpdatesEnabledPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */