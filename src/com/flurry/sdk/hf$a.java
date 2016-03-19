package com.flurry.sdk;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

class hf$a
  implements LocationListener
{
  public hf$a(hf paramhf) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    if (paramLocation != null) {
      hf.a(a, paramLocation);
    }
    if (hf.c(a) >= 3)
    {
      ib.a(4, hf.f(), "Max location reports reached, stopping");
      hf.b(a);
    }
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hf.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */