package com.urbanairship.preference;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class UserIdPreference
  extends Preference
  implements UAPreference
{
  public UserIdPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public UAPreference.PreferenceType getPreferenceType()
  {
    return UAPreference.PreferenceType.USER_ID;
  }
  
  public View onCreateView(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.onCreateView(paramViewGroup);
    paramViewGroup.setContentDescription(getPreferenceType().toString());
    return paramViewGroup;
  }
  
  public void setValue(Object paramObject)
  {
    setSummary((String)paramObject);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.UserIdPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */