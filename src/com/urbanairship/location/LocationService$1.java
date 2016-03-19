package com.urbanairship.location;

import android.location.Location;
import android.os.Messenger;
import com.urbanairship.Logger;
import com.urbanairship.PendingResult.ResultCallback;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.LocationEvent.UpdateType;

class LocationService$1
  implements PendingResult.ResultCallback<Location>
{
  LocationService$1(LocationService paramLocationService, Messenger paramMessenger, int paramInt, LocationRequestOptions paramLocationRequestOptions) {}
  
  public void onResult(Location paramLocation)
  {
    Logger.verbose("LocationService - Single location received for client: " + val$client + " ID: " + val$requestId);
    Logger.info("Received single location update: " + paramLocation);
    UAirship.shared().getAnalytics().recordLocation(paramLocation, val$options, LocationEvent.UpdateType.SINGLE);
    LocationService.access$000(this$0, val$client, 4, val$requestId, paramLocation);
    LocationService.access$100(this$0, val$client, val$requestId);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */