package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class ac$2
  implements Animation.AnimationListener
{
  ac$2(ac paramac, ad paramad) {}
  
  public void onAnimationEnd(Animation paramAnimation) {}
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    a.l();
    a.b();
    a.b(a.i());
    if (b.a)
    {
      b.a = false;
      paramAnimation.setDuration(1332L);
      a.a(false);
      return;
    }
    ac.a(b, (ac.a(b) + 1.0F) % 5.0F);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    ac.a(b, 0.0F);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ac.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */