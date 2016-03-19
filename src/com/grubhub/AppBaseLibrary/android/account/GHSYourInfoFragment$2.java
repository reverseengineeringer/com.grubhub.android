package com.grubhub.AppBaseLibrary.android.account;

import android.text.Editable;
import android.text.TextWatcher;

class GHSYourInfoFragment$2
  implements TextWatcher
{
  GHSYourInfoFragment$2(GHSYourInfoFragment paramGHSYourInfoFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    GHSYourInfoFragment.b(a, paramEditable.toString());
    GHSYourInfoFragment.a(a);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSYourInfoFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */