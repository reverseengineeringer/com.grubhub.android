package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.a.c;
import java.util.ArrayList;
import java.util.List;

public class b
  extends d
{
  public b(e parame)
  {
    super(parame, new c(), GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD);
  }
  
  public boolean a()
  {
    ArrayList localArrayList = GHSApplication.a().b().G();
    return (localArrayList != null) && (!localArrayList.isEmpty());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */