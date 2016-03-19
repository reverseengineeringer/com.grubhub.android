package com.grubhub.AppBaseLibrary.android.order.search.filter.a;

import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;

class h
  implements g
{
  public Bundle a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    Bundle localBundle = new Bundle();
    if (paramGHSFilterSortCriteria != null)
    {
      localBundle.putParcelable("savedPriceFilterModel", paramGHSFilterSortCriteria.getPriceModel());
      localBundle.putBoolean("hasPriceFilter", paramGHSFilterSortCriteria.isShowPriceFilter());
    }
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */