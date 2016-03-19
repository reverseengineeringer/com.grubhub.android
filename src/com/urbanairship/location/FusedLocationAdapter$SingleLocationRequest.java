package com.urbanairship.location;

import android.location.Location;
import android.os.Looper;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.urbanairship.Logger;

class FusedLocationAdapter$SingleLocationRequest
  extends PendingLocationResult
{
  private final LocationListener fusedLocationListener;
  private final LocationRequest locationRequest;
  
  FusedLocationAdapter$SingleLocationRequest(final FusedLocationAdapter paramFusedLocationAdapter, LocationRequestOptions paramLocationRequestOptions)
  {
    locationRequest = FusedLocationAdapter.access$000(paramFusedLocationAdapter, paramLocationRequestOptions);
    locationRequest.setNumUpdates(1);
    fusedLocationListener = new LocationListener()
    {
      public void onLocationChanged(Location paramAnonymousLocation)
      {
        setResult(paramAnonymousLocation);
      }
    };
    Logger.verbose("FusedLocationAdapter - Starting single location request.");
    LocationServices.FusedLocationApi.requestLocationUpdates(FusedLocationAdapter.access$100(paramFusedLocationAdapter), locationRequest, fusedLocationListener, Looper.myLooper());
  }
  
  protected void onCancel()
  {
    Logger.verbose("FusedLocationAdapter - Canceling single location request.");
    LocationServices.FusedLocationApi.removeLocationUpdates(FusedLocationAdapter.access$100(this$0), fusedLocationListener);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.FusedLocationAdapter.SingleLocationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */