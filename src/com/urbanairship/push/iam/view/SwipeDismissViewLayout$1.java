package com.urbanairship.push.iam.view;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class SwipeDismissViewLayout$1
  implements ViewTreeObserver.OnPreDrawListener
{
  SwipeDismissViewLayout$1(SwipeDismissViewLayout paramSwipeDismissViewLayout, float paramFloat) {}
  
  public boolean onPreDraw()
  {
    this$0.setYFraction(val$yFraction);
    this$0.getViewTreeObserver().removeOnPreDrawListener(this);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.view.SwipeDismissViewLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */