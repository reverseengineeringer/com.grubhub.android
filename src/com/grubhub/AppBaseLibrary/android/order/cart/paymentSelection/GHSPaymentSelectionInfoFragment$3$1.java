package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import java.util.List;

class GHSPaymentSelectionInfoFragment$3$1
  implements GHSIPaymentResourceCreatedDataModel
{
  GHSPaymentSelectionInfoFragment$3$1(GHSPaymentSelectionInfoFragment.3 param3, List paramList) {}
  
  public boolean getAlreadyExists()
  {
    return false;
  }
  
  public String getId()
  {
    return ((GHSIVaultedPayPalModel)a.get(0)).getId();
  }
  
  public String getUri()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionInfoFragment.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */