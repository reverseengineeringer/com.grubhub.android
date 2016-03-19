package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.g;

class GHSCartFragment$10
  implements e<GHSICartDataModel>
{
  GHSCartFragment$10(GHSCartFragment paramGHSCartFragment) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null) {
      GHSCartFragment.a(a, paramGHSICartDataModel);
    }
    GHSCartFragment.a(a, g.PICKUP);
    GHSCartFragment.d(a, true);
    a.l();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */