package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.DialogInterface;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.order.g;

class GHSCartActivity$6
  implements d
{
  GHSCartActivity$6(GHSCartActivity paramGHSCartActivity, g paramg, boolean paramBoolean, com.grubhub.AppBaseLibrary.android.dataServices.a.a parama) {}
  
  public void a(final com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    if (paramb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_INVALID_PHONE)
    {
      if (a == g.PICKUP)
      {
        GHSCartActivity.a(d, g.PICKUP, true, false, false, false, false, false);
        return;
      }
      GHSCartActivity.a(d, g.DELIVERY, false, false, false, true, false, b);
      return;
    }
    c.a(d, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
    {
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramb.d()) {
          c.a();
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */