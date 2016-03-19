package com.grubhub.AppBaseLibrary.android.account;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSPaymentInfoFragment$4
  implements TextView.OnEditorActionListener
{
  GHSPaymentInfoFragment$4(GHSPaymentInfoFragment paramGHSPaymentInfoFragment) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 2)
    {
      GHSPaymentInfoFragment.e(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSPaymentInfoFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */