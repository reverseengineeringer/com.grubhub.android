package com.grubhub.AppBaseLibrary.android.views;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSWelcomeScreenAddressBar$1
  implements TextView.OnEditorActionListener
{
  GHSWelcomeScreenAddressBar$1(GHSWelcomeScreenAddressBar paramGHSWelcomeScreenAddressBar) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 3) {
      h.a().a(new c("enter address", "typed full address", ""));
    }
    if (a.f != null) {
      return a.f.onEditorAction(paramTextView, paramInt, paramKeyEvent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSWelcomeScreenAddressBar.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */