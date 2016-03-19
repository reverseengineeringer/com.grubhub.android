package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICheckoutResponse;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSReviewOrderFragment$16
  implements e<GHSICheckoutResponse>
{
  GHSReviewOrderFragment$16(GHSReviewOrderFragment paramGHSReviewOrderFragment, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes) {}
  
  public void a(GHSICheckoutResponse paramGHSICheckoutResponse)
  {
    b localb = GHSApplication.a().b();
    localb.c(GHSReviewOrderFragment.q(b));
    localb.b(paramGHSICheckoutResponse);
    GHSReviewOrderFragment.a(b, a);
    h.a().a(new c("order tip selection", "tip selection_CTA", GHSReviewOrderFragment.r(b)));
    if (GHSReviewOrderFragment.a(b) != null) {
      GHSReviewOrderFragment.a(b).a(null, GHSReviewOrderFragment.d(b), GHSReviewOrderFragment.e(b), GHSReviewOrderFragment.f(b), GHSReviewOrderFragment.b(b), GHSReviewOrderFragment.c(b), a);
    }
    ((GHSBaseActivity)b.getActivity()).a(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */