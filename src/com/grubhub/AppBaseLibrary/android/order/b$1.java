package com.grubhub.AppBaseLibrary.android.order;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class b$1
  implements View.OnClickListener
{
  b$1(b paramb, GHSIPastOrderDataModel paramGHSIPastOrderDataModel) {}
  
  public void onClick(View paramView)
  {
    paramView = a.getOrderNumber();
    if (GHSOrderStatusFragment.e(b.a) != null) {
      GHSOrderStatusFragment.e(b.a).d(paramView);
    }
    h.a().a(new c("order status tracking", "order status tracking_cta", "real-time order tracking"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */