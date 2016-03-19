package com.grubhub.AppBaseLibrary.android.utils.c;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.order.l;
import java.util.HashMap;

class h$3
  extends HashMap<String, Object>
{
  h$3(h paramh, GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    if (a.getSubOrderType() != l.FUTURE) {}
    for (paramh = "asap";; paramh = "later")
    {
      put("futureorderflag", paramh);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.c.h.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */