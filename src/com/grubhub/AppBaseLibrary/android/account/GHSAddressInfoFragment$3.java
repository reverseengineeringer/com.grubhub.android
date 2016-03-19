package com.grubhub.AppBaseLibrary.android.account;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSAddressInfoFragment$3
  implements e<GHSIRestaurantAvailabilityDataModel>
{
  GHSAddressInfoFragment$3(GHSAddressInfoFragment paramGHSAddressInfoFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(GHSIRestaurantAvailabilityDataModel paramGHSIRestaurantAvailabilityDataModel)
  {
    if ((paramGHSIRestaurantAvailabilityDataModel != null) && (paramGHSIRestaurantAvailabilityDataModel.getSummary(GHSAddressInfoFragment.k(b)) != null))
    {
      if (paramGHSIRestaurantAvailabilityDataModel.getSummary(GHSAddressInfoFragment.k(b)).offersDeliveryToDinerLocation())
      {
        if (GHSAddressInfoFragment.l(b) == a.EDIT)
        {
          GHSAddressInfoFragment.b(b, a);
          return;
        }
        GHSAddressInfoFragment.c(b, a);
        return;
      }
      paramGHSIRestaurantAvailabilityDataModel = new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA);
      c.a(b.getActivity(), paramGHSIRestaurantAvailabilityDataModel.f(), paramGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, b.getString(2131231717), null);
      GHSAddressInfoFragment.j(b);
      return;
    }
    b.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN).getLocalizedMessage(), true);
    GHSAddressInfoFragment.j(b);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */