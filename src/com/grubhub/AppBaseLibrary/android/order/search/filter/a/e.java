package com.grubhub.AppBaseLibrary.android.order.search.filter.a;

import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSDistanceFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSFutureOrderFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSOptionsFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSPriceFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSRatingsFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSortByFragment;

class e
  implements g
{
  public Bundle a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBundle("savedSortByBundle", a.a(GHSSortByFragment.class, paramGHSFilterSortCriteria));
    localBundle.putBundle("savedOptionsFilterBundle", a.a(GHSOptionsFilterFragment.class, paramGHSFilterSortCriteria));
    localBundle.putBundle("savedPriceFilterBundle", a.a(GHSPriceFilterFragment.class, paramGHSFilterSortCriteria));
    localBundle.putBundle("savedRatingsFilterBundle", a.a(GHSRatingsFilterFragment.class, paramGHSFilterSortCriteria));
    localBundle.putBundle("savedDistanceFilterBundle", a.a(GHSDistanceFilterFragment.class, paramGHSFilterSortCriteria));
    localBundle.putBundle("savedFutureOrderBundle", a.a(GHSFutureOrderFilterFragment.class, paramGHSFilterSortCriteria));
    if ((paramGHSFilterSortCriteria != null) && (paramGHSFilterSortCriteria.getOrderType() == com.grubhub.AppBaseLibrary.android.order.g.PICKUP)) {}
    for (boolean bool = true;; bool = false)
    {
      localBundle.putBoolean("savedOrderIsPickup", bool);
      return localBundle;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */