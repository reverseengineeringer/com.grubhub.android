package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

class GHSSearchFragment$12
  implements e<GHSIMessage>
{
  GHSSearchFragment$12(GHSSearchFragment paramGHSSearchFragment, com.grubhub.AppBaseLibrary.android.dataServices.b.b paramb) {}
  
  public void a(final GHSIMessage paramGHSIMessage)
  {
    if (paramGHSIMessage == null) {}
    q localq;
    String str;
    do
    {
      return;
      localq = b.getActivity();
      str = paramGHSIMessage.getBody();
    } while ((localq == null) || (!paramGHSIMessage.appliesToVersion(com.grubhub.AppBaseLibrary.android.utils.b.a(localq))) || (a.a(paramGHSIMessage.getETag())) || (!f.b(str)));
    c.a(localq, paramGHSIMessage.getTitle(), paramGHSIMessage.getBody(), paramGHSIMessage.getPositiveButtonText(), paramGHSIMessage.getNegativeButtonText(), null, new com.grubhub.AppBaseLibrary.android.b()
    {
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = paramGHSIMessage.getUrl();
        if (f.b(paramAnonymousDialogInterface))
        {
          if (!paramGHSIMessage.isWebView()) {
            break label97;
          }
          b.startActivity(GHSWebViewActivity.a(b.getActivity(), paramGHSIMessage.getTitle(), paramAnonymousDialogInterface));
        }
        for (;;)
        {
          if (!paramGHSIMessage.isRepeat()) {
            a.a(paramGHSIMessage.getETag(), true);
          }
          return;
          try
          {
            label97:
            paramAnonymousDialogInterface = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousDialogInterface));
            b.startActivity(paramAnonymousDialogInterface);
          }
          catch (Exception paramAnonymousDialogInterface)
          {
            a.b(GHSSearchFragment.s(), paramAnonymousDialogInterface.getMessage());
          }
        }
      }
      
      public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (!paramGHSIMessage.isRepeat()) {
          a.a(paramGHSIMessage.getETag(), true);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */