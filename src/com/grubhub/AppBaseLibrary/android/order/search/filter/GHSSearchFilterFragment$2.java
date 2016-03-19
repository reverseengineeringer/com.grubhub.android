package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class GHSSearchFilterFragment$2
  implements ViewTreeObserver.OnPreDrawListener
{
  GHSSearchFilterFragment$2(GHSSearchFilterFragment paramGHSSearchFilterFragment) {}
  
  public boolean onPreDraw()
  {
    GHSSearchFilterFragment.c(a).getViewTreeObserver().removeOnPreDrawListener(this);
    GHSSearchFilterFragment.d(a);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSearchFilterFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */