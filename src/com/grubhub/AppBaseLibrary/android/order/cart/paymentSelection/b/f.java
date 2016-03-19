package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import java.util.ArrayList;
import java.util.List;

public class f
  extends d
{
  public f(e parame)
  {
    super(parame, new com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.a.e(), GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS);
  }
  
  public boolean a()
  {
    ArrayList localArrayList = GHSApplication.a().b().S();
    return (localArrayList != null) && (!localArrayList.isEmpty());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */