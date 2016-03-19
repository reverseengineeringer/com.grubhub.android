package com.grubhub.AppBaseLibrary.android.order.search.filter.a;

import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;

class d
  implements g
{
  public Bundle a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    Bundle localBundle = new Bundle();
    if (paramGHSFilterSortCriteria != null)
    {
      localBundle.putLong("savedFutureOrderTime", paramGHSFilterSortCriteria.getWhenFor());
      localBundle.putSerializable("savedSubOrder", paramGHSFilterSortCriteria.getSubOrderType());
    }
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */