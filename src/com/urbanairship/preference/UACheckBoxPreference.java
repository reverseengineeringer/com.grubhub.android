package com.urbanairship.preference;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

abstract class UACheckBoxPreference
  extends CheckBoxPreference
  implements UAPreference
{
  public UACheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public View onCreateView(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.onCreateView(paramViewGroup);
    paramViewGroup.setContentDescription(getPreferenceType().toString());
    return paramViewGroup;
  }
  
  public void setValue(Object paramObject)
  {
    setChecked(((Boolean)paramObject).booleanValue());
  }
  
  protected boolean shouldPersist()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.UACheckBoxPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */