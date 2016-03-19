package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSPastOrdersViewFragment$16
  implements e<GHSICartDataModel>
{
  GHSPastOrdersViewFragment$16(GHSPastOrdersViewFragment paramGHSPastOrdersViewFragment, GHSIAddressDataModel paramGHSIAddressDataModel, Context paramContext) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    paramGHSICartDataModel = GHSApplication.a().b();
    if (GHSPastOrdersViewFragment.c(c) != null) {
      paramGHSICartDataModel.b(GHSPastOrdersViewFragment.c(c));
    }
    if (a != null)
    {
      GHSPastOrdersViewFragment.a(c, b, a);
      return;
    }
    paramGHSICartDataModel.a(null);
    if (GHSPastOrdersViewFragment.d(c) != null) {
      GHSPastOrdersViewFragment.d(c).a();
    }
    paramGHSICartDataModel.k(false);
    GHSPastOrdersViewFragment.e(c);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersViewFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */