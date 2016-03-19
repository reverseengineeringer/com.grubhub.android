package com.grubhub.AppBaseLibrary.android.order.favorites;

import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.dataServices.a.c.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.util.ArrayList;
import java.util.Iterator;

class GHSFavoritesFragment$6
  implements e<GHSIFavoriteListDataModel>
{
  GHSFavoritesFragment$6(GHSFavoritesFragment paramGHSFavoritesFragment, b paramb) {}
  
  public void a(GHSIFavoriteListDataModel paramGHSIFavoriteListDataModel)
  {
    GHSFavoritesFragment.a(b, paramGHSIFavoriteListDataModel.getFavoriteRestaurants());
    if ((GHSFavoritesFragment.g(b) != null) && (GHSFavoritesFragment.g(b).size() > 0))
    {
      paramGHSIFavoriteListDataModel = new ArrayList();
      Iterator localIterator = GHSFavoritesFragment.g(b).iterator();
      while (localIterator.hasNext()) {
        paramGHSIFavoriteListDataModel.add(((GHSIFavoriteDataModel)localIterator.next()).getRestaurantId());
      }
      GHSFavoritesFragment.a(b, paramGHSIFavoriteListDataModel, a);
      return;
    }
    GHSFavoritesFragment.f(b).a(GHSFavoritesFragment.h(b), null);
    GHSFavoritesFragment.e(b).setRefreshing(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.favorites.GHSFavoritesFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */