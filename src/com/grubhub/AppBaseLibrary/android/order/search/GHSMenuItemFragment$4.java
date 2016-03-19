package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSMenuItemFragment$4
  implements e<GHSIFoodMenuDataModel.GHSIMenuItem>
{
  GHSMenuItemFragment$4(GHSMenuItemFragment paramGHSMenuItemFragment, com.grubhub.AppBaseLibrary.android.dataServices.a.b paramb) {}
  
  public void a(GHSIFoodMenuDataModel.GHSIMenuItem paramGHSIMenuItem)
  {
    GHSMenuItemFragment.a(b, paramGHSIMenuItem);
    if (GHSMenuItemFragment.r(b) != null)
    {
      GHSMenuItemFragment.s(b);
      b.e();
      GHSMenuItemFragment.q(b).b();
      return;
    }
    paramGHSIMenuItem = new com.grubhub.AppBaseLibrary.android.b.b(a.ERROR_CODE_UNKNOWN);
    GHSMenuItemFragment.q(b).a(paramGHSIMenuItem.getLocalizedMessage(), new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a.a();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */