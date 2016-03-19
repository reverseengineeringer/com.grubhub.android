package com.grubhub.AppBaseLibrary.android.order.cart;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

class GHSReviewOrderFragment$23
  implements TextWatcher
{
  GHSReviewOrderFragment$23(GHSReviewOrderFragment paramGHSReviewOrderFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    Button localButton = GHSReviewOrderFragment.h(a);
    if (paramEditable.length() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */