package com.grubhub.AppBaseLibrary.android.login;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

class GHSCreateAccountFragment$9
  implements View.OnClickListener
{
  GHSCreateAccountFragment$9(GHSCreateAccountFragment paramGHSCreateAccountFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = GHSWebViewActivity.a(a.getActivity(), 2131230874, String.format("%s%s", new Object[] { a.getResources().getString(2131231611), a.getResources().getString(2131231615) }));
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSCreateAccountFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */