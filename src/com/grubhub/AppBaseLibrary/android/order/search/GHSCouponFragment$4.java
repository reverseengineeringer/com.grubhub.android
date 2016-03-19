package com.grubhub.AppBaseLibrary.android.order.search;

import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSCouponFragment$4
  implements d
{
  GHSCouponFragment$4(GHSCouponFragment paramGHSCouponFragment, boolean paramBoolean) {}
  
  public void a(b paramb)
  {
    q localq = b.getActivity();
    if (localq != null) {
      com.grubhub.AppBaseLibrary.android.c.a(localq, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), null);
    }
    h.a().a(true, a);
    if (a) {}
    for (paramb = "change coupon";; paramb = "apply coupon")
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("coupons", paramb, "error"));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSCouponFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */