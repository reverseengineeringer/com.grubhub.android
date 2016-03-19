package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSIAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.views.GHSSearchBar;

class GHSSearchFragment$24
  implements e<GHSIAutoCompleteDataModel>
{
  GHSSearchFragment$24(GHSSearchFragment paramGHSSearchFragment) {}
  
  public void a(GHSIAutoCompleteDataModel paramGHSIAutoCompleteDataModel)
  {
    if (GHSSearchFragment.b(a) != null) {
      GHSSearchFragment.b(a).setAutoCompleteResults(paramGHSIAutoCompleteDataModel);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */