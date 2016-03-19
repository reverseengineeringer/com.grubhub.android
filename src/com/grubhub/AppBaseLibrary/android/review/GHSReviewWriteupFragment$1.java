package com.grubhub.AppBaseLibrary.android.review;

import android.text.Editable;
import android.text.TextWatcher;

class GHSReviewWriteupFragment$1
  implements TextWatcher
{
  GHSReviewWriteupFragment$1(GHSReviewWriteupFragment paramGHSReviewWriteupFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    GHSReviewWriteupFragment.a(a, paramEditable.toString());
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewWriteupFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */