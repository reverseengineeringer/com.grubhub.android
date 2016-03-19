package com.grubhub.AppBaseLibrary.android.views;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class GHSRestaurantMenuSearchBar$4
  implements View.OnTouchListener
{
  GHSRestaurantMenuSearchBar$4(GHSRestaurantMenuSearchBar paramGHSRestaurantMenuSearchBar) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((GHSRestaurantMenuSearchBar.f(a) != true) && (GHSRestaurantMenuSearchBar.d(a) != null)) {
      GHSRestaurantMenuSearchBar.d(a).w();
    }
    GHSRestaurantMenuSearchBar.b(a, true);
    GHSRestaurantMenuSearchBar.g(a).setVisibility(8);
    if (GHSRestaurantMenuSearchBar.h(a).getVisibility() != 0) {
      GHSRestaurantMenuSearchBar.a(a, GHSRestaurantMenuSearchBar.i(a), true);
    }
    while ((GHSRestaurantMenuSearchBar.j(a) == null) || (GHSRestaurantMenuSearchBar.j(a).getCount() != 0)) {
      return false;
    }
    GHSRestaurantMenuSearchBar.c(a, false);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSRestaurantMenuSearchBar.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */