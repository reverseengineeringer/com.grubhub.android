package com.grubhub.AppBaseLibrary.android.account;

import android.support.v4.app.q;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ViewSwitcher;

class GHSAddressInfoFragment$21
  implements View.OnClickListener
{
  GHSAddressInfoFragment$21(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public void onClick(View paramView)
  {
    if (GHSAddressInfoFragment.x(a))
    {
      if (!GHSAddressInfoFragment.y(a).isSelected())
      {
        GHSAddressInfoFragment.v(a);
        GHSAddressInfoFragment.y(a).setSelected(true);
      }
      return;
    }
    GHSAddressInfoFragment.z(a).setDisplayedChild(1);
    GHSAddressInfoFragment.A(a).requestFocus();
    ((InputMethodManager)a.getActivity().getSystemService("input_method")).showSoftInput(GHSAddressInfoFragment.A(a), 1);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */