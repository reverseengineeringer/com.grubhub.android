package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.res.Resources;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;
import com.grubhub.AppBaseLibrary.android.order.i;

class GHSCartFragment$7
  implements d
{
  GHSCartFragment$7(GHSCartFragment paramGHSCartFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    GHSCartFragment.l(b);
    GHSCartFragment.d(b, true);
    if (paramb.c() == a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA)
    {
      paramb = GHSApplication.a().b().U();
      GHSOutOfRangeDialog.a(paramb.getRestaurantId(), paramb.getRestaurantName(), paramb.offersPickup(), a, i.ORDER, "cart").show(b.getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
    }
    q localq;
    do
    {
      return;
      localq = b.getActivity();
    } while (localq == null);
    c.a(localq, paramb.f(), paramb.getLocalizedMessage(), b.getResources().getString(2131231717), null, null, null);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */