package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ViewFlipper;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;

class GHSUpdateCartTimeDialogFragment$1
  implements View.OnClickListener
{
  GHSUpdateCartTimeDialogFragment$1(GHSUpdateCartTimeDialogFragment paramGHSUpdateCartTimeDialogFragment, ViewFlipper paramViewFlipper) {}
  
  public void onClick(View paramView)
  {
    GHSUpdateCartTimeDialogFragment.a(b, GHSUpdateCartTimeDialogFragment.a(b), a, new r()
    {
      public void a(GHSIRestaurantDataModel paramAnonymousGHSIRestaurantDataModel)
      {
        GHSUpdateCartTimeDialogFragment.a(b, GHSUpdateCartTimeDialogFragment.b(b), GHSUpdateCartTimeDialogFragment.c(b), a, paramAnonymousGHSIRestaurantDataModel);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSUpdateCartTimeDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */