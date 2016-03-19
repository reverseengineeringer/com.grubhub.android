package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class GHSMenuItemFragment$45
  implements ViewTreeObserver.OnPreDrawListener
{
  GHSMenuItemFragment$45(GHSMenuItemFragment paramGHSMenuItemFragment) {}
  
  public boolean onPreDraw()
  {
    GHSMenuItemFragment.o(a).getViewTreeObserver().removeOnPreDrawListener(this);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.45
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */