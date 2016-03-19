package com.urbanairship.push.iam.view;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class SwipeDismissViewLayout$2
  implements ViewTreeObserver.OnPreDrawListener
{
  SwipeDismissViewLayout$2(SwipeDismissViewLayout paramSwipeDismissViewLayout, float paramFloat) {}
  
  public boolean onPreDraw()
  {
    this$0.setXFraction(val$xFraction);
    this$0.getViewTreeObserver().removeOnPreDrawListener(this);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.view.SwipeDismissViewLayout.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */