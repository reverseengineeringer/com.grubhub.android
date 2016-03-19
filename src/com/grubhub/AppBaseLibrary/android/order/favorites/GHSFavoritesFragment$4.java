package com.grubhub.AppBaseLibrary.android.order.favorites;

import android.content.res.Resources;
import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSFavoritesFragment$4
  implements i
{
  GHSFavoritesFragment$4(GHSFavoritesFragment paramGHSFavoritesFragment, boolean paramBoolean) {}
  
  public void a()
  {
    if (a)
    {
      GHSFavoritesFragment.e(b).setRefreshing(true);
      return;
    }
    GHSFavoritesFragment.f(b).setBackgroundColor(b.getResources().getColor(2131558468));
    GHSFavoritesFragment.f(b).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.favorites.GHSFavoritesFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */