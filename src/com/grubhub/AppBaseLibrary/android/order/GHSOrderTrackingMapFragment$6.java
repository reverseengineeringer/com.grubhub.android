package com.grubhub.AppBaseLibrary.android.order;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.e;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.d;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeoInfo;

class GHSOrderTrackingMapFragment$6
  implements e
{
  GHSOrderTrackingMapFragment$6(GHSOrderTrackingMapFragment paramGHSOrderTrackingMapFragment, GHSIGeoInfo paramGHSIGeoInfo1, GHSIGeoInfo paramGHSIGeoInfo2, GHSIGeoInfo paramGHSIGeoInfo3, String paramString) {}
  
  public void a(c paramc)
  {
    LatLng localLatLng = new LatLng(Double.valueOf(a.getLatitude()).doubleValue(), Double.valueOf(a.getLongitude()).doubleValue());
    d locald = new d();
    locald.a(localLatLng);
    com.grubhub.AppBaseLibrary.android.utils.e.b.a(a, b, 0.0F);
    paramc.a(new MarkerOptions().a(localLatLng).a(com.google.android.gms.maps.model.b.a(2130837825)));
    if ((b != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(b.getLatitude())) && (com.grubhub.AppBaseLibrary.android.utils.f.b(b.getLongitude())))
    {
      localLatLng = new LatLng(Double.valueOf(b.getLatitude()).doubleValue(), Double.valueOf(b.getLongitude()).doubleValue());
      locald.a(localLatLng);
      com.grubhub.AppBaseLibrary.android.utils.e.b.a(a, b, 0.0F);
      paramc.a(new MarkerOptions().a(localLatLng).a(com.google.android.gms.maps.model.b.a(2130837838)));
    }
    int i;
    if ((c != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(c.getLatitude())) && (com.grubhub.AppBaseLibrary.android.utils.f.b(c.getLongitude())))
    {
      localLatLng = new LatLng(Double.valueOf(c.getLatitude()).doubleValue(), Double.valueOf(c.getLongitude()).doubleValue());
      locald.a(localLatLng);
      com.grubhub.AppBaseLibrary.android.utils.e.b.a(a, b, 0.0F);
      int j = 2130837792;
      f localf = f.fromString(d);
      i = j;
      if (localf != null)
      {
        i = j;
        if (localf != f.WALKING) {
          switch (GHSOrderTrackingMapFragment.7.b[localf.ordinal()])
          {
          default: 
            i = j;
          }
        }
      }
    }
    for (;;)
    {
      paramc.a(new MarkerOptions().a(localLatLng).a(com.google.android.gms.maps.model.b.a(i)));
      i = e.getResources().getDisplayMetrics().widthPixels;
      paramc.a(com.google.android.gms.maps.b.a(locald.a(), (int)(i * 0.15D)));
      return;
      i = 2130837790;
      continue;
      i = 2130837789;
      continue;
      i = 2130837791;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOrderTrackingMapFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */