package com.grubhub.AppBaseLibrary.android.views;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class GHSReviewPromptView$1$1
  implements Animation.AnimationListener
{
  GHSReviewPromptView$1$1(GHSReviewPromptView.1 param1) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (GHSReviewPromptView.a(a.a) != null) {
      GHSReviewPromptView.a(a.a).a(GHSReviewPromptView.b(a.a), GHSReviewPromptView.c(a.a));
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSReviewPromptView.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */