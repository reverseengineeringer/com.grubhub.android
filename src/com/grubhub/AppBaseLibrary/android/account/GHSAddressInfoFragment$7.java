package com.grubhub.AppBaseLibrary.android.account;

import android.app.Activity;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSAddressInfoFragment$7
  implements e<GHSICartDataModel>
{
  GHSAddressInfoFragment$7(GHSAddressInfoFragment paramGHSAddressInfoFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    q localq = b.getActivity();
    if (localq != null)
    {
      if ((paramGHSICartDataModel == null) || (paramGHSICartDataModel.getDeliveryAddress() == null)) {
        break label69;
      }
      GHSAddressInfoFragment.m(b);
      if (GHSAddressInfoFragment.l(b) == a.EDIT) {
        GHSAddressInfoFragment.b(b, a);
      }
    }
    else
    {
      return;
    }
    GHSAddressInfoFragment.c(b, a);
    return;
    label69:
    b.a(localq.getString(2131231489), true);
    GHSAddressInfoFragment.j(b);
    GHSAddressInfoFragment.a(b, "error");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */