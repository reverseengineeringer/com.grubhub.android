package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.support.v4.app.DialogFragment;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;
import com.grubhub.AppBaseLibrary.android.order.i;

class GHSMenuItemFragment$8
  implements e<GHSIRestaurantAvailabilityDataModel>
{
  GHSMenuItemFragment$8(GHSMenuItemFragment paramGHSMenuItemFragment, String paramString, boolean paramBoolean, Context paramContext, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(GHSIRestaurantAvailabilityDataModel paramGHSIRestaurantAvailabilityDataModel)
  {
    if ((paramGHSIRestaurantAvailabilityDataModel != null) && (paramGHSIRestaurantAvailabilityDataModel.getSummary(a) != null))
    {
      if (paramGHSIRestaurantAvailabilityDataModel.getSummary(a).offersDeliveryToDinerLocation())
      {
        if ((b) || (GHSMenuItemFragment.m(e) == null))
        {
          GHSMenuItemFragment.b(e, c, b);
          return;
        }
        GHSMenuItemFragment.c(e, c, b);
        return;
      }
      if (GHSMenuItemFragment.k(e) != null) {
        GHSOutOfRangeDialog.a(GHSMenuItemFragment.k(e).getRestaurantId(), GHSMenuItemFragment.k(e).getRestaurantName(), GHSMenuItemFragment.k(e).offersPickup(), d, i.ADD_ITEM, "restaurant menu item").show(e.getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
      }
      for (;;)
      {
        GHSMenuItemFragment.u(e);
        return;
        paramGHSIRestaurantAvailabilityDataModel = new b(a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA);
        c.a(e.getActivity(), paramGHSIRestaurantAvailabilityDataModel.f(), paramGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, e.getString(2131231717), null);
      }
    }
    paramGHSIRestaurantAvailabilityDataModel = new b(a.ERROR_CODE_UNKNOWN);
    c.a(e.getActivity(), paramGHSIRestaurantAvailabilityDataModel.f(), paramGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, e.getString(2131231717), null);
    GHSMenuItemFragment.u(e);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */