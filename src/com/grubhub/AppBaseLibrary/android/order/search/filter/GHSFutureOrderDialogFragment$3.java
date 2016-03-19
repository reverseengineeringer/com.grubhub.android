package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;
import android.widget.ViewFlipper;
import java.util.Calendar;

class GHSFutureOrderDialogFragment$3
  implements TimePicker.OnTimeChangedListener
{
  GHSFutureOrderDialogFragment$3(GHSFutureOrderDialogFragment paramGHSFutureOrderDialogFragment, TimePicker paramTimePicker, ViewFlipper paramViewFlipper) {}
  
  public void onTimeChanged(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    if (GHSFutureOrderDialogFragment.a(c, a, b))
    {
      a.setCurrentMinute(Integer.valueOf(GHSFutureOrderDialogFragment.a(c).get(12)));
      a.setCurrentHour(Integer.valueOf(GHSFutureOrderDialogFragment.a(c).get(11)));
    }
    while (!GHSFutureOrderDialogFragment.b(c, a, b)) {
      return;
    }
    a.setCurrentMinute(Integer.valueOf(GHSFutureOrderDialogFragment.b(c).get(12)));
    a.setCurrentHour(Integer.valueOf(GHSFutureOrderDialogFragment.b(c).get(11)));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSFutureOrderDialogFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */