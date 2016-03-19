package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;
import java.util.List;

class GHSCartFragment$36
  implements e<GHSIBillModel>
{
  GHSCartFragment$36(GHSCartFragment paramGHSCartFragment, b paramb, String paramString) {}
  
  public void a(GHSIBillModel paramGHSIBillModel)
  {
    if ((paramGHSIBillModel != null) && (paramGHSIBillModel.getAvailablePaymentTypes() != null) && (!paramGHSIBillModel.getAvailablePaymentTypes().isEmpty()) && ((a.L() == null) || (!paramGHSIBillModel.getCartId().equals(b)))) {
      a.b(new ArrayList(paramGHSIBillModel.getAvailablePaymentTypes()));
    }
    GHSCartFragment.b(c).b(GHSCartFragment.r(c));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.36
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */