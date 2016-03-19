package android.support.v4.app;

import android.support.v4.view.bp;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class aa
  implements Animation.AnimationListener
{
  private boolean a = false;
  private View b;
  
  public aa(View paramView, Animation paramAnimation)
  {
    if ((paramView == null) || (paramAnimation == null)) {
      return;
    }
    b = paramView;
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (a) {
      bp.a(b, 0, null);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    a = z.a(b, paramAnimation);
    if (a) {
      bp.a(b, 2, null);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */