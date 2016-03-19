package com.grubhub.AppBaseLibrary.android.login;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

class GHSLoginFragment$12
  implements View.OnClickListener
{
  GHSLoginFragment$12(GHSLoginFragment paramGHSLoginFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = GHSWebViewActivity.a(a.getActivity(), 2131230847, String.format("%s%s", new Object[] { a.getResources().getString(2131231611), a.getResources().getString(2131231613) }));
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */