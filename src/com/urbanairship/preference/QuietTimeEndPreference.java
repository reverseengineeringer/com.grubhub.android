package com.urbanairship.preference;

import android.content.Context;
import android.util.AttributeSet;

public class QuietTimeEndPreference
  extends QuietTimePickerPreference
{
  public QuietTimeEndPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public UAPreference.PreferenceType getPreferenceType()
  {
    return UAPreference.PreferenceType.QUIET_TIME_END;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.QuietTimeEndPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */