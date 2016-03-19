package com.urbanairship.location;

import android.location.Location;
import com.google.android.gms.location.LocationListener;

class FusedLocationAdapter$SingleLocationRequest$1
  implements LocationListener
{
  FusedLocationAdapter$SingleLocationRequest$1(FusedLocationAdapter.SingleLocationRequest paramSingleLocationRequest, FusedLocationAdapter paramFusedLocationAdapter) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    this$1.setResult(paramLocation);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.FusedLocationAdapter.SingleLocationRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */