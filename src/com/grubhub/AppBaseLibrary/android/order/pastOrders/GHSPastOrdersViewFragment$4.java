package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSPastOrdersViewFragment$4
  implements e<GHSICartDataModel>
{
  GHSPastOrdersViewFragment$4(GHSPastOrdersViewFragment paramGHSPastOrdersViewFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null)
    {
      paramGHSICartDataModel = GHSApplication.a().b();
      paramGHSICartDataModel.a(a);
      if (GHSPastOrdersViewFragment.d(b) != null) {
        GHSPastOrdersViewFragment.d(b).a();
      }
      paramGHSICartDataModel.k(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersViewFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */