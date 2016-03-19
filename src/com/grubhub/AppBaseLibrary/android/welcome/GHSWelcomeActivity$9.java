package com.grubhub.AppBaseLibrary.android.welcome;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;

class GHSWelcomeActivity$9
  implements View.OnClickListener
{
  GHSWelcomeActivity$9(GHSWelcomeActivity paramGHSWelcomeActivity) {}
  
  public void onClick(final View paramView)
  {
    if (GHSWelcomeActivity.a(a)) {
      return;
    }
    paramView = a.findViewById(2131689637);
    final View localView1 = a.findViewById(2131689625);
    final View localView2 = a.findViewById(2131689632);
    Animation localAnimation1 = AnimationUtils.loadAnimation(a, 2130968621);
    localAnimation1.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        localView1.setVisibility(4);
        GHSWelcomeActivity.a(a, false);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        GHSWelcomeActivity.a(a, true);
      }
    });
    Animation localAnimation2 = AnimationUtils.loadAnimation(a, 2130968623);
    localAnimation2.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        paramView.setVisibility(0);
        localView2.setVisibility(0);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    localView1.startAnimation(localAnimation1);
    localView2.startAnimation(localAnimation2);
    paramView.startAnimation(localAnimation2);
    GHSWelcomeActivity.a(a, "onboarding 2 enter address");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */