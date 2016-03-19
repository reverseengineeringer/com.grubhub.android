package com.grubhub.AppBaseLibrary.android.views;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

class g
  implements View.OnClickListener
{
  private g(GHSFlipView paramGHSFlipView) {}
  
  public void onClick(View paramView)
  {
    if (GHSFlipView.a(a).getAlpha() == 1.0F)
    {
      paramView = (AnimatorSet)AnimatorInflater.loadAnimator(a.getContext(), 2131034113);
      localAnimatorSet = (AnimatorSet)AnimatorInflater.loadAnimator(a.getContext(), 2131034112);
      localAnimatorSet.addListener(new Animator.AnimatorListener()
      {
        public void onAnimationCancel(Animator paramAnonymousAnimator) {}
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          if (GHSFlipView.b(a) != null) {
            GHSFlipView.b(a).onClick(a);
          }
        }
        
        public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
        
        public void onAnimationStart(Animator paramAnonymousAnimator) {}
      });
      paramView.setTarget(GHSFlipView.a(a));
      localAnimatorSet.setTarget(GHSFlipView.c(a));
      paramView.start();
      localAnimatorSet.start();
    }
    while (GHSFlipView.c(a).getAlpha() != 1.0F) {
      return;
    }
    paramView = (AnimatorSet)AnimatorInflater.loadAnimator(a.getContext(), 2131034115);
    AnimatorSet localAnimatorSet = (AnimatorSet)AnimatorInflater.loadAnimator(a.getContext(), 2131034114);
    localAnimatorSet.addListener(new Animator.AnimatorListener()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator) {}
      
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (GHSFlipView.b(a) != null) {
          GHSFlipView.b(a).onClick(a);
        }
      }
      
      public void onAnimationRepeat(Animator paramAnonymousAnimator) {}
      
      public void onAnimationStart(Animator paramAnonymousAnimator) {}
    });
    paramView.setTarget(GHSFlipView.c(a));
    localAnimatorSet.setTarget(GHSFlipView.a(a));
    paramView.start();
    localAnimatorSet.start();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */