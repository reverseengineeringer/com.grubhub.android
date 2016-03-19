package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class d
  extends GestureDetector.SimpleOnGestureListener
{
  private d(GHSMenuCategoryJumperFragment paramGHSMenuCategoryJumperFragment) {}
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    paramFloat2 = paramMotionEvent1.getX();
    float f = paramMotionEvent2.getX();
    if ((Math.abs(paramFloat1) > 900.0F) && (f - paramFloat2 > 200.0F))
    {
      GHSMenuCategoryJumperFragment.a(a, -1);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */