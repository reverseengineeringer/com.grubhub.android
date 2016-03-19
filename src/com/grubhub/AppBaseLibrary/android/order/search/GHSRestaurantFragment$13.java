package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSRestaurantFragment$13
  implements d
{
  GHSRestaurantFragment$13(GHSRestaurantFragment paramGHSRestaurantFragment, String paramString) {}
  
  public void a(b paramb)
  {
    if (paramb.c() == a.ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS)
    {
      GHSRestaurantFragment.b(b, false);
      GHSRestaurantFragment.a(b, null, a, GHSRestaurantFragment.c(b), true);
      return;
    }
    GHSRestaurantFragment.a(b, paramb.f(), paramb.getLocalizedMessage());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */