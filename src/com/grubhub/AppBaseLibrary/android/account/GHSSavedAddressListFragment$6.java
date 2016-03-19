package com.grubhub.AppBaseLibrary.android.account;

import android.support.v4.app.DialogFragment;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;

class GHSSavedAddressListFragment$6
  implements d
{
  GHSSavedAddressListFragment$6(GHSSavedAddressListFragment paramGHSSavedAddressListFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    GHSIRestaurantDataModel localGHSIRestaurantDataModel = GHSApplication.a().b().U();
    if ((localGHSIRestaurantDataModel != null) && (paramb.c() == a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA))
    {
      GHSOutOfRangeDialog.a(localGHSIRestaurantDataModel.getRestaurantId(), localGHSIRestaurantDataModel.getRestaurantName(), localGHSIRestaurantDataModel.offersPickup(), a, com.grubhub.AppBaseLibrary.android.order.i.ORDER, "saved addresses").show(b.getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
      return;
    }
    if ((paramb.c() == a.ERROR_CODE_ADDRESS_INVALID_PHONE) && (GHSSavedAddressListFragment.e(b) != null))
    {
      GHSSavedAddressListFragment.e(b).a(a, GHSSavedAddressListFragment.i(b), true, GHSSavedAddressListFragment.j(b));
      return;
    }
    c.a(b.getActivity(), paramb.f(), paramb.getLocalizedMessage(), null, null, b.getString(2131231717), b);
    GHSSavedAddressListFragment.g(b, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */