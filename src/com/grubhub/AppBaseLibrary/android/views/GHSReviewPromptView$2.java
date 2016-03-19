package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class GHSReviewPromptView$2
  implements View.OnClickListener
{
  GHSReviewPromptView$2(GHSReviewPromptView paramGHSReviewPromptView) {}
  
  public void onClick(View paramView)
  {
    a.a(a, false, new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (GHSReviewPromptView.a(a) != null) {
          GHSReviewPromptView.a(a).b(GHSReviewPromptView.b(a), GHSReviewPromptView.c(a));
        }
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    a.a = false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSReviewPromptView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */