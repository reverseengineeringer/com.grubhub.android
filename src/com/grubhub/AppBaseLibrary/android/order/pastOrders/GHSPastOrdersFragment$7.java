package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.content.DialogInterface;
import android.support.v4.app.q;
import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSPastOrdersFragment$7
  implements d
{
  GHSPastOrdersFragment$7(GHSPastOrdersFragment paramGHSPastOrdersFragment, boolean paramBoolean1, com.grubhub.AppBaseLibrary.android.dataServices.a.e.c paramc, boolean paramBoolean2) {}
  
  public void a(final com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    q localq = d.getActivity();
    if (localq != null)
    {
      com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
      GHSIPastOrderListDataModel localGHSIPastOrderListDataModel = localb.ab();
      if (localGHSIPastOrderListDataModel != null) {
        GHSPastOrdersFragment.a(d, localGHSIPastOrderListDataModel.getPastOrders());
      }
      GHSPastOrdersFragment.b(d, localb.M());
      GHSPastOrdersFragment.f(d);
      if ((!a) || (GHSPastOrdersFragment.e(d) == null)) {
        com.grubhub.AppBaseLibrary.android.c.a(localq, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
        {
          public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            if (paramb.d()) {
              b.a();
            }
          }
        });
      }
      if (c) {
        GHSPastOrdersFragment.c(d).setRefreshing(false);
      }
    }
    GHSPastOrdersFragment.b(d, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */