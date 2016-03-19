package com.grubhub.AppBaseLibrary.android.order;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;

class GHSOutOfRangeDialog$1
  implements View.OnClickListener
{
  GHSOutOfRangeDialog$1(GHSOutOfRangeDialog paramGHSOutOfRangeDialog, b paramb) {}
  
  public void onClick(View paramView)
  {
    switch (GHSOutOfRangeDialog.8.a[GHSOutOfRangeDialog.a(b).ordinal()])
    {
    default: 
      paramView = a.X();
      if (paramView != null) {
        GHSOutOfRangeDialog.a(b, paramView);
      }
      break;
    }
    do
    {
      return;
      GHSOutOfRangeDialog.b(b).setOrderType(g.PICKUP);
      a.a(GHSOutOfRangeDialog.b(b));
      b.dismiss();
    } while (GHSOutOfRangeDialog.c(b) == null);
    GHSOutOfRangeDialog.c(b).g_();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */