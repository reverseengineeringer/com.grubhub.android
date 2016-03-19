package com.grubhub.AppBaseLibrary.android.order.search;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;

class GHSSearchFragment$23
  implements AbsListView.OnScrollListener
{
  GHSSearchFragment$23(GHSSearchFragment paramGHSSearchFragment) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt3 -= 15;
    if ((GHSSearchFragment.f(a) != null) && (GHSSearchFragment.g(a) != null) && (GHSSearchFragment.g(a).getAdapter() != null) && (GHSSearchFragment.f(a).getTotalResults().longValue() > ((HeaderViewListAdapter)GHSSearchFragment.g(a).getAdapter()).getWrappedAdapter().getCount()) && (!GHSSearchFragment.h(a)) && (!GHSSearchFragment.i(a)) && (GHSSearchFragment.g(a).getFooterViewsCount() == 0) && (paramInt3 > 0) && (paramInt1 + paramInt2 > paramInt3)) {
      GHSSearchFragment.a(a, GHSSearchFragment.e(a), true, 30, GHSSearchFragment.j(a), false);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */