package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ViewFlipper;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;

class GHSUpdateCartTimeDialogFragment$5
  implements View.OnClickListener
{
  GHSUpdateCartTimeDialogFragment$5(GHSUpdateCartTimeDialogFragment paramGHSUpdateCartTimeDialogFragment, ViewFlipper paramViewFlipper) {}
  
  public void onClick(View paramView)
  {
    GHSUpdateCartTimeDialogFragment.a(b, GHSUpdateCartTimeDialogFragment.a(b), a, new r()
    {
      public void a(GHSIRestaurantDataModel paramAnonymousGHSIRestaurantDataModel)
      {
        GHSApplication.a().b().b(paramAnonymousGHSIRestaurantDataModel);
        b.dismiss();
        if (GHSUpdateCartTimeDialogFragment.f(b) != null) {
          GHSUpdateCartTimeDialogFragment.f(b).a(p.CREATE_NEW);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSUpdateCartTimeDialogFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */