package com.grubhub.AppBaseLibrary.android.order;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSOrderStatusFragment$10
  implements e<GHSIPastOrderListDataModel>
{
  GHSOrderStatusFragment$10(GHSOrderStatusFragment paramGHSOrderStatusFragment, boolean paramBoolean) {}
  
  public void a(GHSIPastOrderListDataModel paramGHSIPastOrderListDataModel)
  {
    GHSOrderStatusFragment.a(b, paramGHSIPastOrderListDataModel);
    GHSOrderStatusFragment.a(b, paramGHSIPastOrderListDataModel.getPastOrders());
    GHSOrderStatusFragment.b(b, a);
    GHSOrderStatusFragment.c(b, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOrderStatusFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */