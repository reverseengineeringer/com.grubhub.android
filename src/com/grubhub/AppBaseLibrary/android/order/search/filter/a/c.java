package com.grubhub.AppBaseLibrary.android.order.search.filter.a;

import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;

class c
  implements g
{
  public Bundle a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    Bundle localBundle = new Bundle();
    if (paramGHSFilterSortCriteria != null) {
      localBundle.putFloat("savedDistanceFilterValue", paramGHSFilterSortCriteria.getDistanceRadius());
    }
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */