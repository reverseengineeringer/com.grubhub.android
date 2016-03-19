package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.c;

class GHSPastOrdersViewFragment$17
  implements com.grubhub.AppBaseLibrary.android.dataServices.net.d
{
  GHSPastOrdersViewFragment$17(GHSPastOrdersViewFragment paramGHSPastOrdersViewFragment, com.grubhub.AppBaseLibrary.android.dataServices.a.e.d paramd) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    q localq = b.getActivity();
    if (localq != null)
    {
      if (!paramb.d()) {
        break label59;
      }
      c.a(localq, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
      {
        public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          a.a();
        }
      });
    }
    for (;;)
    {
      GHSPastOrdersViewFragment.e(b);
      return;
      label59:
      c.a(localq, paramb.f(), paramb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersViewFragment.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */