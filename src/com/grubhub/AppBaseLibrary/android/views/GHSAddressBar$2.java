package com.grubhub.AppBaseLibrary.android.views;

import android.text.Editable;
import android.text.TextWatcher;

class GHSAddressBar$2
  implements TextWatcher
{
  GHSAddressBar$2(GHSAddressBar paramGHSAddressBar) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    GHSAddressBar localGHSAddressBar = a;
    if ((GHSAddressBar.f(a)) && (paramEditable.length() > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      GHSAddressBar.b(localGHSAddressBar, bool);
      return;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAddressBar.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */