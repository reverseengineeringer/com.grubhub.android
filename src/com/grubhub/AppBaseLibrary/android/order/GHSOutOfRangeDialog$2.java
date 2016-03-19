package com.grubhub.AppBaseLibrary.android.order;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;

class GHSOutOfRangeDialog$2
  implements View.OnClickListener
{
  GHSOutOfRangeDialog$2(GHSOutOfRangeDialog paramGHSOutOfRangeDialog) {}
  
  public void onClick(View paramView)
  {
    GHSOutOfRangeDialog.b(a).setAddress(GHSOutOfRangeDialog.d(a), a.b(GHSOutOfRangeDialog.d(a)));
    GHSOutOfRangeDialog.b(a).setOrderType(g.DELIVERY);
    GHSApplication.a().b().a(GHSOutOfRangeDialog.b(a));
    GHSApplication.a().b().l(true);
    if (GHSOutOfRangeDialog.c(a) != null) {
      GHSOutOfRangeDialog.c(a).s();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */