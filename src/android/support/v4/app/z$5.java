package android.support.v4.app;

import android.view.View;
import android.view.animation.Animation;

class z$5
  extends aa
{
  z$5(z paramz, View paramView, Animation paramAnimation, Fragment paramFragment)
  {
    super(paramView, paramAnimation);
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    if (a.mAnimatingAway != null)
    {
      a.mAnimatingAway = null;
      b.a(a, a.mStateAfterAnimating, 0, 0, false);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.z.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */