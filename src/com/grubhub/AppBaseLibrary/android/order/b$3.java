package com.grubhub.AppBaseLibrary.android.order;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.c;

class b$3
  implements View.OnClickListener
{
  b$3(b paramb, String paramString) {}
  
  public void onClick(View paramView)
  {
    if (GHSApplication.n())
    {
      paramView = "tel: " + a;
      Intent localIntent = new Intent("android.intent.action.DIAL");
      localIntent.setData(Uri.parse(paramView));
      b.a.startActivity(localIntent);
      b.a(b, "call restaurant");
      return;
    }
    c.a(b.a.getActivity(), 2131231322, 2131231321, 0, 0, 2131231717, null);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.b.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */