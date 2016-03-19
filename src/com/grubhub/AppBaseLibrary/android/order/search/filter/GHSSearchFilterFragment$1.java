package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.support.v4.app.w;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;

class GHSSearchFilterFragment$1
  implements View.OnClickListener
{
  GHSSearchFilterFragment$1(GHSSearchFilterFragment paramGHSSearchFilterFragment) {}
  
  public void onClick(View paramView)
  {
    if (GHSSearchFilterFragment.a(a) == null) {
      GHSSearchFilterFragment.a(a, new GHSFilterSortCriteria());
    }
    paramView = (c)a.getChildFragmentManager().a("cuisines");
    c localc = (c)a.getChildFragmentManager().a("refine");
    if (paramView != null) {
      paramView.a(GHSSearchFilterFragment.a(a));
    }
    if (localc != null) {
      localc.a(GHSSearchFilterFragment.a(a));
    }
    if (GHSSearchFilterFragment.b(a) != null)
    {
      a.f_();
      GHSSearchFilterFragment.b(a).a(GHSSearchFilterFragment.a(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSearchFilterFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */