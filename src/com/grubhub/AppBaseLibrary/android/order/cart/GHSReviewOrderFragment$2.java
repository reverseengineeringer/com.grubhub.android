package com.grubhub.AppBaseLibrary.android.order.cart;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSReviewOrderFragment$2
  implements d
{
  GHSReviewOrderFragment$2(GHSReviewOrderFragment paramGHSReviewOrderFragment, Context paramContext) {}
  
  public void a(b paramb)
  {
    q localq = b.getActivity();
    if (localq != null)
    {
      if (paramb.d())
      {
        GHSReviewOrderFragment.a(b, m.DEFAULT);
        c.a(a, b.getString(2131231440), paramb.getMessage(), b.getString(2131231717), null, null, null);
      }
    }
    else {
      return;
    }
    if (localq.getString(2131231523).equals(paramb.getMessage()))
    {
      GHSReviewOrderFragment.a(b, m.NO_BALANCE);
      return;
    }
    GHSReviewOrderFragment.a(b, m.INVALID);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */