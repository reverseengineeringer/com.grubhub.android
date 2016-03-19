package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class GHSHintViewPager
  extends ViewPager
{
  private boolean a;
  
  public GHSHintViewPager(Context paramContext)
  {
    super(paramContext);
    h();
  }
  
  public GHSHintViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    h();
  }
  
  private void h()
  {
    setClipToPadding(false);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (a) {
      return false;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (a) {
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setHintMargins(int paramInt)
  {
    setPadding(paramInt, getPaddingTop(), paramInt, getPaddingBottom());
    setPageMargin(paramInt / 2);
  }
  
  public void setSwipeEnabled(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      a = paramBoolean;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSHintViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */