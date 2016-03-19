package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.utils.c.e;
import com.grubhub.AppBaseLibrary.android.utils.c.f;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSSearchBar;

class GHSSearchFragment$33
  implements View.OnClickListener
{
  GHSSearchFragment$33(GHSSearchFragment paramGHSSearchFragment, com.grubhub.AppBaseLibrary.android.dataServices.b.b paramb) {}
  
  public void onClick(View paramView)
  {
    paramView = GHSSearchFragment.e(b).getSearchTerm();
    g localg = GHSSearchFragment.e(b).getOrderType();
    GHSSearchFragment.e(b).resetFilterValues();
    GHSSearchFragment.e(b).setSearchTerm(paramView);
    GHSSearchFragment.e(b).setOrderType(localg);
    a.a(GHSSearchFragment.e(b));
    GHSSearchFragment.b(b).e();
    GHSSearchFragment.a(b, GHSSearchFragment.e(b), true);
    GHSSearchFragment.m(b);
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(e.CORE_ORDERING_EXP, f.RESTAURANT_SEARCH, "restaurants search results"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.33
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */