package com.grubhub.AppBaseLibrary.android.order.search;

import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSCouponFragment$8
  implements d
{
  GHSCouponFragment$8(GHSCouponFragment paramGHSCouponFragment, String paramString) {}
  
  public void a(b paramb)
  {
    q localq = b.getActivity();
    if (localq != null)
    {
      com.grubhub.AppBaseLibrary.android.c.a(localq, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), null);
      if ((localq instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)localq).a(false);
      }
    }
    h.a().a(true, true);
    if (a != null) {}
    for (paramb = "change coupon";; paramb = "remove coupon")
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("coupons", paramb, "error"));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSCouponFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */