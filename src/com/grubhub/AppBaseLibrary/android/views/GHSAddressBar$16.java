package com.grubhub.AppBaseLibrary.android.views;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import com.grubhub.AppBaseLibrary.android.utils.e.a;

class GHSAddressBar$16
  implements LocationListener
{
  GHSAddressBar$16(GHSAddressBar paramGHSAddressBar) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    a.c(GHSAddressBar.e(), "Location update: " + paramLocation.getLatitude() + ", " + paramLocation.getLongitude());
    GHSAddressBar.b(a, GHSAddressBar.b(a));
    ((c)a.b.getAdapter()).a();
    a.c();
    if (GHSAddressBar.c(a) != null) {
      GHSAddressBar.c(a).a(paramLocation.getLatitude(), paramLocation.getLongitude(), GHSAddressBar.d(a));
    }
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAddressBar.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */