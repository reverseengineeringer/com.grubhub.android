package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.LayoutInflater;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSCartFragment$19
  implements e<GHSIRestaurantDataModel>
{
  GHSCartFragment$19(GHSCartFragment paramGHSCartFragment) {}
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    GHSCartFragment.a(a, paramGHSIRestaurantDataModel);
    GHSApplication.a().b().b(GHSCartFragment.a(a));
    paramGHSIRestaurantDataModel = a.getActivity();
    if (paramGHSIRestaurantDataModel != null) {
      GHSCartFragment.a(a, a.getView(), LayoutInflater.from(paramGHSIRestaurantDataModel));
    }
    GHSCartFragment.o(a).b();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */