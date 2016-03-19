package com.grubhub.AppBaseLibrary.android.order.search;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.widget.SwipeRefreshLayout;
import android.view.View;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;
import com.grubhub.AppBaseLibrary.android.views.GHSSearchBar;
import java.util.ArrayList;

class GHSSearchFragment$7
  implements com.grubhub.AppBaseLibrary.android.dataServices.net.e<GHSIRestaurantListDataModel>
{
  GHSSearchFragment$7(GHSSearchFragment paramGHSSearchFragment, int paramInt) {}
  
  public void a(GHSIRestaurantListDataModel paramGHSIRestaurantListDataModel)
  {
    Object localObject1 = b.getActivity();
    b localb;
    Object localObject2;
    boolean bool;
    if (localObject1 != null)
    {
      GHSSearchFragment.a(b, paramGHSIRestaurantListDataModel);
      b.a = paramGHSIRestaurantListDataModel.getRestaurants();
      localb = GHSApplication.a().b();
      if ((b.a == null) || (b.a.size() <= 0)) {
        break label470;
      }
      if ((GHSSearchFragment.g(b).getAdapter() != null) && (a != 1)) {
        break label433;
      }
      GHSSearchFragment.g(b).setAdapter(new k(b, (Context)localObject1, 2130903221, b.a));
      localObject2 = b;
      if (((HeaderViewListAdapter)GHSSearchFragment.g(b).getAdapter()).getWrappedAdapter().getCount() < GHSSearchFragment.f(b).getTotalResults().longValue()) {
        break label465;
      }
      bool = true;
      label168:
      GHSSearchFragment.e((GHSSearchFragment)localObject2, bool);
      GHSSearchFragment.s(b).b();
      GHSSearchFragment.e(b).setRestaurantFilterData(paramGHSIRestaurantListDataModel);
      localb.a(GHSSearchFragment.e(b));
      GHSSearchFragment.b(b).d();
    }
    for (;;)
    {
      GHSSearchFragment.v(b);
      GHSSearchFragment.f(b, false);
      GHSSearchFragment.r(b).setRefreshing(false);
      GHSSearchFragment.g(b).removeFooterView(GHSSearchFragment.t(b));
      if ((((Activity)localObject1).getResources().getBoolean(2131361807)) && (!localb.v()) && (GHSSearchFragment.b(b) != null))
      {
        paramGHSIRestaurantListDataModel = new com.grubhub.AppBaseLibrary.android.views.e((Context)localObject1, ((Activity)localObject1).getString(2131230994), ((Activity)localObject1).getString(2131231089));
        localObject2 = ((Activity)localObject1).getActionBar().getCustomView().findViewById(2131689639);
        int[] arrayOfInt = new int[2];
        ((View)localObject2).getLocationInWindow(arrayOfInt);
        View localView = GHSSearchFragment.b(b).findViewById(2131690328);
        localObject1 = ((Activity)localObject1).getActionBar();
        paramGHSIRestaurantListDataModel.a(arrayOfInt[0] + ((View)localObject2).getWidth() / 2, ((ActionBar)localObject1).getHeight() + localView.getBottom());
        paramGHSIRestaurantListDataModel.show();
        paramGHSIRestaurantListDataModel.a();
        localb.i(true);
        h.a().a(new c("onboarding", "coach bubble_impression", "new enter location bar", "1"));
      }
      return;
      label433:
      ((k)((HeaderViewListAdapter)GHSSearchFragment.g(b).getAdapter()).getWrappedAdapter()).a(b.a);
      break;
      label465:
      bool = false;
      break label168;
      label470:
      GHSSearchFragment.u(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */