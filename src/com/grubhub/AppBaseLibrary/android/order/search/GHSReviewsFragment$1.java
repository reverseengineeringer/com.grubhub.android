package com.grubhub.AppBaseLibrary.android.order.search;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;

class GHSReviewsFragment$1
  implements AbsListView.OnScrollListener
{
  GHSReviewsFragment$1(GHSReviewsFragment paramGHSReviewsFragment) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt3 -= 15;
    if ((a.a != null) && (GHSReviewsFragment.a(a) != null) && (GHSReviewsFragment.a(a).getAdapter() != null) && (GHSReviewsFragment.b(a).getRatingCount() > ((HeaderViewListAdapter)GHSReviewsFragment.a(a).getAdapter()).getWrappedAdapter().getCount()) && (!GHSReviewsFragment.c(a)) && (!GHSReviewsFragment.d(a)) && (GHSReviewsFragment.a(a).getFooterViewsCount() == 0) && (paramInt3 > 0) && (paramInt1 + paramInt2 > paramInt3)) {
      GHSReviewsFragment.e(a);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSReviewsFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */