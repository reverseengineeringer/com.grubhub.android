package com.grubhub.AppBaseLibrary.android.account;

import android.view.View;
import android.view.View.OnClickListener;

class GHSAddressInfoFragment$28
  implements View.OnClickListener
{
  GHSAddressInfoFragment$28(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public void onClick(View paramView)
  {
    a.d_();
    a.d();
    if (GHSAddressInfoFragment.E(a))
    {
      paramView = GHSAddressInfoFragment.F(a);
      GHSAddressInfoFragment.d(a, paramView);
      return;
    }
    GHSAddressInfoFragment.G(a);
    GHSAddressInfoFragment.a(a, "incomplete fields required");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.28
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */