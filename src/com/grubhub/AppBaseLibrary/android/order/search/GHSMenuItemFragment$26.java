package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;
import java.util.List;

class GHSMenuItemFragment$26
  implements e<GHSICartDataModel>
{
  GHSMenuItemFragment$26(GHSMenuItemFragment paramGHSMenuItemFragment, boolean paramBoolean) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    GHSMenuItemFragment.a(b, paramGHSICartDataModel);
    if (GHSMenuItemFragment.k(b) != null) {
      GHSApplication.a().b().b(GHSMenuItemFragment.k(b));
    }
    if (GHSMenuItemFragment.r(b) != null)
    {
      if (!a) {
        break label107;
      }
      paramGHSICartDataModel = new ArrayList();
      paramGHSICartDataModel.add(GHSMenuItemFragment.r(b));
      GHSApplication.a().b().a(paramGHSICartDataModel);
    }
    for (;;)
    {
      GHSMenuItemFragment.a(b, GHSMenuItemFragment.x(b), 1000, true);
      return;
      label107:
      GHSApplication.a().b().a(GHSMenuItemFragment.r(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */