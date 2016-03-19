package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;

public class c
  extends d
{
  public c(e parame)
  {
    super(parame, new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.a.d(), GHSICartPaymentDataModel.PaymentTypes.CASH);
  }
  
  public boolean a()
  {
    GHSSelectedPaymentModel localGHSSelectedPaymentModel = GHSApplication.a().b().s();
    return (localGHSSelectedPaymentModel != null) && (localGHSSelectedPaymentModel.getSelectedPaymentType() == GHSICartPaymentDataModel.PaymentTypes.CASH);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */