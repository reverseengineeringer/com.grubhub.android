package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment;

class GHSPastOrdersActivity$1
  implements Runnable
{
  GHSPastOrdersActivity$1(GHSPastOrdersActivity paramGHSPastOrdersActivity, boolean paramBoolean, String paramString) {}
  
  public void run()
  {
    w localw = c.getSupportFragmentManager();
    GHSSavedAddressListFragment localGHSSavedAddressListFragment = GHSSavedAddressListFragment.a(null, true, a, b, true, false);
    if (localGHSSavedAddressListFragment != null)
    {
      localGHSSavedAddressListFragment.setAllowReturnTransitionOverlap(true);
      localGHSSavedAddressListFragment.setAllowEnterTransitionOverlap(true);
      localw.a().b(2131689615, localGHSSavedAddressListFragment, GHSSavedAddressListFragment.class.getSimpleName()).a(GHSSavedAddressListFragment.class.getSimpleName()).a();
      GHSPastOrdersActivity.a(c, GHSSavedAddressListFragment.class.getSimpleName());
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */