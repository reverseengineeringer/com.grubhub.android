package com.grubhub.AppBaseLibrary.android.views;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ListView;

class GHSRestaurantMenuSearchBar$3
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  GHSRestaurantMenuSearchBar$3(GHSRestaurantMenuSearchBar paramGHSRestaurantMenuSearchBar) {}
  
  public void onGlobalLayout()
  {
    Object localObject = new Rect();
    GHSRestaurantMenuSearchBar.e(a).getWindowVisibleDisplayFrame((Rect)localObject);
    int i = GHSRestaurantMenuSearchBar.e(a).getRootView().getHeight();
    int j = bottom;
    int k = top;
    localObject = a;
    if (i - (j - k) > 150) {}
    for (boolean bool = true;; bool = false)
    {
      GHSRestaurantMenuSearchBar.a((GHSRestaurantMenuSearchBar)localObject, bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSRestaurantMenuSearchBar.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */