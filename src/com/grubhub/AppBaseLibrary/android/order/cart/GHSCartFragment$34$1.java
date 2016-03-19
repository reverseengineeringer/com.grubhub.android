package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.DialogInterface;
import com.grubhub.AppBaseLibrary.android.b;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSCartFragment$34$1
  extends b
{
  GHSCartFragment$34$1(GHSCartFragment.34 param34) {}
  
  public void a(DialogInterface paramDialogInterface)
  {
    h.a().a(new c("modify your order", "empty bag_CTA", "dismiss"));
  }
  
  public void a(DialogInterface paramDialogInterface, int paramInt)
  {
    i.a();
    a.a.l();
    h.a().a(new c("modify your order", "empty bag_CTA", "successful"));
  }
  
  public void b(DialogInterface paramDialogInterface, int paramInt)
  {
    h.a().a(new c("modify your order", "empty bag_CTA", "dismiss"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.34.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */