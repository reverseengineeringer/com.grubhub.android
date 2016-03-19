package com.grubhub.AppBaseLibrary.android.views;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class GHSReviewPromptView$2$1
  implements Animation.AnimationListener
{
  GHSReviewPromptView$2$1(GHSReviewPromptView.2 param2) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (GHSReviewPromptView.a(a.a) != null) {
      GHSReviewPromptView.a(a.a).b(GHSReviewPromptView.b(a.a), GHSReviewPromptView.c(a.a));
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSReviewPromptView.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */