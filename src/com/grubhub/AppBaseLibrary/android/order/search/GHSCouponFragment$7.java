package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSCouponFragment$7
  implements e<GHSICartDataModel>
{
  GHSCouponFragment$7(GHSCouponFragment paramGHSCouponFragment, String paramString, Context paramContext) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    GHSCouponFragment.a(c, null);
    if (a != null)
    {
      GHSCouponFragment.a(c, b, a, true);
      return;
    }
    c.a().invalidateViews();
    GHSCouponFragment.a(c, false);
    if (GHSCouponFragment.a(c) != null) {
      GHSCouponFragment.a(c).m();
    }
    h.a().a(true, false);
    h.a().a(new c("coupons", "remove coupon", "success"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSCouponFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */