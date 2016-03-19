package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.g;

class GHSCartFragment$6
  implements e<GHSICartDataModel>
{
  GHSCartFragment$6(GHSCartFragment paramGHSCartFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null) {
      GHSCartFragment.a(b, paramGHSICartDataModel);
    }
    GHSCartFragment.a(b, g.DELIVERY);
    GHSApplication.a().b().a(a);
    GHSCartFragment.d(b, true);
    b.l();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */