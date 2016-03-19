package com.grubhub.AppBaseLibrary.android.account;

import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

class GHSPaymentInfoFragment$7
  implements CompoundButton.OnCheckedChangeListener
{
  GHSPaymentInfoFragment$7(GHSPaymentInfoFragment paramGHSPaymentInfoFragment) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      GHSPaymentInfoFragment.g(a).setText(2131230831);
      return;
    }
    GHSPaymentInfoFragment.g(a).setText(2131230830);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSPaymentInfoFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */