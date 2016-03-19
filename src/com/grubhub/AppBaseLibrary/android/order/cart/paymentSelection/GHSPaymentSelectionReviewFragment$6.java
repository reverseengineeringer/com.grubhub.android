package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;

class GHSPaymentSelectionReviewFragment$6
  implements View.OnClickListener
{
  GHSPaymentSelectionReviewFragment$6(GHSPaymentSelectionReviewFragment paramGHSPaymentSelectionReviewFragment, c paramc, GHSIVaultedPayPalModel paramGHSIVaultedPayPalModel) {}
  
  public void onClick(View paramView)
  {
    if (a != null) {
      a.a(GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS, b.getId());
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionReviewFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */