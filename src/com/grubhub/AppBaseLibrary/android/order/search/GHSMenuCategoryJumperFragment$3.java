package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class GHSMenuCategoryJumperFragment$3
  implements ViewTreeObserver.OnPreDrawListener
{
  GHSMenuCategoryJumperFragment$3(GHSMenuCategoryJumperFragment paramGHSMenuCategoryJumperFragment, View paramView) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    GHSMenuCategoryJumperFragment.a(b);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuCategoryJumperFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */