package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAndroidPayMaskedWalletModel;
import com.grubhub.AppBaseLibrary.android.utils.g.a;
import com.grubhub.AppBaseLibrary.android.utils.g.f;

class GHSPaymentSelectionReviewFragment$5
  implements View.OnClickListener
{
  GHSPaymentSelectionReviewFragment$5(GHSPaymentSelectionReviewFragment paramGHSPaymentSelectionReviewFragment, f paramf, GHSAndroidPayMaskedWalletModel paramGHSAndroidPayMaskedWalletModel) {}
  
  public void onClick(View paramView)
  {
    GHSPaymentSelectionReviewFragment.a(c, true);
    GHSPaymentSelectionReviewFragment.a(c, new a(c.getActivity(), a));
    GHSPaymentSelectionReviewFragment.c(c).a(b.getGoogleTransactionId(), b.getMerchantTransactionId());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionReviewFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */