package android.support.v7.internal.widget;

import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.support.v7.a.b;
import android.support.v7.app.d;
import android.support.v7.internal.view.a;
import android.support.v7.widget.m;
import android.support.v7.widget.n;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView.LayoutParams;
import android.widget.HorizontalScrollView;

public class ah
  extends HorizontalScrollView
  implements r
{
  private static final Interpolator j = new DecelerateInterpolator();
  Runnable a;
  int b;
  int c;
  private aj d;
  private m e;
  private SpinnerCompat f;
  private boolean g;
  private int h;
  private int i;
  
  private ak a(d paramd, boolean paramBoolean)
  {
    paramd = new ak(this, getContext(), paramd, paramBoolean);
    if (paramBoolean)
    {
      paramd.setBackgroundDrawable(null);
      paramd.setLayoutParams(new AbsListView.LayoutParams(-1, h));
      return paramd;
    }
    paramd.setFocusable(true);
    if (d == null) {
      d = new aj(this, null);
    }
    paramd.setOnClickListener(d);
    return paramd;
  }
  
  private boolean a()
  {
    return (f != null) && (f.getParent() == this);
  }
  
  private void b()
  {
    if (a()) {
      return;
    }
    if (f == null) {
      f = d();
    }
    removeView(e);
    addView(f, new ViewGroup.LayoutParams(-2, -1));
    if (f.c() == null) {
      f.a(new ai(this, null));
    }
    if (a != null)
    {
      removeCallbacks(a);
      a = null;
    }
    f.setSelection(i);
  }
  
  private boolean c()
  {
    if (!a()) {
      return false;
    }
    removeView(f);
    addView(e, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(f.getSelectedItemPosition());
    return false;
  }
  
  private SpinnerCompat d()
  {
    SpinnerCompat localSpinnerCompat = new SpinnerCompat(getContext(), null, b.actionDropDownStyle);
    localSpinnerCompat.setLayoutParams(new n(-2, -1));
    localSpinnerCompat.a(this);
    return localSpinnerCompat;
  }
  
  public void a(int paramInt)
  {
    final View localView = e.getChildAt(paramInt);
    if (a != null) {
      removeCallbacks(a);
    }
    a = new Runnable()
    {
      public void run()
      {
        int i = localView.getLeft();
        int j = (getWidth() - localView.getWidth()) / 2;
        smoothScrollTo(i - j, 0);
        a = null;
      }
    };
    post(a);
  }
  
  public void a(p<?> paramp, View paramView, int paramInt, long paramLong)
  {
    ((ak)paramView).b().d();
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (a != null) {
      post(a);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    paramConfiguration = a.a(getContext());
    setContentHeight(paramConfiguration.e());
    c = paramConfiguration.g();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (a != null) {
      removeCallbacks(a);
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = 1;
    int k = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (k == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int m = e.getChildCount();
      if ((m <= 1) || ((k != 1073741824) && (k != Integer.MIN_VALUE))) {
        break label190;
      }
      if (m <= 2) {
        break label177;
      }
      b = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      label68:
      b = Math.min(b, c);
      label83:
      k = View.MeasureSpec.makeMeasureSpec(h, 1073741824);
      if ((bool) || (!g)) {
        break label198;
      }
      label105:
      if (paramInt2 == 0) {
        break label211;
      }
      e.measure(0, k);
      if (e.getMeasuredWidth() <= View.MeasureSpec.getSize(paramInt1)) {
        break label203;
      }
      b();
    }
    for (;;)
    {
      paramInt2 = getMeasuredWidth();
      super.onMeasure(paramInt1, k);
      paramInt1 = getMeasuredWidth();
      if ((bool) && (paramInt2 != paramInt1)) {
        setTabSelected(i);
      }
      return;
      bool = false;
      break;
      label177:
      b = (View.MeasureSpec.getSize(paramInt1) / 2);
      break label68;
      label190:
      b = -1;
      break label83;
      label198:
      paramInt2 = 0;
      break label105;
      label203:
      c();
      continue;
      label211:
      c();
    }
  }
  
  public void setAllowCollapse(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void setContentHeight(int paramInt)
  {
    h = paramInt;
    requestLayout();
  }
  
  public void setTabSelected(int paramInt)
  {
    i = paramInt;
    int m = e.getChildCount();
    int k = 0;
    if (k < m)
    {
      View localView = e.getChildAt(k);
      if (k == paramInt) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        if (bool) {
          a(paramInt);
        }
        k += 1;
        break;
      }
    }
    if ((f != null) && (paramInt >= 0)) {
      f.setSelection(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */