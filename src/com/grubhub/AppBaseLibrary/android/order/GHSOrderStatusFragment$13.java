package com.grubhub.AppBaseLibrary.android.order;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderStatus;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;
import java.util.Collections;

class GHSOrderStatusFragment$13
  implements e<GHSIOrderStatus>
{
  GHSOrderStatusFragment$13(GHSOrderStatusFragment paramGHSOrderStatusFragment, GHSIPastOrderDataModel paramGHSIPastOrderDataModel, int paramInt) {}
  
  public void a(GHSIOrderStatus paramGHSIOrderStatus)
  {
    if (paramGHSIOrderStatus != null)
    {
      Collections.reverse(paramGHSIOrderStatus.getOrderEvents());
      GHSOrderStatusFragment.c(c).add(new c(c, a, paramGHSIOrderStatus));
      GHSOrderStatusFragment.a(c, b + 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOrderStatusFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */