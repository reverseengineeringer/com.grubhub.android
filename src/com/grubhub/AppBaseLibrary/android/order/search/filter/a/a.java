package com.grubhub.AppBaseLibrary.android.order.search.filter.a;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSCuisineFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSDistanceFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSFutureOrderFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSMoreFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSOptionsFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSPriceFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSRatingsFilterFragment;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSortByFragment;
import java.util.HashMap;

public class a
{
  private static HashMap<Class<? extends Fragment>, g> a = new HashMap();
  
  static
  {
    a.put(GHSSortByFragment.class, new j(null));
    a.put(GHSMoreFilterFragment.class, new e(null));
    a.put(GHSOptionsFilterFragment.class, new f(null));
    a.put(GHSPriceFilterFragment.class, new h(null));
    a.put(GHSRatingsFilterFragment.class, new i(null));
    a.put(GHSDistanceFilterFragment.class, new c(null));
    a.put(GHSFutureOrderFilterFragment.class, new d(null));
    a.put(GHSCuisineFilterFragment.class, new b(null));
  }
  
  public static Bundle a(Class<? extends Fragment> paramClass, GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    if (a.get(paramClass) == null) {
      return null;
    }
    return ((g)a.get(paramClass)).a(paramGHSFilterSortCriteria);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */