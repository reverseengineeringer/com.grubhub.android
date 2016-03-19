package com.grubhub.AppBaseLibrary.android.order.favorites;

import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Iterator;

class GHSFavoritesFragment$8
  implements e<GHSIRestaurantAvailabilityDataModel>
{
  GHSFavoritesFragment$8(GHSFavoritesFragment paramGHSFavoritesFragment, ArrayList paramArrayList) {}
  
  public void a(GHSIRestaurantAvailabilityDataModel paramGHSIRestaurantAvailabilityDataModel)
  {
    GHSFavoritesFragment.b(b, new ArrayList());
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary localGHSIRestaurantAvailabilitySummary = paramGHSIRestaurantAvailabilityDataModel.getSummary((String)localIterator.next());
      if ((localGHSIRestaurantAvailabilitySummary != null) && (f.b(localGHSIRestaurantAvailabilitySummary.getRestaurantName()))) {
        GHSFavoritesFragment.d(b).add(localGHSIRestaurantAvailabilitySummary);
      }
    }
    b.b();
    GHSFavoritesFragment.e(b).setRefreshing(false);
    GHSFavoritesFragment.b(b, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.favorites.GHSFavoritesFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */