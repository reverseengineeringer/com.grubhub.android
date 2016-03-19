package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.List;

class GHSCartFragment$15
  implements e<GHSIFoodMenuDataModel.GHSIMenuItem>
{
  GHSCartFragment$15(GHSCartFragment paramGHSCartFragment, String paramString, int paramInt) {}
  
  public void a(GHSIFoodMenuDataModel.GHSIMenuItem paramGHSIMenuItem)
  {
    if (paramGHSIMenuItem != null)
    {
      GHSApplication.a().b().a(paramGHSIMenuItem);
      GHSCartFragment.a(c, a, b + 1);
      GHSCartFragment.m(c).add(paramGHSIMenuItem);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */