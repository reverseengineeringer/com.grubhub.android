package com.grubhub.AppBaseLibrary.android.account;

import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class l$3$4
  implements d
{
  l$3$4(l.3 param3) {}
  
  public void a(b paramb)
  {
    ((GHSBaseActivity)a.a.a.getActivity()).a(false);
    c.a(a.a.a.getActivity(), paramb.f(), paramb.getLocalizedMessage(), a.a.a.getString(2131231717), null, null, null);
    GHSSavedPaymentListFragment.a(a.a.a, "error");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.l.3.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */