package com.urbanairship.push.iam.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.view.aw;
import android.support.v4.view.bp;
import android.support.v4.widget.au;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.FrameLayout;
import com.urbanairship.Logger;

public class SwipeDismissViewLayout
  extends FrameLayout
{
  private static final float FLING_MIN_DRAG_PERCENT = 0.1F;
  private static final float IDLE_MIN_DRAG_PERCENT = 0.75F;
  private au dragHelper;
  private SwipeDismissViewLayout.Listener listener;
  private float minFlingVelocity;
  
  public SwipeDismissViewLayout(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public SwipeDismissViewLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }
  
  public SwipeDismissViewLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }
  
  @TargetApi(21)
  public SwipeDismissViewLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    init(paramContext);
  }
  
  private void init(Context paramContext)
  {
    if (isInEditMode()) {
      return;
    }
    minFlingVelocity = ViewConfiguration.get(paramContext).getScaledMinimumFlingVelocity();
    dragHelper = au.a(this, new SwipeDismissViewLayout.ViewDragCallback(this, null));
  }
  
  public void computeScroll()
  {
    super.computeScroll();
    if ((dragHelper != null) && (dragHelper.a(true))) {
      bp.b(this);
    }
  }
  
  public float getMinFlingVelocity()
  {
    return minFlingVelocity;
  }
  
  @TargetApi(11)
  public float getXFraction()
  {
    int i = getWidth();
    if (i == 0) {
      return 0.0F;
    }
    return getTranslationX() / i;
  }
  
  @TargetApi(11)
  public float getYFraction()
  {
    int i = getHeight();
    if (i == 0) {
      return 0.0F;
    }
    return getTranslationY() / i;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((dragHelper.a(paramMotionEvent)) || (super.onInterceptTouchEvent(paramMotionEvent))) {
      Logger.error("onInterceptTouchEvent " + paramMotionEvent);
    }
    do
    {
      return true;
      if ((dragHelper.a() != 0) || (aw.a(paramMotionEvent) != 2) || (!dragHelper.d(1))) {
        break;
      }
      View localView = dragHelper.d((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      if ((localView == null) || (bp.a(localView, dragHelper.d()))) {
        break;
      }
      dragHelper.a(localView, aw.b(paramMotionEvent, 0));
    } while (dragHelper.a() == 1);
    return false;
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    dragHelper.b(paramMotionEvent);
    return dragHelper.c() != null;
  }
  
  public void setListener(SwipeDismissViewLayout.Listener paramListener)
  {
    try
    {
      listener = paramListener;
      return;
    }
    finally {}
  }
  
  public void setMinFlingVelocity(float paramFloat)
  {
    minFlingVelocity = paramFloat;
  }
  
  @TargetApi(11)
  public void setXFraction(final float paramFloat)
  {
    if ((getVisibility() == 0) && (getHeight() == 0))
    {
      ViewTreeObserver.OnPreDrawListener local2 = new ViewTreeObserver.OnPreDrawListener()
      {
        public boolean onPreDraw()
        {
          setXFraction(paramFloat);
          getViewTreeObserver().removeOnPreDrawListener(this);
          return true;
        }
      };
      getViewTreeObserver().addOnPreDrawListener(local2);
      return;
    }
    setTranslationX(getWidth() * paramFloat);
  }
  
  @TargetApi(11)
  public void setYFraction(final float paramFloat)
  {
    if ((getVisibility() == 0) && (getHeight() == 0))
    {
      ViewTreeObserver.OnPreDrawListener local1 = new ViewTreeObserver.OnPreDrawListener()
      {
        public boolean onPreDraw()
        {
          setYFraction(paramFloat);
          getViewTreeObserver().removeOnPreDrawListener(this);
          return true;
        }
      };
      getViewTreeObserver().addOnPreDrawListener(local1);
      return;
    }
    setTranslationY(getHeight() * paramFloat);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.view.SwipeDismissViewLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */