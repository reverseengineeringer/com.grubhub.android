package com.grubhub.AppBaseLibrary.android.account;

import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;

class GHSSavedAddressListFragment$13
  implements i
{
  GHSSavedAddressListFragment$13(GHSSavedAddressListFragment paramGHSSavedAddressListFragment) {}
  
  public void a()
  {
    if (!GHSSavedAddressListFragment.l(a))
    {
      if ((a.getActivity() instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)a.getActivity()).a(false);
      }
      GHSSavedAddressListFragment.f(a, true);
      GHSSavedAddressListFragment.a(a, false);
    }
    GHSSavedAddressListFragment.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */