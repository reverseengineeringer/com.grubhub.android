package com.grubhub.AppBaseLibrary.android.order.search;

import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSCouponFragment$3
  implements e<GHSICartDataModel>
{
  GHSCouponFragment$3(GHSCouponFragment paramGHSCouponFragment, String paramString, boolean paramBoolean) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    c.a().invalidateViews();
    GHSCouponFragment.a(c, true);
    GHSCouponFragment.a(c, a);
    if (GHSCouponFragment.a(c) != null) {
      GHSCouponFragment.a(c).m();
    }
    h.a().a(true, true);
    if (b) {}
    for (paramGHSICartDataModel = "change coupon";; paramGHSICartDataModel = "apply coupon")
    {
      h.a().a(new c("coupons", paramGHSICartDataModel, "success"));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSCouponFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */