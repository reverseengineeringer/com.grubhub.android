package com.urbanairship.preference;

import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TimePicker;
import java.util.Calendar;

abstract class QuietTimePickerPreference
  extends DialogPreference
  implements UAPreference
{
  private long currentTime = -1L;
  private TimePicker timePicker = null;
  
  public QuietTimePickerPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public QuietTimePickerPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private Calendar getCalendar()
  {
    Calendar localCalendar = Calendar.getInstance();
    if (currentTime != -1L) {
      localCalendar.setTimeInMillis(currentTime);
    }
    return localCalendar;
  }
  
  public String getSummary()
  {
    return android.text.format.DateFormat.getTimeFormat(getContext()).format(getCalendar().getTime());
  }
  
  protected View onCreateDialogView()
  {
    timePicker = new TimePicker(getContext());
    timePicker.setIs24HourView(Boolean.valueOf(android.text.format.DateFormat.is24HourFormat(getContext())));
    Calendar localCalendar = getCalendar();
    timePicker.setCurrentHour(Integer.valueOf(localCalendar.get(11)));
    timePicker.setCurrentMinute(Integer.valueOf(localCalendar.get(12)));
    return timePicker;
  }
  
  public View onCreateView(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.onCreateView(paramViewGroup);
    paramViewGroup.setContentDescription(getPreferenceType().toString());
    return paramViewGroup;
  }
  
  public void onDialogClosed(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.set(11, timePicker.getCurrentHour().intValue());
      localCalendar.set(12, timePicker.getCurrentMinute().intValue());
      long l = localCalendar.getTimeInMillis();
      if (callChangeListener(Long.valueOf(l)))
      {
        currentTime = l;
        notifyChanged();
      }
    }
  }
  
  public void setValue(Object paramObject)
  {
    currentTime = ((Long)paramObject).longValue();
    notifyChanged();
  }
  
  protected boolean shouldPersist()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.preference.QuietTimePickerPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */