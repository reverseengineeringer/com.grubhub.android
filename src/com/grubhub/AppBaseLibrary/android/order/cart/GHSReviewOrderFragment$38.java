package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ViewFlipper;

class GHSReviewOrderFragment$38
  implements View.OnClickListener
{
  GHSReviewOrderFragment$38(GHSReviewOrderFragment paramGHSReviewOrderFragment) {}
  
  public void onClick(View paramView)
  {
    GHSReviewOrderFragment.a(a, paramView);
    String str = GHSReviewOrderFragment.h(a).getText().toString();
    paramView = paramView.getContext();
    if (str.equals(paramView.getString(2131231954))) {
      GHSReviewOrderFragment.a(a, paramView);
    }
    while (!str.equals(paramView.getString(2131231958))) {
      return;
    }
    if (GHSReviewOrderFragment.j(a).getDisplayedChild() == 1)
    {
      GHSReviewOrderFragment.a(a, paramView, null);
      return;
    }
    GHSReviewOrderFragment.k(a).setText("");
    GHSReviewOrderFragment.a(a, m.DEFAULT);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.38
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */