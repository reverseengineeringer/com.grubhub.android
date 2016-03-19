package com.grubhub.AppBaseLibrary.android.login;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.grubhub.AppBaseLibrary.android.utils.g;

class GHSLoginFragment$7
  implements TextWatcher
{
  GHSLoginFragment$7(GHSLoginFragment paramGHSLoginFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if ((g.a(GHSLoginFragment.a(a).getText().toString())) && (g.b(GHSLoginFragment.b(a).getText().toString()))) {}
    for (boolean bool = true;; bool = false)
    {
      GHSLoginFragment.c(a).setEnabled(bool);
      return;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */