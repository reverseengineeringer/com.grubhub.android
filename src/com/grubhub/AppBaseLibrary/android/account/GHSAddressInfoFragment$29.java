package com.grubhub.AppBaseLibrary.android.account;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class GHSAddressInfoFragment$29
  implements AdapterView.OnItemSelectedListener
{
  GHSAddressInfoFragment$29(GHSAddressInfoFragment paramGHSAddressInfoFragment) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((GHSAddressInfoFragment.c(a)) && (GHSAddressInfoFragment.d(a) != paramInt))
    {
      GHSAddressInfoFragment.a(a, true);
      return;
    }
    GHSAddressInfoFragment.b(a, true);
    GHSAddressInfoFragment.a(a, paramInt);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment.29
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */