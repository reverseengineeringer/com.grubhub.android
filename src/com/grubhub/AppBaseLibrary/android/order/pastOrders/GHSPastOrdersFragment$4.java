package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSPastOrdersFragment$4
  implements i
{
  GHSPastOrdersFragment$4(GHSPastOrdersFragment paramGHSPastOrdersFragment, boolean paramBoolean) {}
  
  public void a()
  {
    if (a)
    {
      GHSPastOrdersFragment.c(b).setRefreshing(true);
      return;
    }
    GHSPastOrdersFragment.d(b).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */