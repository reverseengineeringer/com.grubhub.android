package com.grubhub.AppBaseLibrary.android.order.search.filter.a;

import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;

class i
  implements g
{
  public Bundle a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    Bundle localBundle = new Bundle();
    if (paramGHSFilterSortCriteria != null)
    {
      localBundle.putParcelable("savedRatingsFilterModel", paramGHSFilterSortCriteria.getRatingsModel());
      localBundle.putBoolean("hasRatingsFilter", paramGHSFilterSortCriteria.isShowRatingsFilter());
    }
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */