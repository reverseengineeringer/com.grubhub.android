package com.grubhub.AppBaseLibrary.android.order.search;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSMenuItemFragment$14
  implements d
{
  GHSMenuItemFragment$14(GHSMenuItemFragment paramGHSMenuItemFragment, Context paramContext) {}
  
  public void a(b paramb)
  {
    q localq = b.getActivity();
    if (localq != null)
    {
      c.a(a, paramb.f(), paramb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
      GHSMenuItemFragment.u(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */