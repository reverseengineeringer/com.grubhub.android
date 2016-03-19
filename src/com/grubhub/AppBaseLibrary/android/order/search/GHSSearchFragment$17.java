package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.a;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.views.GHSAddressBar;

class GHSSearchFragment$17
  implements e<GHSIAddressDataModel>
{
  GHSSearchFragment$17(GHSSearchFragment paramGHSSearchFragment, g paramg) {}
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if (GHSSearchFragment.a(b) != null)
    {
      String str = a.b(paramGHSIAddressDataModel);
      GHSSearchFragment.a(b).a(str, a, null, null, false);
      b.a(paramGHSIAddressDataModel, str, a);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */