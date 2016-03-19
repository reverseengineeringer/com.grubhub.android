package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSReviewOrderFragment$42
  implements e<GHSICartDataModel>
{
  GHSReviewOrderFragment$42(GHSReviewOrderFragment paramGHSReviewOrderFragment, Context paramContext) {}
  
  public void a(final GHSICartDataModel paramGHSICartDataModel)
  {
    GHSReviewOrderFragment.a(b, a, paramGHSICartDataModel.getCartId(), new l()
    {
      public void a()
      {
        GHSReviewOrderFragment.a(b, paramGHSICartDataModel);
      }
      
      public void b()
      {
        GHSReviewOrderFragment.a(b, paramGHSICartDataModel);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.42
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */