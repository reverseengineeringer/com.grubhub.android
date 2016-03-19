package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSCancelCartDialogFragment$2
  implements View.OnClickListener
{
  GHSCancelCartDialogFragment$2(GHSCancelCartDialogFragment paramGHSCancelCartDialogFragment) {}
  
  public void onClick(View paramView)
  {
    if (GHSCancelCartDialogFragment.a(a) != null) {
      GHSCancelCartDialogFragment.a(a).a();
    }
    a.dismiss();
    h.a().a(new c("future ordering", "open order interactions_cta", "stop order step 2 confirm"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCancelCartDialogFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */