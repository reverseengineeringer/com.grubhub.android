package com.grubhub.AppBaseLibrary.android.order.cart;

import android.app.Activity;
import android.content.res.Resources;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSCartFragment$33
  implements d
{
  GHSCartFragment$33(GHSCartFragment paramGHSCartFragment) {}
  
  public void a(b paramb)
  {
    q localq = a.getActivity();
    if (localq != null) {
      c.a(localq, paramb.f(), paramb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
    }
    if ((localq instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)localq).a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment.33
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */