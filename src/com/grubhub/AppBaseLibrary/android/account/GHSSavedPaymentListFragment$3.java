package com.grubhub.AppBaseLibrary.android.account;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class GHSSavedPaymentListFragment$3
  implements e<GHSIGetPaymentsModel>
{
  GHSSavedPaymentListFragment$3(GHSSavedPaymentListFragment paramGHSSavedPaymentListFragment) {}
  
  public void a(GHSIGetPaymentsModel paramGHSIGetPaymentsModel)
  {
    boolean bool = true;
    GHSSavedPaymentListFragment.b(a).a(GHSSavedPaymentListFragment.a(a));
    a.a(GHSSavedPaymentListFragment.b(a));
    GHSSavedPaymentListFragment.b(a).notifyDataSetChanged();
    GHSSavedPaymentListFragment.a(a, true);
    paramGHSIGetPaymentsModel = a;
    if (GHSSavedPaymentListFragment.b(a).getCount() == 0) {}
    for (;;)
    {
      GHSSavedPaymentListFragment.b(paramGHSIGetPaymentsModel, bool);
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedPaymentListFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */