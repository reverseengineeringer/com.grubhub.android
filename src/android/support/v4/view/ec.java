package android.support.v4.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.view.ViewPropertyAnimator;

class ec
{
  public static void a(final View paramView, ef paramef)
  {
    paramView.animate().setUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        a(paramView);
      }
    });
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */