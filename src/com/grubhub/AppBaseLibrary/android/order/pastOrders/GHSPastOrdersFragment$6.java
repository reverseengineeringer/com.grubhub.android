package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSPastOrdersFragment$6
  implements e<GHSIPastOrderListDataModel>
{
  GHSPastOrdersFragment$6(GHSPastOrdersFragment paramGHSPastOrdersFragment, boolean paramBoolean) {}
  
  public void a(GHSIPastOrderListDataModel paramGHSIPastOrderListDataModel)
  {
    if (b.getActivity() != null)
    {
      GHSPastOrdersFragment.a(b, paramGHSIPastOrderListDataModel.getPastOrders());
      GHSPastOrdersFragment.a(b, GHSPastOrdersFragment.e(b), a);
    }
    GHSPastOrdersFragment.b(b, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */