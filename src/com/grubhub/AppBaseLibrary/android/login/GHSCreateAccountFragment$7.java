package com.grubhub.AppBaseLibrary.android.login;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ToggleButton;

class GHSCreateAccountFragment$7
  implements CompoundButton.OnCheckedChangeListener
{
  GHSCreateAccountFragment$7(GHSCreateAccountFragment paramGHSCreateAccountFragment) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    boolean bool = GHSCreateAccountFragment.d(a).hasFocus();
    int i = 0;
    if (bool)
    {
      i = GHSCreateAccountFragment.d(a).getSelectionStart();
      GHSCreateAccountFragment.d(a).setSelection(i);
    }
    if (paramBoolean)
    {
      GHSCreateAccountFragment.e(a).setContentDescription(a.getString(2131231146));
      GHSCreateAccountFragment.d(a).setInputType(145);
    }
    for (;;)
    {
      if (bool) {
        GHSCreateAccountFragment.d(a).setSelection(i);
      }
      return;
      GHSCreateAccountFragment.e(a).setContentDescription(a.getString(2131231152));
      GHSCreateAccountFragment.d(a).setInputType(129);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSCreateAccountFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */