package com.grubhub.AppBaseLibrary.android.account;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

class GHSChangePasswordInfoFragment$4
  implements View.OnClickListener
{
  GHSChangePasswordInfoFragment$4(GHSChangePasswordInfoFragment paramGHSChangePasswordInfoFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = GHSWebViewActivity.a(a.getActivity(), 2131230847, String.format("%s%s", new Object[] { a.getResources().getString(2131231611), a.getResources().getString(2131231613) }));
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSChangePasswordInfoFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */