package com.grubhub.AppBaseLibrary.android.order.search;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.grubhub.AppBaseLibrary.android.utils.f;

class GHSMenuItemFragment$1
  implements TextWatcher
{
  GHSMenuItemFragment$1(GHSMenuItemFragment paramGHSMenuItemFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (f.c(paramEditable.toString())) {
      GHSMenuItemFragment.a(a, Integer.valueOf(paramEditable.toString()).intValue());
    }
    while (GHSMenuItemFragment.a(a) < 1)
    {
      GHSMenuItemFragment.b(a).setText(String.valueOf(1));
      return;
      GHSMenuItemFragment.a(a, 1);
    }
    if (GHSMenuItemFragment.a(a) > 99)
    {
      GHSMenuItemFragment.b(a).setText(String.valueOf(99));
      return;
    }
    a.e();
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */