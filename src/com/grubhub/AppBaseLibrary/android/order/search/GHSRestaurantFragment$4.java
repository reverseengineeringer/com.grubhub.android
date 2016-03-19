package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.a.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSRestaurantFragment$4
  implements d
{
  GHSRestaurantFragment$4(GHSRestaurantFragment paramGHSRestaurantFragment, c paramc) {}
  
  public void a(b paramb)
  {
    GHSRestaurantFragment.d(b).a(paramb.getMessage(), new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a.a();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */