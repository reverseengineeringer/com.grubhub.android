package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;
import android.widget.ViewFlipper;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

public class GHSFutureOrderDialogFragment
  extends DialogFragment
{
  private long a;
  private Calendar b;
  private Calendar c;
  private Calendar d;
  private Calendar e;
  private Calendar f;
  private Activity g;
  private b h;
  
  public static GHSFutureOrderDialogFragment a(long paramLong)
  {
    Bundle localBundle = new Bundle();
    localBundle.putLong("SAVED_TIME_MILLIS", paramLong);
    GHSFutureOrderDialogFragment localGHSFutureOrderDialogFragment = new GHSFutureOrderDialogFragment();
    localGHSFutureOrderDialogFragment.setArguments(localBundle);
    return localGHSFutureOrderDialogFragment;
  }
  
  private void a(View paramView)
  {
    a((ViewFlipper)paramView.findViewById(2131689855), (TextView)paramView.findViewById(2131689856), (TextView)paramView.findViewById(2131689857), (TextView)paramView.findViewById(2131689858), (TextView)paramView.findViewById(2131689859));
    a((TimePicker)paramView.findViewById(2131689852));
  }
  
  private void a(TimePicker paramTimePicker)
  {
    paramTimePicker.setCurrentMinute(Integer.valueOf(c.get(12)));
    paramTimePicker.setCurrentHour(Integer.valueOf(c.get(11)));
  }
  
  private void a(final TimePicker paramTimePicker, final ViewFlipper paramViewFlipper)
  {
    paramTimePicker.setOnTimeChangedListener(new TimePicker.OnTimeChangedListener()
    {
      public void onTimeChanged(TimePicker paramAnonymousTimePicker, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (GHSFutureOrderDialogFragment.a(GHSFutureOrderDialogFragment.this, paramTimePicker, paramViewFlipper))
        {
          paramTimePicker.setCurrentMinute(Integer.valueOf(GHSFutureOrderDialogFragment.a(GHSFutureOrderDialogFragment.this).get(12)));
          paramTimePicker.setCurrentHour(Integer.valueOf(GHSFutureOrderDialogFragment.a(GHSFutureOrderDialogFragment.this).get(11)));
        }
        while (!GHSFutureOrderDialogFragment.b(GHSFutureOrderDialogFragment.this, paramTimePicker, paramViewFlipper)) {
          return;
        }
        paramTimePicker.setCurrentMinute(Integer.valueOf(GHSFutureOrderDialogFragment.b(GHSFutureOrderDialogFragment.this).get(12)));
        paramTimePicker.setCurrentHour(Integer.valueOf(GHSFutureOrderDialogFragment.b(GHSFutureOrderDialogFragment.this).get(11)));
      }
    });
  }
  
  private void a(final TimePicker paramTimePicker, final ViewFlipper paramViewFlipper, final View paramView1, final View paramView2)
  {
    a(paramViewFlipper, paramView1, paramView2);
    paramView1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (paramViewFlipper.getDisplayedChild() == 0) {
          return;
        }
        paramViewFlipper.setInAnimation(AnimationUtils.loadAnimation(GHSFutureOrderDialogFragment.c(GHSFutureOrderDialogFragment.this), 2130968608));
        paramViewFlipper.setOutAnimation(AnimationUtils.loadAnimation(GHSFutureOrderDialogFragment.c(GHSFutureOrderDialogFragment.this), 2130968616));
        paramViewFlipper.showPrevious();
        if (GHSFutureOrderDialogFragment.a(GHSFutureOrderDialogFragment.this, paramTimePicker, paramViewFlipper))
        {
          paramTimePicker.setCurrentMinute(Integer.valueOf(GHSFutureOrderDialogFragment.a(GHSFutureOrderDialogFragment.this).get(12)));
          paramTimePicker.setCurrentHour(Integer.valueOf(GHSFutureOrderDialogFragment.a(GHSFutureOrderDialogFragment.this).get(11)));
        }
        GHSFutureOrderDialogFragment.a(GHSFutureOrderDialogFragment.this, paramViewFlipper, paramView1, paramView2);
      }
    });
    paramView2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (paramViewFlipper.getDisplayedChild() == paramViewFlipper.getChildCount() - 1) {
          return;
        }
        paramViewFlipper.setInAnimation(AnimationUtils.loadAnimation(GHSFutureOrderDialogFragment.c(GHSFutureOrderDialogFragment.this), 2130968609));
        paramViewFlipper.setOutAnimation(AnimationUtils.loadAnimation(GHSFutureOrderDialogFragment.c(GHSFutureOrderDialogFragment.this), 2130968615));
        paramViewFlipper.showNext();
        if (GHSFutureOrderDialogFragment.b(GHSFutureOrderDialogFragment.this, paramTimePicker, paramViewFlipper))
        {
          paramTimePicker.setCurrentMinute(Integer.valueOf(GHSFutureOrderDialogFragment.b(GHSFutureOrderDialogFragment.this).get(12)));
          paramTimePicker.setCurrentHour(Integer.valueOf(GHSFutureOrderDialogFragment.b(GHSFutureOrderDialogFragment.this).get(11)));
        }
        GHSFutureOrderDialogFragment.a(GHSFutureOrderDialogFragment.this, paramViewFlipper, paramView1, paramView2);
      }
    });
  }
  
  private void a(ViewFlipper paramViewFlipper, View paramView1, View paramView2)
  {
    boolean bool2 = true;
    paramView1 = paramView1.findViewById(2131689854);
    if (paramViewFlipper.getDisplayedChild() != 0)
    {
      bool1 = true;
      paramView1.setEnabled(bool1);
      paramView1 = paramView2.findViewById(2131689861);
      if (paramViewFlipper.getDisplayedChild() == paramViewFlipper.getChildCount() - 1) {
        break label63;
      }
    }
    label63:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramView1.setEnabled(bool1);
      return;
      bool1 = false;
      break;
    }
  }
  
  private void a(ViewFlipper paramViewFlipper, TextView paramTextView1, TextView paramTextView2, TextView paramTextView3, TextView paramTextView4)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EEEE", Locale.US);
    if (b.get(7) == c.get(7)) {
      paramTextView1.setText(2131231907);
    }
    for (;;)
    {
      paramTextView2.setText(2131231908);
      paramTextView3.setText(localSimpleDateFormat.format(e.getTime()));
      paramTextView4.setText(localSimpleDateFormat.format(f.getTime()));
      return;
      paramViewFlipper.removeViewAt(0);
    }
  }
  
  private void b(View paramView)
  {
    a((TimePicker)paramView.findViewById(2131689852), (ViewFlipper)paramView.findViewById(2131689855), paramView.findViewById(2131689853), paramView.findViewById(2131689860));
    a((TimePicker)paramView.findViewById(2131689852), (ViewFlipper)paramView.findViewById(2131689855));
  }
  
  private boolean b(TimePicker paramTimePicker, ViewFlipper paramViewFlipper)
  {
    if (paramViewFlipper.getDisplayedChild() != 0) {}
    int i;
    int j;
    int k;
    int m;
    do
    {
      return false;
      i = c.get(11);
      j = c.get(12);
      k = paramTimePicker.getCurrentHour().intValue();
      m = paramTimePicker.getCurrentMinute().intValue();
    } while ((i <= k) && ((i != k) || (j <= m)));
    return true;
  }
  
  private void c(View paramView)
  {
    if ((a == 0L) || (a < c.getTimeInMillis()) || (a > f.getTimeInMillis())) {
      return;
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(a);
    if (localCalendar.get(1) == b.get(1)) {}
    for (int i = localCalendar.get(6) - b.get(6);; i = b.getActualMaximum(6) + localCalendar.get(6) - b.get(6))
    {
      ViewFlipper localViewFlipper = (ViewFlipper)paramView.findViewById(2131689855);
      localViewFlipper.setDisplayedChild(i - 4 + localViewFlipper.getChildCount());
      TimePicker localTimePicker = (TimePicker)paramView.findViewById(2131689852);
      localTimePicker.setCurrentMinute(Integer.valueOf(localCalendar.get(12)));
      localTimePicker.setCurrentHour(Integer.valueOf(localCalendar.get(11)));
      a(localViewFlipper, paramView.findViewById(2131689853), paramView.findViewById(2131689860));
      return;
    }
  }
  
  private boolean c(TimePicker paramTimePicker, ViewFlipper paramViewFlipper)
  {
    if (paramViewFlipper.getDisplayedChild() != paramViewFlipper.getChildCount() - 1) {}
    int i;
    int j;
    int k;
    int m;
    do
    {
      return false;
      i = f.get(11);
      j = f.get(12);
      k = paramTimePicker.getCurrentHour().intValue();
      m = paramTimePicker.getCurrentMinute().intValue();
    } while ((i >= k) && ((i != k) || (j >= m)));
    return true;
  }
  
  private void d(View paramView)
  {
    Object localObject = (ViewFlipper)paramView.findViewById(2131689855);
    int i = ((ViewFlipper)localObject).getDisplayedChild();
    int j = ((ViewFlipper)localObject).getChildCount();
    if (i == j - 1) {
      localObject = (Calendar)f.clone();
    }
    for (;;)
    {
      paramView = (TimePicker)paramView.findViewById(2131689852);
      ((Calendar)localObject).set(11, paramView.getCurrentHour().intValue());
      ((Calendar)localObject).set(12, paramView.getCurrentMinute().intValue());
      ((Calendar)localObject).set(13, 0);
      ((Calendar)localObject).set(14, 0);
      if (h != null) {
        h.a(((Calendar)localObject).getTimeInMillis());
      }
      return;
      if (i == j - 2) {
        localObject = (Calendar)e.clone();
      } else if (i == j - 3) {
        localObject = (Calendar)d.clone();
      } else {
        localObject = (Calendar)c.clone();
      }
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = getDialog().getWindow();
    Point localPoint = new Point();
    paramBundle.getWindowManager().getDefaultDisplay().getSize(localPoint);
    paramBundle.setLayout(Float.valueOf(x * 0.9F).intValue(), Float.valueOf(y * 0.7F).intValue());
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    g = paramActivity;
    if ((getParentFragment() instanceof b)) {
      h = ((b)getParentFragment());
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = Calendar.getInstance();
    b.set(13, 0);
    b.set(14, 0);
    c = Calendar.getInstance();
    c.setTimeInMillis(b.getTimeInMillis() + 7200000L);
    d = Calendar.getInstance();
    d.setTimeInMillis(b.getTimeInMillis() + 86400000L);
    e = Calendar.getInstance();
    e.setTimeInMillis(b.getTimeInMillis() + 172800000L);
    f = Calendar.getInstance();
    f.setTimeInMillis(b.getTimeInMillis() + 259200000L);
    paramBundle = getArguments();
    if (paramBundle != null) {
      a = paramBundle.getLong("SAVED_TIME_MILLIS", 0L);
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new Dialog(g, 2131296259);
    paramBundle.requestWindowFeature(1);
    return paramBundle;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903124, null);
  }
  
  public void onDetach()
  {
    g = null;
    h = null;
    super.onDetach();
  }
  
  public void onStart()
  {
    super.onStart();
    h.a().a(new c("future ordering", "change order time picker_impression", "viewed day time module"));
  }
  
  public void onViewCreated(final View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramBundle = (TextView)paramView.findViewById(2131689851);
    paramBundle.setText(2131231906);
    paramBundle.setContentDescription(getString(2131231906));
    a(paramView);
    c(paramView);
    b(paramView);
    paramView.findViewById(2131689863).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        dismiss();
      }
    });
    paramView.findViewById(2131689862).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSFutureOrderDialogFragment.a(GHSFutureOrderDialogFragment.this, paramView);
        dismiss();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSFutureOrderDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */