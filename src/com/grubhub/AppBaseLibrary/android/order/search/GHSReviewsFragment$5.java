package com.grubhub.AppBaseLibrary.android.order.search;

import android.widget.HeaderViewListAdapter;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReview;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReviews;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;
import java.util.ArrayList;

class GHSReviewsFragment$5
  implements e<GHSIReviewsDataModel>
{
  GHSReviewsFragment$5(GHSReviewsFragment paramGHSReviewsFragment) {}
  
  public void a(GHSIReviewsDataModel paramGHSIReviewsDataModel)
  {
    GHSReviewsFragment.g(a).b();
    GHSReviewsFragment.a(a).removeFooterView(GHSReviewsFragment.h(a));
    a.a = paramGHSIReviewsDataModel.getReviews().getReviewList();
    if ((a.a != null) && (a.a.size() > 0)) {
      if ((GHSReviewsFragment.a(a).getAdapter() == null) || (GHSReviewsFragment.f(a) == 0))
      {
        GHSReviewsFragment.a(a).setAdapter(new j(a, a.getActivity(), 2130903225, a.a));
        GHSReviewsFragment.a(a, false);
        GHSReviewsFragment.a(a, GHSReviewsFragment.f(a) + 30);
      }
    }
    for (;;)
    {
      GHSReviewsFragment.b(a, false);
      return;
      paramGHSIReviewsDataModel = (j)((HeaderViewListAdapter)GHSReviewsFragment.a(a).getAdapter()).getWrappedAdapter();
      GHSReviewsFragment.a(a, ((GHSIReviewsDataModel.GHSIReview)paramGHSIReviewsDataModel.getItem(paramGHSIReviewsDataModel.getCount() - 1)).getId().equals(((GHSIReviewsDataModel.GHSIReview)a.a.get(a.a.size() - 1)).getId()));
      paramGHSIReviewsDataModel.a(a.a);
      break;
      GHSReviewsFragment.g(a).a(2131231982, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSReviewsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */