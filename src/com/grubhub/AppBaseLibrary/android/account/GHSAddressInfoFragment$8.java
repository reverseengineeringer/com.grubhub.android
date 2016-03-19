package com.grubhub.AppBaseLibrary.android.account;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.DialogFragment;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;

class GHSAddressInfoFragment$8
  implements d
{
  GHSAddressInfoFragment$8(GHSAddressInfoFragment paramGHSAddressInfoFragment, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    if (paramb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA)
    {
      GHSAddressInfoFragment.m(b);
      if ((GHSAddressInfoFragment.n(b)) && (GHSAddressInfoFragment.l(b) == a.EDIT)) {
        new AlertDialog.Builder(b.getActivity()).setTitle(b.getString(2131230912)).setMessage(b.getString(2131230910)).setPositiveButton(b.getString(2131230911), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            com.grubhub.AppBaseLibrary.android.order.cart.i.a();
            GHSAddressInfoFragment.c(b, false);
            GHSAddressInfoFragment.b(b, a);
          }
        }).setNegativeButton(b.getString(2131230945), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.dismiss();
          }
        }).setIcon(17301543).show();
      }
    }
    for (;;)
    {
      GHSAddressInfoFragment.j(b);
      GHSAddressInfoFragment.a(b, "error");
      return;
      paramb = GHSApplication.a().b().U();
      GHSOutOfRangeDialog.a(paramb.getRestaurantId(), paramb.getRestaurantName(), paramb.offersPickup(), a, com.grubhub.AppBaseLibrary.android.order.i.ORDER, "enter info_address").show(b.getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
      continue;
      b.a(paramb.getMessage(), true);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */