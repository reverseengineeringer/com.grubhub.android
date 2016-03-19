package com.grubhub.AppBaseLibrary.android.account;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;

class GHSAddressInfoFragment$18
  implements TextWatcher
{
  GHSAddressInfoFragment$18(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    GHSAddressInfoFragment.t(a).setText(String.valueOf(GHSAddressInfoFragment.h(a).getText().length()) + a.getResources().getString(2131230901));
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */