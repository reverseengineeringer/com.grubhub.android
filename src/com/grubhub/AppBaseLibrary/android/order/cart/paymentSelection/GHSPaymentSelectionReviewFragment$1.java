package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.content.res.Resources;
import android.support.v4.app.q;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e;
import com.grubhub.AppBaseLibrary.android.utils.g;

class GHSPaymentSelectionReviewFragment$1
  implements e
{
  GHSPaymentSelectionReviewFragment$1(GHSPaymentSelectionReviewFragment paramGHSPaymentSelectionReviewFragment) {}
  
  public void a()
  {
    GHSPaymentSelectionReviewFragment.a(a, false);
    GHSSelectedPaymentModel localGHSSelectedPaymentModel = a.c.s();
    View localView = a.getView();
    final c localc = GHSPaymentSelectionReviewFragment.a(a);
    TextView localTextView;
    Button localButton;
    final GHSIVaultedCreditCardModel localGHSIVaultedCreditCardModel;
    if (localView != null)
    {
      localTextView = (TextView)localView.findViewById(2131689980);
      localButton = (Button)localView.findViewById(2131689981);
      localGHSIVaultedCreditCardModel = GHSPaymentSelectionReviewFragment.a(a, localGHSSelectedPaymentModel);
      if (localGHSIVaultedCreditCardModel == null) {
        break label218;
      }
      localTextView.setText(g.a(localGHSIVaultedCreditCardModel, a.getResources()));
      localTextView.setTextColor(a.getResources().getColor(2131558481));
      localButton.setText(a.getActivity().getString(2131231766));
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (localc != null) {
            localc.a(GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD, localGHSIVaultedCreditCardModel.getId());
          }
        }
      });
      if (localGHSSelectedPaymentModel != null) {
        break label305;
      }
      localGHSSelectedPaymentModel = new GHSSelectedPaymentModel();
    }
    label218:
    label305:
    for (;;)
    {
      localGHSSelectedPaymentModel.setSelectedCreditCardId(localGHSIVaultedCreditCardModel.getId());
      a.c.a(localGHSSelectedPaymentModel);
      GHSPaymentSelectionReviewFragment.a(a, true, GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD, GHSPaymentSelectionReviewFragment.b(a));
      for (;;)
      {
        localView.findViewById(2131689979).setVisibility(0);
        GHSPaymentSelectionReviewFragment.a(a, GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD);
        return;
        localTextView.setText(a.getActivity().getString(2131230962));
        localTextView.setTextColor(a.getResources().getColor(2131558466));
        localButton.setText(a.getActivity().getString(2131231764));
        localButton.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (localc != null) {
              localc.a(GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD);
            }
          }
        });
        GHSPaymentSelectionReviewFragment.a(a, false, GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD, GHSPaymentSelectionReviewFragment.b(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionReviewFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */