package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;

public abstract interface k
{
  public abstract void a(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, String paramString);
  
  public abstract void a(String paramString1, String paramString2, String paramString3);
  
  public abstract void a(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, GHSIAddressDataModel paramGHSIAddressDataModel, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes);
  
  public abstract void f(String paramString);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */