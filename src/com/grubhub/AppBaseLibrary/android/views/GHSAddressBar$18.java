package com.grubhub.AppBaseLibrary.android.views;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class GHSAddressBar$18
  implements View.OnTouchListener
{
  GHSAddressBar$18(GHSAddressBar paramGHSAddressBar) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!GHSAddressBar.f(a)) {
      GHSAddressBar.g(a);
    }
    if (GHSAddressBar.c(a) != null) {
      GHSAddressBar.c(a).d();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAddressBar.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */