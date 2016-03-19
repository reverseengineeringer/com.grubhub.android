package com.grubhub.AppBaseLibrary.android.order.search;

import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;

class GHSCouponFragment$2
  implements i
{
  GHSCouponFragment$2(GHSCouponFragment paramGHSCouponFragment) {}
  
  public void a()
  {
    q localq = a.getActivity();
    if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
      ((GHSBaseActivity)localq).a(false);
    }
    GHSCouponFragment.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSCouponFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */