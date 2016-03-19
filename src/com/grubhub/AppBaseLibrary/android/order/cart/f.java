package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.DialogInterface;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.List;

class f
  implements View.OnClickListener
{
  private int b;
  
  public f(GHSCartFragment paramGHSCartFragment, int paramInt)
  {
    b = paramInt;
  }
  
  public void onClick(final View paramView)
  {
    if (GHSCartFragment.v(a) != null)
    {
      paramView = (GHSICartDataModel.GHSIOrderItem)GHSCartFragment.s(a).get(b);
      com.grubhub.AppBaseLibrary.android.c.a(a.getActivity(), 2131230953, 0, 2131230952, 2131230951, 0, new b()
      {
        public void a(DialogInterface paramAnonymousDialogInterface)
        {
          h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "delete item_CTA", "dismiss"));
        }
        
        public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          GHSCartFragment.a(a, GHSCartFragment.v(a).getCartId(), paramView.getId());
          h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "delete item_CTA", "successful"));
        }
        
        public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "delete item_CTA", "dismiss"));
        }
      });
      return;
    }
    a.l();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */