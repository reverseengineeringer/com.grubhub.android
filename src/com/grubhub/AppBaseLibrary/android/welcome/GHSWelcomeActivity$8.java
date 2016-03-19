package com.grubhub.AppBaseLibrary.android.welcome;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

class GHSWelcomeActivity$8
  implements Animation.AnimationListener
{
  GHSWelcomeActivity$8(GHSWelcomeActivity paramGHSWelcomeActivity, ImageView paramImageView, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    paramAnimation = AnimationUtils.loadAnimation(c, 2130968590);
    paramAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        a.setVisibility(0);
        b.setVisibility(0);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    a.startAnimation(paramAnimation);
    b.startAnimation(paramAnimation);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */