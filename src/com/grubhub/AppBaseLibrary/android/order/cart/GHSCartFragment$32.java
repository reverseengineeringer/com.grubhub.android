package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSCartFragment$32
  implements e<GHSICartDataModel>
{
  GHSCartFragment$32(GHSCartFragment paramGHSCartFragment) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    String str = null;
    if (paramGHSICartDataModel != null) {
      str = paramGHSICartDataModel.getCartId();
    }
    GHSCartFragment.a(a, str);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.32
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */