package com.urbanairship.preference;

import android.content.Context;
import android.util.AttributeSet;

public class AnalyticsEnablePreference
  extends UACheckBoxPreference
{
  public AnalyticsEnablePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public UAPreference.PreferenceType getPreferenceType()
  {
    return UAPreference.PreferenceType.ANALYTICS_ENABLED;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.AnalyticsEnablePreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */