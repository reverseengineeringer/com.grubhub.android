package com.grubhub.AppBaseLibrary.android.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.grubhub.AppBaseLibrary.android.utils.h.a;

class GHSAddressInfoFragment$23
  implements TextWatcher
{
  String a = null;
  
  GHSAddressInfoFragment$23(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (paramEditable != null)
    {
      String str = paramEditable.toString();
      if ((!str.toString().equals(a)) && (a.c(str)))
      {
        a = a.a(paramEditable.toString());
        if (a != null)
        {
          GHSAddressInfoFragment.b(b).setText(a);
          GHSAddressInfoFragment.b(b).setSelection(a.length());
        }
      }
    }
    GHSAddressInfoFragment.a(b);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */