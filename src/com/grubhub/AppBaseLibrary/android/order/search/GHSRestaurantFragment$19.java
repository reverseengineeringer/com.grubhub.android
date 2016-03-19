package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.widget.ImageView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.m;
import com.grubhub.AppBaseLibrary.android.views.n;
import com.grubhub.AppBaseLibrary.android.views.p;
import java.util.HashMap;
import java.util.LinkedHashSet;

class GHSRestaurantFragment$19
  implements p
{
  GHSRestaurantFragment$19(GHSRestaurantFragment paramGHSRestaurantFragment, m paramm) {}
  
  private void a(boolean paramBoolean)
  {
    ImageView localImageView = (ImageView)a.findViewById(2131690283);
    if (paramBoolean)
    {
      localImageView.setSelected(true);
      localImageView.setTag(n.TRUE);
      localImageView.setContentDescription(b.getString(2131231118));
      return;
    }
    localImageView.setSelected(false);
    localImageView.setTag(n.FALSE);
    localImageView.setContentDescription(b.getString(2131231119));
  }
  
  public void a()
  {
    GHSRestaurantDetailsFragment localGHSRestaurantDetailsFragment = GHSRestaurantDetailsFragment.a(GHSRestaurantFragment.e(b), GHSRestaurantFragment.c(b));
    GHSRestaurantFragment.g(b).a().b(2131690040, localGHSRestaurantDetailsFragment, GHSRestaurantDetailsFragment.class.getSimpleName()).a();
  }
  
  public void b()
  {
    GHSCouponFragment localGHSCouponFragment = GHSCouponFragment.a(GHSRestaurantFragment.e(b));
    GHSRestaurantFragment.g(b).a().b(2131690040, localGHSCouponFragment, GHSCouponFragment.class.getSimpleName()).a();
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("coupons", "see coupons list", "coupons_cta"));
  }
  
  public void c()
  {
    b.t();
  }
  
  public void d()
  {
    if (!GHSRestaurantFragment.h(b)) {}
    int i;
    do
    {
      return;
      GHSRestaurantFragment.a(b, 0);
      GHSRestaurantFragment.a(b, false);
      localObject = (ImageView)a.findViewById(2131690283);
      if (((ImageView)localObject).getTag() == null) {
        ((ImageView)localObject).setTag(n.FALSE);
      }
      if (((ImageView)localObject).getTag() != n.FALSE) {
        break;
      }
      i = 1;
      localObject = b.getActivity();
    } while (localObject == null);
    if ((GHSRestaurantFragment.i(b) == null) || (GHSRestaurantFragment.i(b).isEmpty())) {
      GHSRestaurantFragment.a(b, new LinkedHashSet());
    }
    if (i != 0)
    {
      a(true);
      GHSRestaurantFragment.i(b).add(GHSRestaurantFragment.e(b));
      GHSApplication.a().b().a(GHSRestaurantFragment.i(b));
      if (GHSRestaurantFragment.j(b) != null) {
        GHSRestaurantFragment.j(b).y();
      }
      localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.c.a((Context)localObject, GHSRestaurantFragment.k(b), GHSRestaurantFragment.e(b), null, null);
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.a)localObject).a(new e()
      {
        public void a(GHSIFavoriteListDataModel paramAnonymousGHSIFavoriteListDataModel)
        {
          GHSRestaurantFragment.a(b, 0);
          GHSRestaurantFragment.a(b, true);
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.a)localObject).a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          if (GHSRestaurantFragment.l(b) < 1)
          {
            GHSRestaurantFragment.m(b);
            localObject.a();
          }
          GHSRestaurantFragment.19.a(GHSRestaurantFragment.19.this, false);
          GHSRestaurantFragment.a(b, true);
          if (GHSRestaurantFragment.j(b) != null) {
            GHSRestaurantFragment.j(b).y();
          }
          com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("FAVORITE_ERROR", new HashMap() {});
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.a)localObject).a();
    }
    for (final Object localObject = "add to favorites_cta";; localObject = "tap to unfavorite_cta")
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("favorites", (String)localObject, ""));
      return;
      i = 0;
      break;
      a(false);
      GHSRestaurantFragment.i(b).remove(GHSRestaurantFragment.e(b));
      GHSApplication.a().b().a(GHSRestaurantFragment.i(b));
      if (GHSRestaurantFragment.j(b) != null) {
        GHSRestaurantFragment.j(b).y();
      }
      localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.c.c((Context)localObject, GHSRestaurantFragment.k(b), GHSRestaurantFragment.e(b), null, null);
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.c)localObject).a(new e()
      {
        public void a(GHSIFavoriteListDataModel paramAnonymousGHSIFavoriteListDataModel)
        {
          GHSRestaurantFragment.a(b, 0);
          GHSRestaurantFragment.a(b, true);
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.c)localObject).a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          if (GHSRestaurantFragment.l(b) < 1)
          {
            GHSRestaurantFragment.m(b);
            localObject.a();
          }
          GHSRestaurantFragment.19.a(GHSRestaurantFragment.19.this, true);
          GHSRestaurantFragment.a(b, true);
          if (GHSRestaurantFragment.j(b) != null) {
            GHSRestaurantFragment.j(b).y();
          }
          com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("FAVORITE_ERROR", new HashMap() {});
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.c)localObject).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */