package com.braintreepayments.cardform.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

class c$1
  implements ValueAnimator.AnimatorUpdateListener
{
  c$1(c paramc) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    c.a(a, ((Float)paramValueAnimator.getAnimatedValue()).floatValue());
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */