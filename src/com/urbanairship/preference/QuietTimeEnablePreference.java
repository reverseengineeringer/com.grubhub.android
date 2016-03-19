package com.urbanairship.preference;

import android.content.Context;
import android.util.AttributeSet;

public class QuietTimeEnablePreference
  extends UACheckBoxPreference
{
  public QuietTimeEnablePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public UAPreference.PreferenceType getPreferenceType()
  {
    return UAPreference.PreferenceType.QUIET_TIME_ENABLED;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.QuietTimeEnablePreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */