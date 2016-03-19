package com.grubhub.AppBaseLibrary.android.account;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSSavedPaymentListFragment$4
  implements d
{
  GHSSavedPaymentListFragment$4(GHSSavedPaymentListFragment paramGHSSavedPaymentListFragment) {}
  
  public void a(b paramb)
  {
    boolean bool = true;
    GHSSavedPaymentListFragment.a(a, true);
    paramb = a;
    if (GHSSavedPaymentListFragment.b(a).getCount() == 0) {}
    for (;;)
    {
      GHSSavedPaymentListFragment.b(paramb, bool);
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedPaymentListFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */