package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class GHSMenuItemFragment$46
  implements ViewTreeObserver.OnPreDrawListener
{
  GHSMenuItemFragment$46(GHSMenuItemFragment paramGHSMenuItemFragment) {}
  
  public boolean onPreDraw()
  {
    GHSMenuItemFragment.o(a).getViewTreeObserver().removeOnPreDrawListener(this);
    GHSMenuItemFragment.p(a);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.46
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */