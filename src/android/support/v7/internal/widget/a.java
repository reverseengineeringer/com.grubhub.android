package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.view.bp;
import android.support.v4.view.dq;
import android.support.v7.a.l;
import android.support.v7.internal.view.h;
import android.support.v7.widget.ActionMenuView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

abstract class a
  extends ViewGroup
{
  private static final Interpolator j = new DecelerateInterpolator();
  protected final b a = new b(this);
  protected final Context b;
  protected ActionMenuView c;
  protected android.support.v7.widget.a d;
  protected ViewGroup e;
  protected boolean f;
  protected boolean g;
  protected int h;
  protected dq i;
  
  a(Context paramContext)
  {
    this(paramContext, null);
  }
  
  a(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = new TypedValue();
    if ((paramContext.getTheme().resolveAttribute(android.support.v7.a.b.actionBarPopupTheme, paramAttributeSet, true)) && (resourceId != 0))
    {
      b = new ContextThemeWrapper(paramContext, resourceId);
      return;
    }
    b = paramContext;
  }
  
  protected static int a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramInt1 - paramInt2;
    }
    return paramInt1 + paramInt2;
  }
  
  protected int a(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, Integer.MIN_VALUE), paramInt2);
    return Math.max(0, paramInt1 - paramView.getMeasuredWidth() - paramInt3);
  }
  
  protected int a(View paramView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int k = paramView.getMeasuredWidth();
    int m = paramView.getMeasuredHeight();
    paramInt2 = (paramInt3 - m) / 2 + paramInt2;
    if (paramBoolean) {
      paramView.layout(paramInt1 - k, paramInt2, paramInt1, m + paramInt2);
    }
    for (;;)
    {
      paramInt1 = k;
      if (paramBoolean) {
        paramInt1 = -k;
      }
      return paramInt1;
      paramView.layout(paramInt1, paramInt2, paramInt1 + k, m + paramInt2);
    }
  }
  
  public void a(int paramInt)
  {
    if (i != null) {
      i.a();
    }
    h localh;
    dq localdq2;
    if (paramInt == 0)
    {
      if (getVisibility() != 0)
      {
        bp.c(this, 0.0F);
        if ((e != null) && (c != null)) {
          bp.c(c, 0.0F);
        }
      }
      localdq1 = bp.j(this).a(1.0F);
      localdq1.a(200L);
      localdq1.a(j);
      if ((e != null) && (c != null))
      {
        localh = new h();
        localdq2 = bp.j(c).a(1.0F);
        localdq2.a(200L);
        localh.a(a.a(localdq1, paramInt));
        localh.a(localdq1).a(localdq2);
        localh.a();
        return;
      }
      localdq1.a(a.a(localdq1, paramInt));
      localdq1.b();
      return;
    }
    dq localdq1 = bp.j(this).a(0.0F);
    localdq1.a(200L);
    localdq1.a(j);
    if ((e != null) && (c != null))
    {
      localh = new h();
      localdq2 = bp.j(c).a(0.0F);
      localdq2.a(200L);
      localh.a(a.a(localdq1, paramInt));
      localh.a(localdq1).a(localdq2);
      localh.a();
      return;
    }
    localdq1.a(a.a(localdq1, paramInt));
    localdq1.b();
  }
  
  public boolean a()
  {
    if (d != null) {
      return d.c();
    }
    return false;
  }
  
  public int getAnimatedVisibility()
  {
    if (i != null) {
      return a.a;
    }
    return getVisibility();
  }
  
  public int getContentHeight()
  {
    return h;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    TypedArray localTypedArray = getContext().obtainStyledAttributes(null, l.ActionBar, android.support.v7.a.b.actionBarStyle, 0);
    setContentHeight(localTypedArray.getLayoutDimension(l.ActionBar_height, 0));
    localTypedArray.recycle();
    if (d != null) {
      d.a(paramConfiguration);
    }
  }
  
  public void setContentHeight(int paramInt)
  {
    h = paramInt;
    requestLayout();
  }
  
  public void setSplitToolbar(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setSplitView(ViewGroup paramViewGroup)
  {
    e = paramViewGroup;
  }
  
  public void setSplitWhenNarrow(boolean paramBoolean)
  {
    g = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */