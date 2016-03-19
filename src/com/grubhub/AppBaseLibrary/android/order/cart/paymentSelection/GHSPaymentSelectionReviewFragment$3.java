package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e;
import com.grubhub.AppBaseLibrary.android.utils.g.a;
import com.grubhub.AppBaseLibrary.android.utils.g.f;

class GHSPaymentSelectionReviewFragment$3
  implements e
{
  GHSPaymentSelectionReviewFragment$3(GHSPaymentSelectionReviewFragment paramGHSPaymentSelectionReviewFragment, f paramf) {}
  
  public void a()
  {
    Object localObject = b.c.s();
    if ((localObject == null) || (((GHSSelectedPaymentModel)localObject).getSelectedMaskedWalletModel() == null))
    {
      localObject = b.getView();
      if (localObject != null)
      {
        ((TextView)((View)localObject).findViewById(2131689980)).setText("");
        ((Button)((View)localObject).findViewById(2131689981)).setText("");
        ((View)localObject).findViewById(2131689979).setVisibility(8);
      }
      GHSPaymentSelectionReviewFragment.a(b, false, GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY, GHSPaymentSelectionReviewFragment.b(b));
      GHSPaymentSelectionReviewFragment.a(b, GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY);
      GHSPaymentSelectionReviewFragment.a(b, true);
      GHSPaymentSelectionReviewFragment.a(b, new a(b.getActivity(), a));
      GHSPaymentSelectionReviewFragment.c(b).d();
      return;
    }
    GHSPaymentSelectionReviewFragment.b(b, (GHSSelectedPaymentModel)localObject);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionReviewFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */