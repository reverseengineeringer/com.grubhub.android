package com.grubhub.AppBaseLibrary.android.order.search;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;
import com.grubhub.AppBaseLibrary.android.order.i;

class GHSMenuItemFragment$27
  implements d
{
  GHSMenuItemFragment$27(GHSMenuItemFragment paramGHSMenuItemFragment, Context paramContext) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    q localq = b.getActivity();
    if (localq != null)
    {
      if ((GHSMenuItemFragment.w(b) != null) && (GHSMenuItemFragment.k(b) != null) && (paramb.c() == a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA)) {
        GHSOutOfRangeDialog.a(GHSMenuItemFragment.k(b).getRestaurantId(), GHSMenuItemFragment.k(b).getRestaurantName(), GHSMenuItemFragment.k(b).offersPickup(), GHSMenuItemFragment.w(b), i.ADD_ITEM, "restaurant menu item").show(b.getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
      }
    }
    else {
      return;
    }
    if (paramb.c() == a.ERROR_CODE_RESTAURANT_NOT_TAKING_FUTURE_ORDERS)
    {
      c.a(a, paramb.f(), paramb.getLocalizedMessage(), null, null, paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
      {
        public void a(DialogInterface paramAnonymousDialogInterface)
        {
          GHSMenuItemFragment.y(b);
        }
        
        public void c(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          GHSMenuItemFragment.y(b);
        }
      });
      return;
    }
    c.a(a, paramb.f(), paramb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */