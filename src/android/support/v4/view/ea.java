package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;

class ea
{
  public static void a(View paramView)
  {
    paramView.animate().cancel();
  }
  
  public static void a(View paramView, float paramFloat)
  {
    paramView.animate().alpha(paramFloat);
  }
  
  public static void a(View paramView, long paramLong)
  {
    paramView.animate().setDuration(paramLong);
  }
  
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
  
  public static void a(View paramView, Interpolator paramInterpolator)
  {
    paramView.animate().setInterpolator(paramInterpolator);
  }
  
  public static void b(View paramView)
  {
    paramView.animate().start();
  }
  
  public static void b(View paramView, float paramFloat)
  {
    paramView.animate().translationX(paramFloat);
  }
  
  public static void c(View paramView, float paramFloat)
  {
    paramView.animate().translationY(paramFloat);
  }
  
  public static void d(View paramView, float paramFloat)
  {
    paramView.animate().scaleY(paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */