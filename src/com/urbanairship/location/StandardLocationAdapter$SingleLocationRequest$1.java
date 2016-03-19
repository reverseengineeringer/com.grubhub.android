package com.urbanairship.location;

import android.location.Location;
import com.urbanairship.Logger;

class StandardLocationAdapter$SingleLocationRequest$1
  extends StandardLocationAdapter.AndroidLocationListener
{
  StandardLocationAdapter$SingleLocationRequest$1(StandardLocationAdapter.SingleLocationRequest paramSingleLocationRequest, StandardLocationAdapter paramStandardLocationAdapter)
  {
    super(null);
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    StandardLocationAdapter.SingleLocationRequest.access$200(this$1);
    this$1.setResult(paramLocation);
  }
  
  public void onProviderDisabled(String paramString)
  {
    Logger.verbose("StandardLocationAdapter - Provider disabled: " + paramString);
    try
    {
      if (!this$1.isDone()) {
        StandardLocationAdapter.SingleLocationRequest.access$300(this$1);
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.StandardLocationAdapter.SingleLocationRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */