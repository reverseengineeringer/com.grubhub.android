package com.grubhub.AppBaseLibrary.android.account;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ToggleButton;

class GHSChangePasswordInfoFragment$2
  implements CompoundButton.OnCheckedChangeListener
{
  GHSChangePasswordInfoFragment$2(GHSChangePasswordInfoFragment paramGHSChangePasswordInfoFragment) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    boolean bool1 = GHSChangePasswordInfoFragment.b(a).hasFocus();
    boolean bool2 = GHSChangePasswordInfoFragment.c(a).hasFocus();
    int i = 0;
    if (bool1)
    {
      i = GHSChangePasswordInfoFragment.b(a).getSelectionStart();
      GHSChangePasswordInfoFragment.b(a).setSelection(i);
    }
    label118:
    label197:
    do
    {
      break label118;
      if (paramBoolean)
      {
        GHSChangePasswordInfoFragment.d(a).setContentDescription(a.getString(2131231146));
        GHSChangePasswordInfoFragment.b(a).setInputType(145);
        GHSChangePasswordInfoFragment.c(a).setInputType(145);
      }
      for (;;)
      {
        if (!bool1) {
          break label197;
        }
        GHSChangePasswordInfoFragment.b(a).setSelection(i);
        return;
        if (!bool2) {
          break;
        }
        i = GHSChangePasswordInfoFragment.c(a).getSelectionStart();
        GHSChangePasswordInfoFragment.c(a).setSelection(i);
        break;
        GHSChangePasswordInfoFragment.d(a).setContentDescription(a.getString(2131231152));
        GHSChangePasswordInfoFragment.b(a).setInputType(129);
        GHSChangePasswordInfoFragment.c(a).setInputType(129);
      }
    } while (!bool2);
    GHSChangePasswordInfoFragment.c(a).setSelection(i);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSChangePasswordInfoFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */