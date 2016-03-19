package com.grubhub.AppBaseLibrary.android.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

class GHSPaymentInfoFragment$2
  implements TextWatcher
{
  GHSPaymentInfoFragment$2(GHSPaymentInfoFragment paramGHSPaymentInfoFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    GHSPaymentInfoFragment.a(a);
    if (GHSPaymentInfoFragment.b(a).hasFocus()) {
      GHSPaymentInfoFragment.a(a, paramEditable.toString());
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSPaymentInfoFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */