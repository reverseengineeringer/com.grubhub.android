package com.grubhub.AppBaseLibrary.android.order.futureOrders;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import java.util.Comparator;

class GHSFutureOrdersFragment$2$1
  implements Comparator<GHSICartDataModel>
{
  GHSFutureOrdersFragment$2$1(GHSFutureOrdersFragment.2 param2) {}
  
  public int a(GHSICartDataModel paramGHSICartDataModel1, GHSICartDataModel paramGHSICartDataModel2)
  {
    long l1 = paramGHSICartDataModel1.getExpectedTimeInMillis();
    long l2 = paramGHSICartDataModel2.getExpectedTimeInMillis();
    if (l1 < l2) {
      return -1;
    }
    if (l1 > l2) {
      return 1;
    }
    return paramGHSICartDataModel1.getRestaurantName().compareTo(paramGHSICartDataModel2.getRestaurantName());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.futureOrders.GHSFutureOrdersFragment.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */