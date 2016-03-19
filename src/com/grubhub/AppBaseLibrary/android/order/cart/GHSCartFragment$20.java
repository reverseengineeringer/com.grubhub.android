package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.a.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSCartFragment$20
  implements d
{
  GHSCartFragment$20(GHSCartFragment paramGHSCartFragment, c paramc) {}
  
  public void a(b paramb)
  {
    GHSCartFragment.o(b).a(paramb.getLocalizedMessage(), new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a.a();
      }
    });
    if (GHSCartFragment.n(b) != null) {
      GHSCartFragment.n(b).notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */