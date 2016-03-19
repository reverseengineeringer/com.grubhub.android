package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e;

class GHSPaymentSelectionReviewFragment$2
  implements e
{
  GHSPaymentSelectionReviewFragment$2(GHSPaymentSelectionReviewFragment paramGHSPaymentSelectionReviewFragment) {}
  
  public void a()
  {
    GHSPaymentSelectionReviewFragment.a(a, false);
    Object localObject = a.getView();
    if (localObject != null)
    {
      ((TextView)((View)localObject).findViewById(2131689980)).setText("");
      ((Button)((View)localObject).findViewById(2131689981)).setText("");
      ((View)localObject).findViewById(2131689979).setVisibility(8);
    }
    GHSSelectedPaymentModel localGHSSelectedPaymentModel = a.c.s();
    localObject = localGHSSelectedPaymentModel;
    if (localGHSSelectedPaymentModel == null) {
      localObject = new GHSSelectedPaymentModel();
    }
    ((GHSSelectedPaymentModel)localObject).setCashPaymentSelected();
    a.c.a((GHSSelectedPaymentModel)localObject);
    GHSPaymentSelectionReviewFragment.a(a, true, GHSICartPaymentDataModel.PaymentTypes.CASH, GHSPaymentSelectionReviewFragment.b(a));
    GHSPaymentSelectionReviewFragment.a(a, GHSICartPaymentDataModel.PaymentTypes.CASH);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionReviewFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */