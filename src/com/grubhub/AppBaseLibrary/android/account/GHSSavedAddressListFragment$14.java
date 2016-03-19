package com.grubhub.AppBaseLibrary.android.account;

import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSSavedAddressListFragment$14
  implements e<GHSIRestaurantAvailabilityDataModel>
{
  GHSSavedAddressListFragment$14(GHSSavedAddressListFragment paramGHSSavedAddressListFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(GHSIRestaurantAvailabilityDataModel paramGHSIRestaurantAvailabilityDataModel)
  {
    GHSSavedAddressListFragment.k(b);
    if ((paramGHSIRestaurantAvailabilityDataModel != null) && (paramGHSIRestaurantAvailabilityDataModel.getSummary(GHSSavedAddressListFragment.j(b)) != null))
    {
      if (paramGHSIRestaurantAvailabilityDataModel.getSummary(GHSSavedAddressListFragment.j(b)).offersDeliveryToDinerLocation())
      {
        GHSSavedAddressListFragment.b(b, a.getId());
        return;
      }
      paramGHSIRestaurantAvailabilityDataModel = new b(a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA);
      c.a(b.getActivity(), paramGHSIRestaurantAvailabilityDataModel.f(), paramGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, b.getString(2131231717), b);
      if ((b.getActivity() instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)b.getActivity()).a(false);
      }
      GHSSavedAddressListFragment.f(b, true);
      GHSSavedAddressListFragment.a(b, false);
      GHSSavedAddressListFragment.g(b, true);
      return;
    }
    paramGHSIRestaurantAvailabilityDataModel = new b(a.ERROR_CODE_UNKNOWN);
    c.a(b.getActivity(), paramGHSIRestaurantAvailabilityDataModel.f(), paramGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, b.getString(2131231717), b);
    if ((b.getActivity() instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)b.getActivity()).a(false);
    }
    GHSSavedAddressListFragment.f(b, true);
    GHSSavedAddressListFragment.a(b, false);
    GHSSavedAddressListFragment.g(b, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */