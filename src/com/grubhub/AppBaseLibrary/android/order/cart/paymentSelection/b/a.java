package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;

public class a
  extends d
{
  public a(e parame)
  {
    super(parame, new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.a.b(), GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY);
  }
  
  public boolean a()
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    GHSSelectedPaymentModel localGHSSelectedPaymentModel = localb.s();
    return (localb.r()) || ((localGHSSelectedPaymentModel != null) && (localGHSSelectedPaymentModel.getSelectedMaskedWalletModel() != null));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */