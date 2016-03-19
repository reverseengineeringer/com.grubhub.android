package com.grubhub.AppBaseLibrary.android.address;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSAddressValidationDialogFragment$2
  implements TextView.OnEditorActionListener
{
  GHSAddressValidationDialogFragment$2(GHSAddressValidationDialogFragment paramGHSAddressValidationDialogFragment) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 6)
    {
      GHSAddressValidationDialogFragment.a(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.address.GHSAddressValidationDialogFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */