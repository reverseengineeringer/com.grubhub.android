package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSCartFragment$16
  implements d
{
  GHSCartFragment$16(GHSCartFragment paramGHSCartFragment) {}
  
  public void a(b paramb)
  {
    if (GHSCartFragment.n(a) != null) {
      GHSCartFragment.n(a).notifyDataSetChanged();
    }
    paramb = a.getActivity();
    if ((paramb instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramb).a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */