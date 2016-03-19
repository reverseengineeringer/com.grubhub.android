package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSPastOrdersViewFragment$11
  implements e<GHSIRestaurantDataModel>
{
  GHSPastOrdersViewFragment$11(GHSPastOrdersViewFragment paramGHSPastOrdersViewFragment, GHSIPastOrderDataModel paramGHSIPastOrderDataModel) {}
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    if (paramGHSIRestaurantDataModel != null)
    {
      GHSPastOrdersViewFragment.a(b, paramGHSIRestaurantDataModel);
      GHSPastOrdersViewFragment.a(b, a);
      GHSPastOrdersViewFragment.a(b).b();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersViewFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */