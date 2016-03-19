package com.grubhub.AppBaseLibrary.android.utils.e.a.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.HashMap;

class a$3
  extends HashMap<String, String>
{
  a$3(a parama, GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    put("DistanceRadius", Float.toString(a.getDistanceRadius()));
    put("SearchTerm", a.a(b, a.getSearchTerm()));
    put("Address", a.a(b, a.getAddressString()));
    put("SortOption", a.a(b, a.getCurrentSortOption()));
    put("OrderType", a.a(b, a.getOrderType().toString()));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.e.a.a.a.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */