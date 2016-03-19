package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class k$1
  implements View.OnClickListener
{
  k$1(k paramk) {}
  
  public void onClick(View paramView)
  {
    a.a(a, false, new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (k.a(a) != null) {
          k.a(a).a();
        }
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    a.a = false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.k.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */