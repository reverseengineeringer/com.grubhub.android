package com.grubhub.AppBaseLibrary.android.order.search;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;

class GHSSearchFragment$35
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  GHSSearchFragment$35(GHSSearchFragment paramGHSSearchFragment) {}
  
  public void onGlobalLayout()
  {
    Object localObject = new Rect();
    GHSSearchFragment.g(a).getWindowVisibleDisplayFrame((Rect)localObject);
    int i = GHSSearchFragment.g(a).getRootView().getHeight();
    int j = bottom;
    int k = top;
    localObject = a;
    if (i - (j - k) > 150) {}
    for (boolean bool = true;; bool = false)
    {
      GHSSearchFragment.d((GHSSearchFragment)localObject, bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.35
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */