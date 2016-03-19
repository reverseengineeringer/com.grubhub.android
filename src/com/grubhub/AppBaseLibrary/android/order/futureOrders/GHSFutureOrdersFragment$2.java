package com.grubhub.AppBaseLibrary.android.order.futureOrders;

import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserCartsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;

class GHSFutureOrdersFragment$2
  implements e<GHSIUserCartsDataModel>
{
  GHSFutureOrdersFragment$2(GHSFutureOrdersFragment paramGHSFutureOrdersFragment, b paramb) {}
  
  public void a(GHSIUserCartsDataModel paramGHSIUserCartsDataModel)
  {
    GHSFutureOrdersFragment.b(b, true);
    if ((paramGHSIUserCartsDataModel == null) || (paramGHSIUserCartsDataModel.getUserCarts() == null) || (paramGHSIUserCartsDataModel.getUserCarts().isEmpty()))
    {
      GHSFutureOrdersFragment.a(b, null);
      GHSFutureOrdersFragment.d(b).a(GHSFutureOrdersFragment.e(b), null);
      GHSFutureOrdersFragment.c(b).setRefreshing(false);
    }
    for (;;)
    {
      GHSFutureOrdersFragment.g(b);
      if (a != null) {
        a.a();
      }
      return;
      GHSFutureOrdersFragment.a(b, new ArrayList(paramGHSIUserCartsDataModel.getUserCarts().values()));
      Collections.sort(GHSFutureOrdersFragment.f(b), new Comparator()
      {
        public int a(GHSICartDataModel paramAnonymousGHSICartDataModel1, GHSICartDataModel paramAnonymousGHSICartDataModel2)
        {
          long l1 = paramAnonymousGHSICartDataModel1.getExpectedTimeInMillis();
          long l2 = paramAnonymousGHSICartDataModel2.getExpectedTimeInMillis();
          if (l1 < l2) {
            return -1;
          }
          if (l1 > l2) {
            return 1;
          }
          return paramAnonymousGHSICartDataModel1.getRestaurantName().compareTo(paramAnonymousGHSICartDataModel2.getRestaurantName());
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.futureOrders.GHSFutureOrdersFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */