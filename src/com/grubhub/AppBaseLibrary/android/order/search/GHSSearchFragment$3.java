package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;

class GHSSearchFragment$3
  implements ViewTreeObserver.OnPreDrawListener
{
  GHSSearchFragment$3(GHSSearchFragment paramGHSSearchFragment) {}
  
  public boolean onPreDraw()
  {
    GHSSearchFragment.g(a).getViewTreeObserver().removeOnPreDrawListener(this);
    try
    {
      GHSSearchFragment.p(a);
      return true;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        a.b(GHSSearchFragment.s(), localThrowable.getMessage());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */