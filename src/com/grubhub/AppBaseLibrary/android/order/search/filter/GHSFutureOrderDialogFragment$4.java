package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AnimationUtils;
import android.widget.TimePicker;
import android.widget.ViewFlipper;
import java.util.Calendar;

class GHSFutureOrderDialogFragment$4
  implements View.OnClickListener
{
  GHSFutureOrderDialogFragment$4(GHSFutureOrderDialogFragment paramGHSFutureOrderDialogFragment, ViewFlipper paramViewFlipper, TimePicker paramTimePicker, View paramView1, View paramView2) {}
  
  public void onClick(View paramView)
  {
    if (a.getDisplayedChild() == 0) {
      return;
    }
    a.setInAnimation(AnimationUtils.loadAnimation(GHSFutureOrderDialogFragment.c(e), 2130968608));
    a.setOutAnimation(AnimationUtils.loadAnimation(GHSFutureOrderDialogFragment.c(e), 2130968616));
    a.showPrevious();
    if (GHSFutureOrderDialogFragment.a(e, b, a))
    {
      b.setCurrentMinute(Integer.valueOf(GHSFutureOrderDialogFragment.a(e).get(12)));
      b.setCurrentHour(Integer.valueOf(GHSFutureOrderDialogFragment.a(e).get(11)));
    }
    GHSFutureOrderDialogFragment.a(e, a, c, d);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSFutureOrderDialogFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */