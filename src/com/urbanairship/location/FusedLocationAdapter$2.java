package com.urbanairship.location;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.urbanairship.Logger;
import java.util.concurrent.Semaphore;

class FusedLocationAdapter$2
  implements GoogleApiClient.ConnectionCallbacks
{
  FusedLocationAdapter$2(FusedLocationAdapter paramFusedLocationAdapter, Semaphore paramSemaphore) {}
  
  public void onConnected(Bundle paramBundle)
  {
    Logger.verbose("FusedLocationAdapter - Google Play services connected for fused location.");
    val$semaphore.release();
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    Logger.verbose("FusedLocationAdapter - Google Play services connection suspended for fused location.");
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.FusedLocationAdapter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */