package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.g;

class GHSMenuItemFragment$13
  implements e<GHSICartDataModel>
{
  GHSMenuItemFragment$13(GHSMenuItemFragment paramGHSMenuItemFragment, Context paramContext, boolean paramBoolean) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    GHSMenuItemFragment.a(c, paramGHSICartDataModel);
    if (((GHSMenuItemFragment.k(c) != null) && (!GHSMenuItemFragment.k(c).offersDelivery())) || (GHSMenuItemFragment.v(c) == g.PICKUP))
    {
      GHSMenuItemFragment.d(c, a, b);
      return;
    }
    GHSMenuItemFragment.e(c, a, b);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */