package com.grubhub.AppBaseLibrary.android.order.search;

import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;

class GHSSearchFragment$5
  implements i
{
  GHSSearchFragment$5(GHSSearchFragment paramGHSSearchFragment, int paramInt, boolean paramBoolean) {}
  
  public void a()
  {
    if (a <= 1)
    {
      if (b)
      {
        GHSSearchFragment.r(c).setRefreshing(true);
        return;
      }
      GHSSearchFragment.s(c).a();
      return;
    }
    if (GHSSearchFragment.g(c).getFooterViewsCount() == 0) {
      GHSSearchFragment.g(c).addFooterView(GHSSearchFragment.t(c), null, false);
    }
    GHSSearchFragment.t(c).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */