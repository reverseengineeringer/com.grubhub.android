package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;

public abstract interface a
{
  public abstract void a(b paramb);
  
  public abstract void a(GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes);
  
  public abstract void b();
  
  public abstract void c();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */