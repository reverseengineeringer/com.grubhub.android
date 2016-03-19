package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSCartFragment$39
  implements View.OnClickListener
{
  GHSCartFragment$39(GHSCartFragment paramGHSCartFragment) {}
  
  public void onClick(View paramView)
  {
    GHSCartFragment.h(a).onClick(paramView);
    h.a().a(new c("coupons", "see coupons list", "coupons_cta"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.39
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */