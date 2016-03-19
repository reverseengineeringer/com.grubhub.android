package com.grubhub.AppBaseLibrary.android.order.search;

import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;

class GHSCouponFragment$6
  implements i
{
  GHSCouponFragment$6(GHSCouponFragment paramGHSCouponFragment, String paramString) {}
  
  public void a()
  {
    if (a == null)
    {
      q localq = b.getActivity();
      if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
        ((GHSBaseActivity)localq).a(false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSCouponFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */