package com.grubhub.AppBaseLibrary.android.login;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSCreateAccountFragment$6
  implements TextView.OnEditorActionListener
{
  GHSCreateAccountFragment$6(GHSCreateAccountFragment paramGHSCreateAccountFragment) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 2)
    {
      GHSCreateAccountFragment.c(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSCreateAccountFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */