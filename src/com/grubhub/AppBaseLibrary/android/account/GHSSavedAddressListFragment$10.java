package com.grubhub.AppBaseLibrary.android.account;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;

class GHSSavedAddressListFragment$10
  implements e<ArrayList<GHSIAddressDataModel>>
{
  GHSSavedAddressListFragment$10(GHSSavedAddressListFragment paramGHSSavedAddressListFragment) {}
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    boolean bool = true;
    GHSSavedAddressListFragment.a(a, paramArrayList);
    GHSSavedAddressListFragment.f(a).a(paramArrayList);
    a.a(GHSSavedAddressListFragment.f(a));
    GHSSavedAddressListFragment.f(a).notifyDataSetChanged();
    GHSSavedAddressListFragment.d(a, true);
    paramArrayList = a;
    if (GHSSavedAddressListFragment.f(a).getCount() == 0) {}
    for (;;)
    {
      GHSSavedAddressListFragment.e(paramArrayList, bool);
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */