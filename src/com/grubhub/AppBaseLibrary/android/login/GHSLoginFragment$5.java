package com.grubhub.AppBaseLibrary.android.login;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

class GHSLoginFragment$5
  implements e<GHSIMessage>
{
  GHSLoginFragment$5(GHSLoginFragment paramGHSLoginFragment) {}
  
  public void a(final GHSIMessage paramGHSIMessage)
  {
    if (paramGHSIMessage == null)
    {
      GHSLoginFragment.o(a).setVisibility(8);
      GHSLoginFragment.p(a);
      return;
    }
    Object localObject = a.getActivity();
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    final String str = paramGHSIMessage.getBody();
    if ((localObject != null) && (paramGHSIMessage.appliesToVersion(com.grubhub.AppBaseLibrary.android.utils.b.a((Context)localObject))) && (!localb.a(paramGHSIMessage.getETag())) && (f.b(str)))
    {
      localObject = paramGHSIMessage.getPositiveButtonText();
      if (f.b((String)localObject))
      {
        localObject = new SpannableString(String.format("%s %s", new Object[] { str, localObject }));
        ((SpannableString)localObject).setSpan(new UnderlineSpan(), str.length() + 1, ((SpannableString)localObject).length(), 33);
        GHSLoginFragment.o(a).setText((CharSequence)localObject);
        label168:
        GHSLoginFragment.o(a).setVisibility(0);
        str = paramGHSIMessage.getUrl();
        if (!f.b(str)) {
          break label257;
        }
        GHSLoginFragment.o(a).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (paramGHSIMessage.isWebView())
            {
              a.startActivity(GHSWebViewActivity.a(a.getActivity(), paramGHSIMessage.getTitle(), str));
              return;
            }
            try
            {
              paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse(str));
              a.startActivity(paramAnonymousView);
              return;
            }
            catch (Exception paramAnonymousView)
            {
              a.b(GHSLoginFragment.a(), paramAnonymousView.getMessage());
            }
          }
        });
      }
      for (;;)
      {
        GHSLoginFragment.p(a);
        if (paramGHSIMessage.isRepeat()) {
          break;
        }
        localb.a(paramGHSIMessage.getETag(), true);
        return;
        GHSLoginFragment.o(a).setText(str);
        break label168;
        label257:
        GHSLoginFragment.o(a).setOnClickListener(null);
      }
    }
    GHSLoginFragment.o(a).setVisibility(8);
    GHSLoginFragment.p(a);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */