package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.DialogInterface;
import com.grubhub.AppBaseLibrary.android.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class f$1
  extends b
{
  f$1(f paramf, GHSICartDataModel.GHSIOrderItem paramGHSIOrderItem) {}
  
  public void a(DialogInterface paramDialogInterface)
  {
    h.a().a(new c("modify your order", "delete item_CTA", "dismiss"));
  }
  
  public void a(DialogInterface paramDialogInterface, int paramInt)
  {
    GHSCartFragment.a(b.a, GHSCartFragment.v(b.a).getCartId(), a.getId());
    h.a().a(new c("modify your order", "delete item_CTA", "successful"));
  }
  
  public void b(DialogInterface paramDialogInterface, int paramInt)
  {
    h.a().a(new c("modify your order", "delete item_CTA", "dismiss"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.f.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */