package com.urbanairship.preference;

import android.content.Context;
import android.util.AttributeSet;

public class PushEnablePreference
  extends UACheckBoxPreference
{
  public PushEnablePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public UAPreference.PreferenceType getPreferenceType()
  {
    return UAPreference.PreferenceType.USER_NOTIFICATIONS_ENABLED;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.PushEnablePreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */