package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import java.util.Locale;

class GHSReviewOrderFragment$12
  implements TextWatcher
{
  GHSReviewOrderFragment$12(GHSReviewOrderFragment paramGHSReviewOrderFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    GHSReviewOrderFragment.g(a).setText(String.format(Locale.US, paramEditable.length() + "/" + a.getResources().getInteger(2131492876), new Object[0]));
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */