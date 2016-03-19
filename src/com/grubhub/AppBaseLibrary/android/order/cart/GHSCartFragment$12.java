package com.grubhub.AppBaseLibrary.android.order.cart;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import android.widget.ListView;

class GHSCartFragment$12
  implements View.OnTouchListener
{
  float a;
  long b;
  long c;
  float d;
  private int f = -1;
  
  GHSCartFragment$12(GHSCartFragment paramGHSCartFragment) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    float f1 = 0.0F;
    if (f < 0) {
      f = ViewConfiguration.get(e.getActivity()).getScaledTouchSlop();
    }
    float f2;
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 3: 
    case 2: 
      label303:
      label315:
      do
      {
        do
        {
          return false;
          b = paramMotionEvent.getEventTime();
        } while (GHSCartFragment.c(e));
        GHSCartFragment.a(e, true);
        a = paramMotionEvent.getX();
        d = (a + paramView.getTranslationX());
        return false;
        paramView.setTranslationX(0.0F);
        GHSCartFragment.a(e, false);
        GHSCartFragment.b(e, false);
        return false;
        GHSCartFragment.b(e, true);
        f1 = paramView.getTranslationX();
        float f3 = paramMotionEvent.getX() + f1;
        f2 = f3 - d;
        d = f3;
        f3 = Math.abs(f2);
        if (!GHSCartFragment.d(e))
        {
          if (f3 <= f) {
            break label303;
          }
          GHSCartFragment.c(e, true);
          GHSCartFragment.e(e).requestDisallowInterceptTouchEvent(true);
        }
        while ((GHSCartFragment.d(e)) && (((f2 < 0.0F) && (f1 > GHSCartFragment.f(e))) || ((f2 > 0.0F) && (f1 < 0.0F))))
        {
          paramView.setTranslationX(f1 + f2);
          if (paramView.getTranslationX() >= GHSCartFragment.f(e)) {
            break label315;
          }
          paramView.setTranslationX(GHSCartFragment.f(e));
          return false;
          GHSCartFragment.b(e, false);
        }
      } while (paramView.getTranslationX() <= 0.0F);
      paramView.setTranslationX(0.0F);
      return false;
    }
    GHSCartFragment.b(e, false);
    c = paramMotionEvent.getEventTime();
    if ((c - b < 500L) && (!GHSCartFragment.d(e)))
    {
      GHSCartFragment.e(e).requestDisallowInterceptTouchEvent(false);
      GHSCartFragment.a(e, false);
      if (paramView.getTranslationX() == 0.0F) {
        f1 = GHSCartFragment.f(e);
      }
      paramView.animate().setDuration(100L).translationX(f1).setListener(new Animator.AnimatorListener()
      {
        public void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          GHSCartFragment.c(e, false);
        }
        
        public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public void onAnimationStart(Animator paramAnonymousAnimator) {}
      });
      return false;
    }
    long l;
    if (GHSCartFragment.d(e))
    {
      f2 = paramView.getTranslationX() / GHSCartFragment.f(e);
      if (f2 < 0.5D) {
        break label530;
      }
      f1 = GHSCartFragment.f(e);
      l = ((1.0F - f2) * 100.0F);
    }
    for (;;)
    {
      paramView.animate().setDuration(l).translationX(f1).setListener(new Animator.AnimatorListener()
      {
        public void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          GHSCartFragment.c(e, false);
        }
        
        public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public void onAnimationStart(Animator paramAnonymousAnimator) {}
      });
      GHSCartFragment.a(e, false);
      return false;
      label530:
      l = (f2 * 100.0F);
      f1 = 0.0F;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */