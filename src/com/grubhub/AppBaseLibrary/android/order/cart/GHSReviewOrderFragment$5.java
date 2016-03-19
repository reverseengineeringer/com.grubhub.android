package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSReviewOrderFragment$5
  implements e<GHSICartDataModel>
{
  GHSReviewOrderFragment$5(GHSReviewOrderFragment paramGHSReviewOrderFragment, Context paramContext, l paraml) {}
  
  public void a(final GHSICartDataModel paramGHSICartDataModel)
  {
    GHSReviewOrderFragment.a(c, a, paramGHSICartDataModel.getCartId(), new l()
    {
      public void a()
      {
        GHSReviewOrderFragment.a(c, paramGHSICartDataModel, b);
      }
      
      public void b()
      {
        GHSReviewOrderFragment.a(c, paramGHSICartDataModel, b);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */