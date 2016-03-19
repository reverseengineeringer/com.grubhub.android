package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;

class GHSPaymentSelectionReviewFragment$1$1
  implements View.OnClickListener
{
  GHSPaymentSelectionReviewFragment$1$1(GHSPaymentSelectionReviewFragment.1 param1, c paramc, GHSIVaultedCreditCardModel paramGHSIVaultedCreditCardModel) {}
  
  public void onClick(View paramView)
  {
    if (a != null) {
      a.a(GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD, b.getId());
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionReviewFragment.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */