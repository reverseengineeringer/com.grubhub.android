package com.grubhub.AppBaseLibrary.android.account;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSAddressInfoFragment$25
  implements TextView.OnEditorActionListener
{
  GHSAddressInfoFragment$25(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 6)
    {
      GHSAddressInfoFragment.C(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.25
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */