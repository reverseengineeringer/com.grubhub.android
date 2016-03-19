package com.grubhub.AppBaseLibrary.android.account;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

class GHSAddressInfoFragment$19
  implements View.OnClickListener
{
  GHSAddressInfoFragment$19(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public void onClick(View paramView)
  {
    if (!GHSAddressInfoFragment.u(a).isSelected())
    {
      GHSAddressInfoFragment.v(a);
      GHSAddressInfoFragment.u(a).setSelected(true);
    }
    GHSAddressInfoFragment.a(a);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */