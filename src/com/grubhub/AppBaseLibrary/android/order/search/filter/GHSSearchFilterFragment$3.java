package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class GHSSearchFilterFragment$3
  implements Animation.AnimationListener
{
  GHSSearchFilterFragment$3(GHSSearchFilterFragment paramGHSSearchFilterFragment) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (GHSSearchFilterFragment.b(a) != null) {
      GHSSearchFilterFragment.b(a).j();
    }
    GHSSearchFilterFragment.a(a, false);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    GHSSearchFilterFragment.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSearchFilterFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */