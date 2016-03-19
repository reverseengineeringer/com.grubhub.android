package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.app.q;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;

class GHSReviewsFragment$6
  implements com.grubhub.AppBaseLibrary.android.dataServices.net.d
{
  GHSReviewsFragment$6(GHSReviewsFragment paramGHSReviewsFragment, com.grubhub.AppBaseLibrary.android.dataServices.a.d paramd) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    q localq = b.getActivity();
    if (localq != null)
    {
      if (GHSReviewsFragment.f(b) <= 1) {
        break label46;
      }
      GHSReviewsFragment.h(b).a(2131232019, null);
    }
    for (;;)
    {
      GHSReviewsFragment.b(b, false);
      return;
      label46:
      GHSReviewsFragment.a(b).removeFooterView(GHSReviewsFragment.h(b));
      if (paramb.d())
      {
        c.a(localq, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
        {
          public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            a.a();
          }
          
          public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            if (GHSReviewsFragment.i(b) != null) {
              GHSReviewsFragment.i(b).k();
            }
          }
        });
      }
      else
      {
        paramb = GHSReviewsFragment.g(b).getContext().getString(2131231603);
        GHSReviewsFragment.g(b).a(paramb, new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            a.a();
          }
        });
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSReviewsFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */