package com.grubhub.AppBaseLibrary.android.account;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSYourInfoFragment$4
  implements TextView.OnEditorActionListener
{
  GHSYourInfoFragment$4(GHSYourInfoFragment paramGHSYourInfoFragment) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 2)
    {
      GHSYourInfoFragment.c(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSYourInfoFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */