package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.a.c.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.e.a.a;
import java.util.HashMap;

class GHSRestaurantFragment$19$4
  implements d
{
  GHSRestaurantFragment$19$4(GHSRestaurantFragment.19 param19, c paramc) {}
  
  public void a(b paramb)
  {
    if (GHSRestaurantFragment.l(b.b) < 1)
    {
      GHSRestaurantFragment.m(b.b);
      a.a();
    }
    GHSRestaurantFragment.19.a(b, true);
    GHSRestaurantFragment.a(b.b, true);
    if (GHSRestaurantFragment.j(b.b) != null) {
      GHSRestaurantFragment.j(b.b).y();
    }
    a.a("FAVORITE_ERROR", new HashMap() {});
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.19.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */