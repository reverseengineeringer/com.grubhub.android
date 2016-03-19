package com.grubhub.AppBaseLibrary.android.order;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSOrderStatusFragment$6
  implements e<GHSIRestaurantDataModel>
{
  GHSOrderStatusFragment$6(GHSOrderStatusFragment paramGHSOrderStatusFragment, String paramString1, String paramString2, String paramString3, boolean paramBoolean, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes) {}
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    if (paramGHSIRestaurantDataModel != null)
    {
      GHSApplication.a().b().c(paramGHSIRestaurantDataModel);
      GHSOrderStatusFragment.a(f, a, b, "", c, d, e);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOrderStatusFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */