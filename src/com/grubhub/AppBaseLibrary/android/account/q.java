package com.grubhub.AppBaseLibrary.android.account;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import android.widget.ListView;

class q
  implements View.OnTouchListener
{
  float a;
  long b;
  long c;
  float d;
  private int f = -1;
  private p g;
  
  public q(GHSSavedPaymentListFragment paramGHSSavedPaymentListFragment, p paramp)
  {
    g = paramp;
  }
  
  private void a(View paramView, MotionEvent paramMotionEvent)
  {
    b = paramMotionEvent.getEventTime();
    if (GHSSavedPaymentListFragment.g(e)) {
      return;
    }
    GHSSavedPaymentListFragment.c(e, true);
    a = paramMotionEvent.getX();
    d = (a + paramView.getTranslationX());
  }
  
  private void b(View paramView, MotionEvent paramMotionEvent)
  {
    paramView.setTranslationX(0.0F);
    GHSSavedPaymentListFragment.c(e, false);
    GHSSavedPaymentListFragment.d(e, false);
  }
  
  private void c(View paramView, MotionEvent paramMotionEvent)
  {
    GHSSavedPaymentListFragment.d(e, true);
    float f1 = paramView.getTranslationX();
    float f3 = paramMotionEvent.getX() + f1;
    float f2 = f3 - d;
    d = f3;
    f3 = Math.abs(f2);
    if (!GHSSavedPaymentListFragment.h(e))
    {
      if (f3 > f)
      {
        GHSSavedPaymentListFragment.e(e, true);
        e.a().requestDisallowInterceptTouchEvent(true);
      }
    }
    else if ((GHSSavedPaymentListFragment.h(e)) && (((f2 < 0.0F) && (f1 > GHSSavedPaymentListFragment.e(e))) || ((f2 > 0.0F) && (f1 < 0.0F))))
    {
      paramView.setTranslationX(f1 + f2);
      if (paramView.getTranslationX() >= GHSSavedPaymentListFragment.e(e)) {
        break label177;
      }
      paramView.setTranslationX(GHSSavedPaymentListFragment.e(e));
    }
    label177:
    while (paramView.getTranslationX() <= 0.0F)
    {
      return;
      GHSSavedPaymentListFragment.d(e, false);
      break;
    }
    paramView.setTranslationX(0.0F);
  }
  
  private void d(View paramView, MotionEvent paramMotionEvent)
  {
    float f1 = 0.0F;
    GHSSavedPaymentListFragment.d(e, false);
    c = paramMotionEvent.getEventTime();
    if ((c - b < 500L) && (!GHSSavedPaymentListFragment.h(e)))
    {
      e.a().requestDisallowInterceptTouchEvent(false);
      if (g != null)
      {
        GHSSavedPaymentListFragment.a(e, g.a(), g.b());
        e.a().invalidateViews();
        GHSSavedPaymentListFragment.c(e, false);
        return;
      }
      paramView.setTranslationX(0.0F);
      return;
    }
    float f2;
    if (GHSSavedPaymentListFragment.h(e))
    {
      f2 = paramView.getTranslationX() / GHSSavedPaymentListFragment.e(e);
      if (f2 < 0.5D) {
        break label206;
      }
      f1 = GHSSavedPaymentListFragment.e(e);
    }
    label206:
    for (long l = ((1.0F - f2) * 100.0F);; l = (f2 * 100.0F))
    {
      paramView.animate().setDuration(Math.abs(l)).translationX(f1).setListener(new Animator.AnimatorListener()
      {
        public void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          GHSSavedPaymentListFragment.e(e, false);
        }
        
        public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public void onAnimationStart(Animator paramAnonymousAnimator) {}
      });
      GHSSavedPaymentListFragment.c(e, false);
      return;
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramView == null) {
      return false;
    }
    if (f < 0) {
      f = ViewConfiguration.get(e.getActivity()).getScaledTouchSlop();
    }
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 0: 
      a(paramView, paramMotionEvent);
      return false;
    case 3: 
      b(paramView, paramMotionEvent);
      return false;
    case 2: 
      c(paramView, paramMotionEvent);
      return false;
    }
    d(paramView, paramMotionEvent);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */