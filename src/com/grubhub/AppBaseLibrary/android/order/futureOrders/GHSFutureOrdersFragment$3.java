package com.grubhub.AppBaseLibrary.android.order.futureOrders;

import android.content.DialogInterface;
import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.l;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSFutureOrdersFragment$3
  implements d
{
  GHSFutureOrdersFragment$3(GHSFutureOrdersFragment paramGHSFutureOrdersFragment, l paraml) {}
  
  public void a(final com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    GHSFutureOrdersFragment.a(b, false);
    GHSFutureOrdersFragment.b(b, true);
    c.a(GHSFutureOrdersFragment.b(b), paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
    {
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramb.d()) {
          a.a();
        }
      }
    });
    GHSFutureOrdersFragment.d(b).a(GHSFutureOrdersFragment.e(b), null);
    GHSFutureOrdersFragment.c(b).setRefreshing(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.futureOrders.GHSFutureOrdersFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */