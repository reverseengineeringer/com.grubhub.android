package com.grubhub.AppBaseLibrary.android.views;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View.OnClickListener;

class g$1
  implements Animator.AnimatorListener
{
  g$1(g paramg) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (GHSFlipView.b(a.a) != null) {
      GHSFlipView.b(a.a).onClick(a.a);
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.g.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */