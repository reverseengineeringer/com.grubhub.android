package com.grubhub.AppBaseLibrary.android.dataServices.net;

import android.content.Context;
import android.content.Intent;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.order.cart.i;
import com.grubhub.AppBaseLibrary.android.utils.a.a;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Date;

class c$1
  implements e<GHSIUserAuthDataModel>
{
  c$1(c paramc, String paramString, Context paramContext, d paramd) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    if ((f.a(a)) && (!a.a(paramGHSIUserAuthDataModel.getSession(), new Date(), false)))
    {
      i.a();
      paramGHSIUserAuthDataModel = GHSMainActivity.a(b);
      paramGHSIUserAuthDataModel.addFlags(268435456);
      b.startActivity(paramGHSIUserAuthDataModel);
    }
    while (c == null) {
      return;
    }
    c.a(c.a(d));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */