package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e;

class GHSPaymentSelectionInfoFragment$1
  implements e
{
  GHSPaymentSelectionInfoFragment$1(GHSPaymentSelectionInfoFragment paramGHSPaymentSelectionInfoFragment) {}
  
  public void a()
  {
    GHSSelectedPaymentModel localGHSSelectedPaymentModel2 = a.c.s();
    GHSSelectedPaymentModel localGHSSelectedPaymentModel1 = localGHSSelectedPaymentModel2;
    if (localGHSSelectedPaymentModel2 == null) {
      localGHSSelectedPaymentModel1 = new GHSSelectedPaymentModel();
    }
    localGHSSelectedPaymentModel1.setCashPaymentSelected();
    a.c.a(localGHSSelectedPaymentModel1);
    if (a.g() != null) {
      a.g().a(null, GHSICartPaymentDataModel.PaymentTypes.CASH);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionInfoFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */