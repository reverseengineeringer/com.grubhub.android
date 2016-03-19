package com.grubhub.AppBaseLibrary.android.account;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSSavedAddressListFragment$5
  implements e<GHSICartDataModel>
{
  GHSSavedAddressListFragment$5(GHSSavedAddressListFragment paramGHSSavedAddressListFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null)
    {
      GHSSavedAddressListFragment.k(b);
      if (paramGHSICartDataModel.getDeliveryAddress() != null)
      {
        GHSApplication.a().b().a(a);
        GHSSavedAddressListFragment.b(b, a.getId());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */