package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSReviewOrderFragment$25
  implements e<GHSICartDataModel>
{
  GHSReviewOrderFragment$25(GHSReviewOrderFragment paramGHSReviewOrderFragment, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    GHSReviewOrderFragment.b(b, paramGHSICartDataModel);
    GHSApplication.a().b().a(GHSReviewOrderFragment.s(b));
    GHSReviewOrderFragment.a(b, paramGHSICartDataModel.getCartId(), paramGHSICartDataModel.getAppliedPayment().getId(), a);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.25
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */