package com.grubhub.AppBaseLibrary.android.address;

import android.text.Editable;
import android.text.TextWatcher;

class GHSAddressValidationDialogFragment$1
  implements TextWatcher
{
  GHSAddressValidationDialogFragment$1(GHSAddressValidationDialogFragment paramGHSAddressValidationDialogFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    GHSAddressValidationDialogFragment.a(a, paramEditable.toString());
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.address.GHSAddressValidationDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */