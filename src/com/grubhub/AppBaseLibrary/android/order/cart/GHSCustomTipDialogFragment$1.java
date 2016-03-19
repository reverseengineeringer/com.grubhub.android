package com.grubhub.AppBaseLibrary.android.order.cart;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

class GHSCustomTipDialogFragment$1
  implements TextWatcher
{
  GHSCustomTipDialogFragment$1(GHSCustomTipDialogFragment paramGHSCustomTipDialogFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    paramEditable = paramEditable.toString();
    if (!paramEditable.equals(GHSCustomTipDialogFragment.a(a)))
    {
      GHSCustomTipDialogFragment.b(a).removeTextChangedListener(this);
      String str = paramEditable.replaceAll("[$.]", "");
      paramEditable = str;
      if (str.length() == 0) {
        paramEditable = "0";
      }
      if (paramEditable.length() <= 7) {
        GHSCustomTipDialogFragment.a(a, GHSCustomTipDialogFragment.a(a, paramEditable) / 100.0F);
      }
      paramEditable = GHSCustomTipDialogFragment.b(a, GHSCustomTipDialogFragment.c(a));
      GHSCustomTipDialogFragment.b(a, paramEditable);
      GHSCustomTipDialogFragment.b(a).setText(paramEditable);
      GHSCustomTipDialogFragment.b(a).setSelection(paramEditable.length());
      GHSCustomTipDialogFragment.b(a).addTextChangedListener(this);
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCustomTipDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */