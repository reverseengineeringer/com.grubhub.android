package com.grubhub.AppBaseLibrary.android.welcome;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class GHSWelcomeActivity$10$1
  implements Animation.AnimationListener
{
  GHSWelcomeActivity$10$1(GHSWelcomeActivity.10 param10, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.setVisibility(0);
    GHSWelcomeActivity.a(b.a, false);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    GHSWelcomeActivity.a(b.a, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity.10.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */