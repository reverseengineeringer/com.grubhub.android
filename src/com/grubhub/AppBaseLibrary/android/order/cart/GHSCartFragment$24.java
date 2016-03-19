package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.List;

class GHSCartFragment$24
  implements e<GHSICartDataModel>
{
  GHSCartFragment$24(GHSCartFragment paramGHSCartFragment) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if ((paramGHSICartDataModel == null) || (paramGHSICartDataModel.getOrderItems() == null) || (paramGHSICartDataModel.getOrderItems().isEmpty())) {
      i.a();
    }
    for (;;)
    {
      a.l();
      return;
      GHSApplication.a().b().a(paramGHSICartDataModel);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */