package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;

class GHSUpdateCartTimeDialogFragment$5$1
  implements r
{
  GHSUpdateCartTimeDialogFragment$5$1(GHSUpdateCartTimeDialogFragment.5 param5) {}
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    GHSApplication.a().b().b(paramGHSIRestaurantDataModel);
    a.b.dismiss();
    if (GHSUpdateCartTimeDialogFragment.f(a.b) != null) {
      GHSUpdateCartTimeDialogFragment.f(a.b).a(p.CREATE_NEW);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSUpdateCartTimeDialogFragment.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */