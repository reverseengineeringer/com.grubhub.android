package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.DialogInterface;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.b;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSCartFragment$34
  implements View.OnClickListener
{
  GHSCartFragment$34(GHSCartFragment paramGHSCartFragment) {}
  
  public void onClick(View paramView)
  {
    com.grubhub.AppBaseLibrary.android.c.a(paramView.getContext(), 2131230961, 0, 2131231717, 2131230945, 0, new b()
    {
      public void a(DialogInterface paramAnonymousDialogInterface)
      {
        h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "empty bag_CTA", "dismiss"));
      }
      
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        i.a();
        a.l();
        h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "empty bag_CTA", "successful"));
      }
      
      public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "empty bag_CTA", "dismiss"));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.34
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */