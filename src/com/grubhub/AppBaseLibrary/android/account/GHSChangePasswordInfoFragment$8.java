package com.grubhub.AppBaseLibrary.android.account;

import android.widget.EditText;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSChangePasswordInfoFragment$8
  implements d
{
  GHSChangePasswordInfoFragment$8(GHSChangePasswordInfoFragment paramGHSChangePasswordInfoFragment) {}
  
  public void a(b paramb)
  {
    GHSChangePasswordInfoFragment.b(a).setText(null);
    GHSChangePasswordInfoFragment.c(a).setText(null);
    a.a(paramb.getMessage(), true);
    GHSChangePasswordInfoFragment.a(a, "error");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSChangePasswordInfoFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */