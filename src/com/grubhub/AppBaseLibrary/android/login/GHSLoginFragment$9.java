package com.grubhub.AppBaseLibrary.android.login;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSLoginFragment$9
  implements TextView.OnEditorActionListener
{
  GHSLoginFragment$9(GHSLoginFragment paramGHSLoginFragment) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 2)
    {
      GHSLoginFragment.f(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */