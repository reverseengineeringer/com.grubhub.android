package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class ea$1
  extends AnimatorListenerAdapter
{
  ea$1(ed paramed, View paramView) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    a.c(b);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a.b(b);
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    a.a(b);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ea.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */