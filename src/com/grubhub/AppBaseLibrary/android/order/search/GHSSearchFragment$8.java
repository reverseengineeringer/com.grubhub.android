package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.app.q;
import android.support.v4.widget.SwipeRefreshLayout;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.a.f;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;
import com.grubhub.AppBaseLibrary.android.views.GHSSearchBar;

class GHSSearchFragment$8
  implements d
{
  GHSSearchFragment$8(GHSSearchFragment paramGHSSearchFragment, int paramInt, f paramf) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    q localq = c.getActivity();
    if (localq != null)
    {
      if ((a <= 1) || (!GHSSearchFragment.g(c).isShown())) {
        break label67;
      }
      GHSSearchFragment.t(c).a(2131232019, null);
    }
    for (;;)
    {
      GHSSearchFragment.f(c, false);
      GHSSearchFragment.r(c).setRefreshing(false);
      return;
      label67:
      GHSSearchFragment.g(c).removeFooterView(GHSSearchFragment.t(c));
      Object localObject = GHSSearchFragment.s(c).getContext();
      if (paramb.d())
      {
        localObject = ((Context)localObject).getString(2131231608);
        c.a(localq, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
        {
          public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            b.a();
          }
        });
      }
      for (paramb = (com.grubhub.AppBaseLibrary.android.b.b)localObject;; paramb = ((Context)localObject).getString(2131231604))
      {
        ((TextView)GHSSearchFragment.w(c).findViewById(2131690333)).setText(paramb);
        GHSSearchFragment.s(c).a(GHSSearchFragment.w(c), new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            b.a();
          }
        });
        if ((GHSSearchFragment.e(c) == null) || ((!GHSSearchFragment.e(c).getHasUserSelectedRefinements()) && (!GHSSearchFragment.e(c).getHasUserSelectedCuisines()))) {
          break label247;
        }
        GHSSearchFragment.b(c).d();
        break;
      }
      label247:
      GHSSearchFragment.b(c).e();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */