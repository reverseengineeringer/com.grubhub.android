package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;

class GHSCartFragment$1
  implements View.OnClickListener
{
  GHSCartFragment$1(GHSCartFragment paramGHSCartFragment) {}
  
  public void onClick(View paramView)
  {
    GHSCartFragment.b(a).e(GHSCartFragment.a(a).getRestaurantId());
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new c("modify your order", "add more items_CTA", ""));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */