package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;

class GHSPastOrdersFragment$3
  implements c
{
  GHSPastOrdersFragment$3(GHSPastOrdersFragment paramGHSPastOrdersFragment) {}
  
  public void a(GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    if (!GHSPastOrdersFragment.a(a))
    {
      GHSPastOrdersFragment.a(a, true);
      if (GHSPastOrdersFragment.b(a) != null) {
        GHSPastOrdersFragment.b(a).a(paramGHSIPastOrderDataModel);
      }
      GHSPastOrdersFragment.a(a, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */