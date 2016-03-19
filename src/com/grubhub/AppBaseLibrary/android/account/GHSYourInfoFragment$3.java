package com.grubhub.AppBaseLibrary.android.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.grubhub.AppBaseLibrary.android.utils.h.a;

class GHSYourInfoFragment$3
  implements TextWatcher
{
  String a = null;
  
  GHSYourInfoFragment$3(GHSYourInfoFragment paramGHSYourInfoFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (paramEditable != null)
    {
      paramEditable = paramEditable.toString();
      GHSYourInfoFragment.c(b, paramEditable);
      if ((!paramEditable.equals(a)) && (a.c(paramEditable)))
      {
        a = a.a(paramEditable);
        if (a != null)
        {
          GHSYourInfoFragment.b(b).setText(a);
          GHSYourInfoFragment.b(b).setSelection(a.length());
          GHSYourInfoFragment.c(b, a);
        }
      }
    }
    GHSYourInfoFragment.a(b);
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSYourInfoFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */