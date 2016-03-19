package com.urbanairship.location;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.urbanairship.Logger;

public class LocationService$IncomingHandler
  extends Handler
{
  public LocationService$IncomingHandler(LocationService paramLocationService, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    Logger.verbose("LocationService - Received message: " + paramMessage);
    switch (what)
    {
    case 3: 
    case 4: 
    default: 
      Logger.error("LocationService - Unexpected message sent to location service: " + paramMessage);
      return;
    case 2: 
      LocationService.access$200(this$0, paramMessage);
      return;
    case 1: 
      LocationService.access$300(this$0, paramMessage);
      return;
    case 5: 
      LocationService.access$400(this$0, paramMessage);
      return;
    case 6: 
      LocationService.access$500(this$0, paramMessage);
      return;
    }
    LocationService.access$600(this$0, (Intent)obj);
    this$0.stopSelf(arg1);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationService.IncomingHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */