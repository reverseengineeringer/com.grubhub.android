package com.grubhub.AppBaseLibrary.android.order.favorites;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import java.util.ArrayList;

class GHSFavoritesFragment$2
  implements AdapterView.OnItemClickListener
{
  GHSFavoritesFragment$2(GHSFavoritesFragment paramGHSFavoritesFragment) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String str;
    if (!GHSFavoritesFragment.a(a))
    {
      GHSFavoritesFragment.a(a, true);
      if (GHSFavoritesFragment.b(a) != null)
      {
        GHSFavoritesFragment.c(a).setVisibility(4);
        paramAdapterView = (GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary)GHSFavoritesFragment.d(a).get(paramInt);
        if (paramAdapterView != null)
        {
          paramView = GHSFavoritesFragment.b(a);
          str = paramAdapterView.getRestaurantId();
          if (paramAdapterView.isAvailableForDelivery()) {
            break label107;
          }
        }
      }
    }
    label107:
    for (boolean bool = true;; bool = false)
    {
      paramView.a(str, bool);
      GHSFavoritesFragment.a(a, false);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.favorites.GHSFavoritesFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */