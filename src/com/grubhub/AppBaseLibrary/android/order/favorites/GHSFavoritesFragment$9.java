package com.grubhub.AppBaseLibrary.android.order.favorites;

import android.content.DialogInterface;
import android.support.v4.app.q;
import android.support.v4.widget.SwipeRefreshLayout;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSFavoritesFragment$9
  implements d
{
  GHSFavoritesFragment$9(GHSFavoritesFragment paramGHSFavoritesFragment, com.grubhub.AppBaseLibrary.android.dataServices.a.c.b paramb) {}
  
  public void a(final com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    q localq = b.getActivity();
    if (localq != null)
    {
      GHSFavoritesFragment.b(b, GHSApplication.a().b().ad());
      b.b();
      if (GHSFavoritesFragment.d(b) == null)
      {
        c.a(localq, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
        {
          public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            if (paramb.d()) {
              a.a();
            }
          }
        });
        GHSFavoritesFragment.f(b).a(GHSFavoritesFragment.h(b), null);
      }
      GHSFavoritesFragment.e(b).setRefreshing(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.favorites.GHSFavoritesFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */