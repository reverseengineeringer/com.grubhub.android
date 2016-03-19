package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.utils.g.c;
import com.grubhub.AppBaseLibrary.android.utils.g.d;
import com.grubhub.AppBaseLibrary.android.utils.g.f;

class GHSPaymentSelectionReviewFragment$7
  implements View.OnClickListener
{
  GHSPaymentSelectionReviewFragment$7(GHSPaymentSelectionReviewFragment paramGHSPaymentSelectionReviewFragment, f paramf) {}
  
  public void onClick(View paramView)
  {
    GHSPaymentSelectionReviewFragment.a(b, true);
    GHSPaymentSelectionReviewFragment.a(b, new c(b.getActivity(), a));
    GHSPaymentSelectionReviewFragment.e(b).a(new d()
    {
      public void a()
      {
        GHSPaymentSelectionReviewFragment.a(b, true);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionReviewFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */