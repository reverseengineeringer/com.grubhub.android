package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

class GHSReviewOrderFragment$1
  implements View.OnClickListener
{
  GHSReviewOrderFragment$1(GHSReviewOrderFragment paramGHSReviewOrderFragment) {}
  
  public void onClick(View paramView)
  {
    GHSReviewOrderFragment.a(a, paramView);
    if (GHSReviewOrderFragment.a(a) != null)
    {
      if (GHSReviewOrderFragment.b(a))
      {
        paramView = null;
        if (GHSReviewOrderFragment.c(a) != null) {
          paramView = GHSReviewOrderFragment.c(a).getId();
        }
        GHSReviewOrderFragment.a(a).f(paramView);
      }
    }
    else {
      return;
    }
    GHSReviewOrderFragment.a(a).a(GHSReviewOrderFragment.d(a), GHSReviewOrderFragment.e(a), GHSReviewOrderFragment.f(a));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */