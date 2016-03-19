package com.grubhub.AppBaseLibrary.android.order.cart;

import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.search.GHSCouponFragment;

class GHSCartFragment$23
  implements View.OnClickListener
{
  GHSCartFragment$23(GHSCartFragment paramGHSCartFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = GHSCouponFragment.a(GHSCartFragment.a(a).getRestaurantId());
    GHSCartFragment.g(a).a().b(2131689817, paramView, GHSCouponFragment.class.getSimpleName()).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */