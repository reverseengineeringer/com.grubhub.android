package com.grubhub.AppBaseLibrary.android.order;

import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSOutOfRangeDialog$6
  implements e<GHSICartDataModel>
{
  GHSOutOfRangeDialog$6(GHSOutOfRangeDialog paramGHSOutOfRangeDialog, b paramb) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    GHSOutOfRangeDialog.b(b).setOrderType(g.PICKUP);
    a.a(GHSOutOfRangeDialog.b(b));
    b.dismiss();
    if (GHSOutOfRangeDialog.c(b) != null) {
      GHSOutOfRangeDialog.c(b).r();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */