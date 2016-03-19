package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

class eb
{
  public static void a(final View paramView, ed paramed)
  {
    if (paramed != null)
    {
      paramView.animate().setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationCancel(Animator paramAnonymousAnimator)
        {
          c(paramView);
        }
        
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          b(paramView);
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          a(paramView);
        }
      });
      return;
    }
    paramView.animate().setListener(null);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */