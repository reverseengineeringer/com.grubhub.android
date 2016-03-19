package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSUpdateCartTimeDialogFragment$2
  implements e<GHSICartDataModel>
{
  GHSUpdateCartTimeDialogFragment$2(GHSUpdateCartTimeDialogFragment paramGHSUpdateCartTimeDialogFragment, b paramb, GHSIRestaurantDataModel paramGHSIRestaurantDataModel) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    a.b(b);
    c.dismiss();
    if (GHSUpdateCartTimeDialogFragment.f(c) != null) {
      GHSUpdateCartTimeDialogFragment.f(c).a(p.UPDATE);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSUpdateCartTimeDialogFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */