package com.grubhub.AppBaseLibrary.android.order.receipt;

import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;

class GHSReceiptFragment$1
  implements com.google.android.gms.maps.e
{
  GHSReceiptFragment$1(GHSReceiptFragment paramGHSReceiptFragment, LatLng paramLatLng) {}
  
  public void a(c paramc)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.b.a(a.a, a.b, 16.0F);
    paramc.a(com.google.android.gms.maps.b.a(a, 16.0F));
    paramc.a(new MarkerOptions().a(GHSReceiptFragment.a(b).getRestaurantName()).a(a)).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */