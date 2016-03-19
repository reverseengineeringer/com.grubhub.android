package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

class GHSSearchFragment$12$1
  extends com.grubhub.AppBaseLibrary.android.b
{
  GHSSearchFragment$12$1(GHSSearchFragment.12 param12, GHSIMessage paramGHSIMessage) {}
  
  public void a(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.getUrl();
    if (f.b(paramDialogInterface))
    {
      if (!a.isWebView()) {
        break label97;
      }
      b.b.startActivity(GHSWebViewActivity.a(b.b.getActivity(), a.getTitle(), paramDialogInterface));
    }
    for (;;)
    {
      if (!a.isRepeat()) {
        b.a.a(a.getETag(), true);
      }
      return;
      try
      {
        label97:
        paramDialogInterface = new Intent("android.intent.action.VIEW", Uri.parse(paramDialogInterface));
        b.b.startActivity(paramDialogInterface);
      }
      catch (Exception paramDialogInterface)
      {
        a.b(GHSSearchFragment.s(), paramDialogInterface.getMessage());
      }
    }
  }
  
  public void b(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!a.isRepeat()) {
      b.a.a(a.getETag(), true);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.12.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */