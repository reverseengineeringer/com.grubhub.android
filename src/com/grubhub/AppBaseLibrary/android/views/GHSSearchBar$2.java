package com.grubhub.AppBaseLibrary.android.views;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class GHSSearchBar$2
  implements View.OnTouchListener
{
  GHSSearchBar$2(GHSSearchBar paramGHSSearchBar) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!a.a())
    {
      GHSSearchBar.a(a, GHSSearchBar.c(a), true);
      if (GHSSearchBar.d(a) != null)
      {
        GHSSearchBar.d(a).k();
        GHSSearchBar.e(a);
      }
      GHSSearchBar.f(a).setVisibility(8);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSSearchBar.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */