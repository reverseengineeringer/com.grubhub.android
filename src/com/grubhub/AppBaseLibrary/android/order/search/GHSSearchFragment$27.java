package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.views.GHSSearchBar;

class GHSSearchFragment$27
  implements e<GHSIRestaurantAvailabilityDataModel>
{
  GHSSearchFragment$27(GHSSearchFragment paramGHSSearchFragment) {}
  
  public void a(GHSIRestaurantAvailabilityDataModel paramGHSIRestaurantAvailabilityDataModel)
  {
    if (GHSSearchFragment.b(a) != null) {
      GHSSearchFragment.b(a).setRestaurantAvailability(paramGHSIRestaurantAvailabilityDataModel);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */