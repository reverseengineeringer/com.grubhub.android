package com.grubhub.AppBaseLibrary.android.account;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;

class GHSPaymentInfoFragment$3
  implements View.OnFocusChangeListener
{
  GHSPaymentInfoFragment$3(GHSPaymentInfoFragment paramGHSPaymentInfoFragment) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      GHSPaymentInfoFragment.b(a).setText(GHSPaymentInfoFragment.c(a));
      return;
    }
    GHSPaymentInfoFragment.a(a, GHSPaymentInfoFragment.b(a).getText().toString());
    GHSPaymentInfoFragment.b(a).setText(GHSPaymentInfoFragment.d(a));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSPaymentInfoFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */