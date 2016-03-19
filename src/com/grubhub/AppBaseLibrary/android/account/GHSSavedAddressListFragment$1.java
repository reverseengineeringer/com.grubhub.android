package com.grubhub.AppBaseLibrary.android.account;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import android.widget.ListView;

class GHSSavedAddressListFragment$1
  implements View.OnTouchListener
{
  float a;
  long b;
  long c;
  float d;
  private int f = -1;
  
  GHSSavedAddressListFragment$1(GHSSavedAddressListFragment paramGHSSavedAddressListFragment) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    float f1 = 0.0F;
    if (paramView == null) {}
    float f2;
    label311:
    label323:
    int i;
    do
    {
      do
      {
        do
        {
          return false;
          if (f < 0) {
            f = ViewConfiguration.get(e.getActivity()).getScaledTouchSlop();
          }
          switch (paramMotionEvent.getAction())
          {
          default: 
            return false;
          case 0: 
            b = paramMotionEvent.getEventTime();
          }
        } while (GHSSavedAddressListFragment.a(e));
        GHSSavedAddressListFragment.a(e, true);
        a = paramMotionEvent.getX();
        d = (a + paramView.getTranslationX());
        return false;
        paramView.setTranslationX(0.0F);
        GHSSavedAddressListFragment.a(e, false);
        GHSSavedAddressListFragment.b(e, false);
        return false;
        GHSSavedAddressListFragment.b(e, true);
        f1 = paramView.getTranslationX();
        float f3 = paramMotionEvent.getX() + f1;
        f2 = f3 - d;
        d = f3;
        f3 = Math.abs(f2);
        if (!GHSSavedAddressListFragment.b(e))
        {
          if (f3 <= f) {
            break label311;
          }
          GHSSavedAddressListFragment.c(e, true);
          e.a().requestDisallowInterceptTouchEvent(true);
        }
        while ((GHSSavedAddressListFragment.b(e)) && (((f2 < 0.0F) && (f1 > GHSSavedAddressListFragment.c(e))) || ((f2 > 0.0F) && (f1 < 0.0F))))
        {
          paramView.setTranslationX(f1 + f2);
          if (paramView.getTranslationX() >= GHSSavedAddressListFragment.c(e)) {
            break label323;
          }
          paramView.setTranslationX(GHSSavedAddressListFragment.c(e));
          return false;
          GHSSavedAddressListFragment.b(e, false);
        }
      } while (paramView.getTranslationX() <= 0.0F);
      paramView.setTranslationX(0.0F);
      return false;
      GHSSavedAddressListFragment.b(e, false);
      c = paramMotionEvent.getEventTime();
      if ((c - b >= 500L) || (GHSSavedAddressListFragment.b(e))) {
        break label448;
      }
      e.a().requestDisallowInterceptTouchEvent(false);
      i = ((Integer)paramView.getTag()).intValue();
      paramMotionEvent = new int[2];
      paramView.getLocationInWindow(paramMotionEvent);
      if (paramMotionEvent[0] != 0) {
        break;
      }
    } while (!GHSSavedAddressListFragment.d(e));
    GHSSavedAddressListFragment.a(e, i);
    return false;
    paramView.setTranslationX(0.0F);
    return false;
    label448:
    if (GHSSavedAddressListFragment.b(e))
    {
      f2 = paramView.getTranslationX() / GHSSavedAddressListFragment.c(e);
      if (f2 < 0.5D) {
        break label541;
      }
      f1 = GHSSavedAddressListFragment.c(e);
    }
    label541:
    for (long l = ((1.0F - f2) * 100.0F);; l = (f2 * 100.0F))
    {
      paramView.animate().setDuration(Math.abs(l)).translationX(f1).setListener(new Animator.AnimatorListener()
      {
        public void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          GHSSavedAddressListFragment.c(e, false);
        }
        
        public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public void onAnimationStart(Animator paramAnonymousAnimator) {}
      });
      GHSSavedAddressListFragment.a(e, false);
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */