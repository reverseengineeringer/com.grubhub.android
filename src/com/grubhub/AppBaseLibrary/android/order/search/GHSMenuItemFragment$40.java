package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class GHSMenuItemFragment$40
  implements Animation.AnimationListener
{
  GHSMenuItemFragment$40(GHSMenuItemFragment paramGHSMenuItemFragment, boolean paramBoolean) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (GHSMenuItemFragment.C(b) != null)
    {
      if (a) {
        GHSMenuItemFragment.C(b).l();
      }
      GHSMenuItemFragment.C(b).i();
    }
    GHSMenuItemFragment.b(b, false);
    GHSMenuItemFragment.B(b);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    GHSMenuItemFragment.b(b, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.40
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */