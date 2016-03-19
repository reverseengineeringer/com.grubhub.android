package com.grubhub.AppBaseLibrary.android.views;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSAddressBar$1
  implements TextView.OnEditorActionListener
{
  GHSAddressBar$1(GHSAddressBar paramGHSAddressBar) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 3)
    {
      GHSAddressBar.a(a, false);
      bool = true;
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAddressBar.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */