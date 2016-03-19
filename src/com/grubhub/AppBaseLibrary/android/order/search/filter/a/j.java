package com.grubhub.AppBaseLibrary.android.order.search.filter.a;

import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterFragmentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Map;

class j
  implements g
{
  public Bundle a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    Bundle localBundle = new Bundle();
    if (paramGHSFilterSortCriteria != null)
    {
      localBundle.putString("savedSortByValue", paramGHSFilterSortCriteria.getCurrentSortOption());
      localBundle.putBoolean("hasQueryString", f.b(paramGHSFilterSortCriteria.getSearchTerm()));
      if (paramGHSFilterSortCriteria.getOrderType() != com.grubhub.AppBaseLibrary.android.order.g.PICKUP) {
        break label113;
      }
    }
    label113:
    for (boolean bool = true;; bool = false)
    {
      localBundle.putBoolean("isPickup", bool);
      if ((paramGHSFilterSortCriteria.getFilterFragmentsModel() != null) && (paramGHSFilterSortCriteria.getFilterFragmentsModel().getSortFragments() != null) && (!paramGHSFilterSortCriteria.getFilterFragmentsModel().getSortFragments().isEmpty())) {
        localBundle.putStringArrayList("availableSortIds", new ArrayList(paramGHSFilterSortCriteria.getFilterFragmentsModel().getSortFragments().keySet()));
      }
      return localBundle;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */