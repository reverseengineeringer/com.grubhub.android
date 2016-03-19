package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.order.l;

class GHSUpdateCartTimeDialogFragment$4
  implements View.OnClickListener
{
  GHSUpdateCartTimeDialogFragment$4(GHSUpdateCartTimeDialogFragment paramGHSUpdateCartTimeDialogFragment) {}
  
  public void onClick(View paramView)
  {
    b localb = GHSApplication.a().b();
    GHSFilterSortCriteria localGHSFilterSortCriteria = localb.z();
    paramView = localGHSFilterSortCriteria;
    if (localGHSFilterSortCriteria == null) {
      paramView = new GHSFilterSortCriteria();
    }
    if (GHSUpdateCartTimeDialogFragment.d(a))
    {
      paramView.setSubOrderType(l.DEFAULT);
      paramView.setWhenFor(0L);
    }
    for (;;)
    {
      localb.a(paramView);
      a.dismiss();
      if (GHSUpdateCartTimeDialogFragment.f(a) != null) {
        GHSUpdateCartTimeDialogFragment.f(a).a(p.KEEP);
      }
      return;
      paramView.setSubOrderType(l.FUTURE);
      paramView.setWhenFor(GHSUpdateCartTimeDialogFragment.e(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSUpdateCartTimeDialogFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */