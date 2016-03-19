package com.grubhub.AppBaseLibrary.android.account;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class l$3$3
  implements e<GHSIDeletedPaymentModel>
{
  l$3$3(l.3 param3) {}
  
  public void a(GHSIDeletedPaymentModel paramGHSIDeletedPaymentModel)
  {
    if (GHSSavedPaymentListFragment.b(a.a.a) != null)
    {
      GHSSavedPaymentListFragment.a(a.a.a, "successful");
      l.c(a.a);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.l.3.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */