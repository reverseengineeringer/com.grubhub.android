package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import java.util.HashMap;

class GHSRestaurantFragment$19$2
  implements d
{
  GHSRestaurantFragment$19$2(GHSRestaurantFragment.19 param19, com.grubhub.AppBaseLibrary.android.dataServices.a.c.a parama) {}
  
  public void a(b paramb)
  {
    if (GHSRestaurantFragment.l(b.b) < 1)
    {
      GHSRestaurantFragment.m(b.b);
      a.a();
    }
    GHSRestaurantFragment.19.a(b, false);
    GHSRestaurantFragment.a(b.b, true);
    if (GHSRestaurantFragment.j(b.b) != null) {
      GHSRestaurantFragment.j(b.b).y();
    }
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("FAVORITE_ERROR", new HashMap() {});
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.19.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */