package com.urbanairship.preference;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import java.util.Map;

class UAPreferenceAdapter$2
  implements Preference.OnPreferenceChangeListener
{
  UAPreferenceAdapter$2(UAPreferenceAdapter paramUAPreferenceAdapter, UAPreference.PreferenceType paramPreferenceType) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    UAPreferenceAdapter.access$100(this$0).put(val$preferenceType, paramObject);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.UAPreferenceAdapter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */