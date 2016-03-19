package com.grubhub.AppBaseLibrary.android.order.futureOrders;

import android.content.res.Resources;
import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSFutureOrdersFragment$14
  implements i
{
  GHSFutureOrdersFragment$14(GHSFutureOrdersFragment paramGHSFutureOrdersFragment, boolean paramBoolean) {}
  
  public void a()
  {
    if (a)
    {
      GHSFutureOrdersFragment.c(b).setRefreshing(true);
      return;
    }
    GHSFutureOrdersFragment.d(b).setBackgroundColor(b.getResources().getColor(2131558468));
    GHSFutureOrdersFragment.d(b).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.futureOrders.GHSFutureOrdersFragment.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */