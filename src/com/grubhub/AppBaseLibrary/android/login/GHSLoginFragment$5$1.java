package com.grubhub.AppBaseLibrary.android.login;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

class GHSLoginFragment$5$1
  implements View.OnClickListener
{
  GHSLoginFragment$5$1(GHSLoginFragment.5 param5, GHSIMessage paramGHSIMessage, String paramString) {}
  
  public void onClick(View paramView)
  {
    if (a.isWebView())
    {
      c.a.startActivity(GHSWebViewActivity.a(c.a.getActivity(), a.getTitle(), b));
      return;
    }
    try
    {
      paramView = new Intent("android.intent.action.VIEW", Uri.parse(b));
      c.a.startActivity(paramView);
      return;
    }
    catch (Exception paramView)
    {
      a.b(GHSLoginFragment.a(), paramView.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment.5.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */