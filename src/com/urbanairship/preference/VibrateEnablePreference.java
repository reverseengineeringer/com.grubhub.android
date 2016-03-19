package com.urbanairship.preference;

import android.content.Context;
import android.util.AttributeSet;

public class VibrateEnablePreference
  extends UACheckBoxPreference
{
  public VibrateEnablePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public UAPreference.PreferenceType getPreferenceType()
  {
    return UAPreference.PreferenceType.VIBRATE_ENABLED;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.VibrateEnablePreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */