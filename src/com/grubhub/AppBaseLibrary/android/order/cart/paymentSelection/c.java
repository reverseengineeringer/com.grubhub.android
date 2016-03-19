package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;

public abstract interface c
{
  public abstract void a(b paramb);
  
  public abstract void a(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes);
  
  public abstract void a(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, String paramString);
  
  public abstract void a(String paramString, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes);
  
  public abstract void a(boolean paramBoolean, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes1, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes2);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */