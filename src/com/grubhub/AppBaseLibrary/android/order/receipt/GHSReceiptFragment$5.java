package com.grubhub.AppBaseLibrary.android.order.receipt;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.cart.GHSCancelCartDialogFragment;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSReceiptFragment$5
  implements View.OnClickListener
{
  GHSReceiptFragment$5(GHSReceiptFragment paramGHSReceiptFragment) {}
  
  public void onClick(View paramView)
  {
    GHSCancelCartDialogFragment.a(GHSReceiptFragment.a(a).getRestaurantName().trim(), GHSReceiptFragment.b(a).getExpectedTimeInMillis()).show(a.getChildFragmentManager(), GHSCancelCartDialogFragment.class.getSimpleName());
    h.a().a(new c("future ordering", "open order interactions_cta", "stop order step 1"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */