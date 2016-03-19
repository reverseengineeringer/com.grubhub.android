package com.grubhub.AppBaseLibrary.android.order.search.filter.a;

import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;

class b
  implements g
{
  public Bundle a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    Bundle localBundle = new Bundle();
    if ((paramGHSFilterSortCriteria != null) && (paramGHSFilterSortCriteria.getCuisineList() != null)) {
      localBundle.putParcelableArrayList("savedCuisineArray", paramGHSFilterSortCriteria.getCuisineList());
    }
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */