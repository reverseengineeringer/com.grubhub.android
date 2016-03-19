package com.braintreepayments.cardform.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

class c$2
  implements ValueAnimator.AnimatorUpdateListener
{
  c$2(c paramc) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    c.a(a, ((Integer)paramValueAnimator.getAnimatedValue()).intValue());
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */