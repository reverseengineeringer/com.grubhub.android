package com.grubhub.AppBaseLibrary.android;

import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;

final class GHSPreferences$2
  implements Preference.OnPreferenceChangeListener
{
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramObject = paramObject.toString();
    if ((paramPreference instanceof ListPreference))
    {
      ListPreference localListPreference = (ListPreference)paramPreference;
      int i = localListPreference.findIndexOfValue((String)paramObject);
      if (i >= 0)
      {
        paramObject = localListPreference.getEntries()[i];
        paramPreference.setSummary((CharSequence)paramObject);
      }
    }
    for (;;)
    {
      return true;
      paramObject = null;
      break;
      paramPreference.setSummary((CharSequence)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSPreferences.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */