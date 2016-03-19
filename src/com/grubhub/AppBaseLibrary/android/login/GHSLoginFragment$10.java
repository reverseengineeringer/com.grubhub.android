package com.grubhub.AppBaseLibrary.android.login;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ToggleButton;

class GHSLoginFragment$10
  implements CompoundButton.OnCheckedChangeListener
{
  GHSLoginFragment$10(GHSLoginFragment paramGHSLoginFragment) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    boolean bool = GHSLoginFragment.b(a).hasFocus();
    int i = 0;
    if (bool)
    {
      i = GHSLoginFragment.b(a).getSelectionStart();
      GHSLoginFragment.b(a).setSelection(i);
    }
    if (paramBoolean)
    {
      GHSLoginFragment.g(a).setContentDescription(a.getString(2131231146));
      GHSLoginFragment.b(a).setInputType(145);
    }
    for (;;)
    {
      if (bool) {
        GHSLoginFragment.b(a).setSelection(i);
      }
      return;
      GHSLoginFragment.g(a).setContentDescription(a.getString(2131231152));
      GHSLoginFragment.b(a).setInputType(129);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */