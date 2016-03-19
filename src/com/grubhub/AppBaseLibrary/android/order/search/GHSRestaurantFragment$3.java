package com.grubhub.AppBaseLibrary.android.order.search;

import android.support.v4.app.w;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ExpandableListView;
import com.google.android.gms.b.d;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSRestaurantMenuSearchBar;
import com.grubhub.AppBaseLibrary.android.views.m;

class GHSRestaurantFragment$3
  implements e<GHSIRestaurantDataModel>
{
  GHSRestaurantFragment$3(GHSRestaurantFragment paramGHSRestaurantFragment, String paramString1, String paramString2, boolean paramBoolean, com.grubhub.AppBaseLibrary.android.dataServices.a.c paramc) {}
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    GHSRestaurantFragment.a(e, paramGHSIRestaurantDataModel);
    GHSRestaurantFragment.a(e, GHSApplication.a().b().P());
    if ((a != null) && (b != null)) {
      GHSRestaurantFragment.b(e, true);
    }
    if ((GHSRestaurantFragment.o(e) != null) && (GHSRestaurantFragment.o(e).getRestaurantId() != null) && (GHSRestaurantFragment.a(e) != null) && (GHSRestaurantFragment.a(e).getMenuSections() != null))
    {
      if (!c)
      {
        GHSRestaurantFragment.p(e);
        if ((GHSRestaurantFragment.q(e)) && (GHSRestaurantFragment.r(e)))
        {
          if (!GHSRestaurantFragment.o(e).offersDelivery()) {
            break label285;
          }
          GHSRestaurantFragment.a(e, g.DELIVERY);
        }
      }
      for (;;)
      {
        GHSRestaurantFragment.s(e);
        GHSRestaurantFragment.t(e).a(GHSRestaurantFragment.o(e), GHSRestaurantFragment.c(e));
        GHSRestaurantFragment.a(e, GHSRestaurantFragment.a(e).findAllMenuSectionNames());
        paramGHSIRestaurantDataModel = new i(e, GHSRestaurantFragment.a(e), LayoutInflater.from(e.getActivity()));
        GHSRestaurantFragment.u(e).setAdapter(paramGHSIRestaurantDataModel);
        int j = paramGHSIRestaurantDataModel.getGroupCount();
        int i = 0;
        while (i <= j - 1)
        {
          GHSRestaurantFragment.u(e).expandGroup(i);
          i += 1;
        }
        label285:
        GHSRestaurantFragment.a(e, null);
        GHSRestaurantFragment.a(e, g.PICKUP);
      }
      GHSRestaurantFragment.d(e).b();
      if (GHSRestaurantFragment.v(e))
      {
        paramGHSIRestaurantDataModel = (GHSRestaurantDetailsFragment)GHSRestaurantFragment.g(e).a(GHSRestaurantDetailsFragment.class.getSimpleName());
        if (paramGHSIRestaurantDataModel != null) {
          paramGHSIRestaurantDataModel.a(GHSRestaurantFragment.o(e));
        }
        if (GHSRestaurantFragment.n(e) != null)
        {
          paramGHSIRestaurantDataModel = GHSRestaurantFragment.n(e).getSearchText();
          if (!TextUtils.isEmpty(paramGHSIRestaurantDataModel)) {
            e.e(paramGHSIRestaurantDataModel);
          }
        }
        GHSRestaurantFragment.c(e, false);
      }
      if (GHSRestaurantFragment.w(e) == null)
      {
        GHSRestaurantFragment.a(e, GHSRestaurantFragment.x(e));
        if (GHSRestaurantFragment.w(e) != null) {
          com.google.android.gms.b.c.c.a(GHSRestaurantFragment.y(e), GHSRestaurantFragment.w(e));
        }
      }
      return;
    }
    paramGHSIRestaurantDataModel = new com.grubhub.AppBaseLibrary.android.b.b(a.ERROR_CODE_UNKNOWN);
    GHSRestaurantFragment.d(e).a(paramGHSIRestaurantDataModel.getLocalizedMessage(), new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        d.a();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */