package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class GHSMenuCategoryJumperFragment$6
  implements Animation.AnimationListener
{
  GHSMenuCategoryJumperFragment$6(GHSMenuCategoryJumperFragment paramGHSMenuCategoryJumperFragment, int paramInt) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (a > -1) {
      GHSMenuCategoryJumperFragment.c(b).a(a);
    }
    GHSMenuCategoryJumperFragment.d(b).f();
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuCategoryJumperFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */