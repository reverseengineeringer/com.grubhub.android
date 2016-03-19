package com.grubhub.AppBaseLibrary.android.views;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class GHSFeedbackView$1$1
  implements Animation.AnimationListener
{
  GHSFeedbackView$1$1(GHSFeedbackView.1 param1) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (GHSFeedbackView.a(a.a) != null) {
      GHSFeedbackView.a(a.a).c(GHSFeedbackView.b(a.a));
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSFeedbackView.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */