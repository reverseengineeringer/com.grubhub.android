package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.content.DialogInterface;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;

class GHSPastOrdersViewFragment$12
  implements com.grubhub.AppBaseLibrary.android.dataServices.net.d
{
  GHSPastOrdersViewFragment$12(GHSPastOrdersViewFragment paramGHSPastOrdersViewFragment, GHSIPastOrderDataModel paramGHSIPastOrderDataModel, com.grubhub.AppBaseLibrary.android.dataServices.a.c paramc) {}
  
  public void a(b paramb)
  {
    q localq = c.getActivity();
    if (localq != null)
    {
      if ((!paramb.d()) && ((paramb.c() == a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND) || (paramb.c() == a.ERROR_CODE_RESTAURANT_CONTENT_NOT_PREMIUM_CUSTOMER)))
      {
        GHSPastOrdersViewFragment.a(c, g.PAST_ORDER_CAPABILITIES_NOT_MUCH_WE_CAN_DO);
        GHSPastOrdersViewFragment.a(c, a);
      }
    }
    else {
      return;
    }
    com.grubhub.AppBaseLibrary.android.c.a(localq, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.d()
    {
      public void a(DialogInterface paramAnonymousDialogInterface) {}
      
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        b.a();
      }
      
      public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = c.getActivity();
        if (paramAnonymousDialogInterface != null) {
          paramAnonymousDialogInterface.onBackPressed();
        }
      }
      
      public void c(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = c.getActivity();
        if (paramAnonymousDialogInterface != null) {
          paramAnonymousDialogInterface.onBackPressed();
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersViewFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */