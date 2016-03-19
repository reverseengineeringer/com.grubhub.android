package com.grubhub.AppBaseLibrary.android.order.search.filter.a;

import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFacetOption;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterFragmentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

class f
  implements g
{
  public Bundle a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    Bundle localBundle = new Bundle();
    if ((paramGHSFilterSortCriteria != null) && (paramGHSFilterSortCriteria.getFilterFragmentsModel() != null) && (paramGHSFilterSortCriteria.getFilterFragmentsModel().getSingleValueRefinements() != null) && (!paramGHSFilterSortCriteria.getFilterFragmentsModel().getSingleValueRefinements().isEmpty()))
    {
      paramGHSFilterSortCriteria = paramGHSFilterSortCriteria.getFilterFragmentsModel().getSingleValueRefinements();
      LinkedHashMap localLinkedHashMap = new LinkedHashMap();
      Iterator localIterator = paramGHSFilterSortCriteria.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localLinkedHashMap.put(str, new GHSFacetOption((GHSFacetOption)paramGHSFilterSortCriteria.get(str)));
      }
      localBundle.putSerializable("savedOptionsFilterValues", localLinkedHashMap);
    }
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */