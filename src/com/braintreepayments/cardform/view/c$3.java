package com.braintreepayments.cardform.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

class c$3
  implements ValueAnimator.AnimatorUpdateListener
{
  c$3(c paramc) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    c.b(a, ((Integer)paramValueAnimator.getAnimatedValue()).intValue());
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.c.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */