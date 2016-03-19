package com.grubhub.AppBaseLibrary.android.account;

import android.support.v4.app.q;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.ViewSwitcher;

class GHSAddressInfoFragment$22
  implements View.OnClickListener
{
  GHSAddressInfoFragment$22(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public void onClick(View paramView)
  {
    GHSAddressInfoFragment.A(a).setText(GHSAddressInfoFragment.B(a).getText().toString());
    GHSAddressInfoFragment.A(a).setSelection(GHSAddressInfoFragment.A(a).getText().toString().length());
    GHSAddressInfoFragment.z(a).setDisplayedChild(1);
    GHSAddressInfoFragment.A(a).requestFocus();
    ((InputMethodManager)a.getActivity().getSystemService("input_method")).showSoftInput(GHSAddressInfoFragment.A(a), 1);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */