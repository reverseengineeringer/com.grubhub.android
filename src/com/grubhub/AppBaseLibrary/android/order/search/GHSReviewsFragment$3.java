package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;

class GHSReviewsFragment$3
  implements i
{
  GHSReviewsFragment$3(GHSReviewsFragment paramGHSReviewsFragment) {}
  
  public void a()
  {
    if (GHSReviewsFragment.f(a) == 0)
    {
      GHSReviewsFragment.g(a).a();
      return;
    }
    if (GHSReviewsFragment.a(a).getFooterViewsCount() == 0) {
      GHSReviewsFragment.a(a).addFooterView(GHSReviewsFragment.h(a), null, false);
    }
    GHSReviewsFragment.h(a).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSReviewsFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */