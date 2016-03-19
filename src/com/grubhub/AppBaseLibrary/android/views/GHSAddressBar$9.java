package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.lang.ref.WeakReference;

class GHSAddressBar$9
  implements Animation.AnimationListener
{
  GHSAddressBar$9(GHSAddressBar paramGHSAddressBar, boolean paramBoolean, View paramView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (!a) {
      GHSAddressBar.a(c, b, false);
    }
    if ((GHSAddressBar.l(c) != null) && (GHSAddressBar.l(c).get() != null)) {
      ((View)GHSAddressBar.l(c).get()).setVisibility(0);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAddressBar.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */