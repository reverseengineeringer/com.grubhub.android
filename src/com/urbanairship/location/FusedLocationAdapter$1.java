package com.urbanairship.location;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.urbanairship.Logger;
import java.util.concurrent.Semaphore;

class FusedLocationAdapter$1
  implements GoogleApiClient.OnConnectionFailedListener
{
  FusedLocationAdapter$1(FusedLocationAdapter paramFusedLocationAdapter, Semaphore paramSemaphore) {}
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    Logger.verbose("FusedLocationAdapter - Google Play services failed to connect for fused location.");
    val$semaphore.release();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.FusedLocationAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */