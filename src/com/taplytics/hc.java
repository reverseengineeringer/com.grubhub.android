package com.taplytics;

import android.view.animation.AlphaAnimation;
import android.widget.ImageView;

class hc
  implements Runnable
{
  hc(gq paramgq) {}
  
  public void run()
  {
    try
    {
      if (gq.m(a) != null)
      {
        AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
        localAlphaAnimation.setDuration(gq.n(a));
        gq.m(a).startAnimation(localAlphaAnimation);
        localAlphaAnimation.setFillAfter(true);
        localAlphaAnimation.setAnimationListener(new hd(this));
        if (ck.c()) {
          ck.a("delay image hidden");
        }
        gq.c(a, true);
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("Delay view error", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */