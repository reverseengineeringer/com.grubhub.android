package com.urbanairship.location;

import com.urbanairship.Logger;

class StandardLocationAdapter$SingleLocationRequest$2
  extends StandardLocationAdapter.AndroidLocationListener
{
  StandardLocationAdapter$SingleLocationRequest$2(StandardLocationAdapter.SingleLocationRequest paramSingleLocationRequest, StandardLocationAdapter paramStandardLocationAdapter, LocationRequestOptions paramLocationRequestOptions)
  {
    super(null);
  }
  
  public void onProviderEnabled(String paramString)
  {
    Logger.verbose("StandardLocationAdapter - Provider enabled: " + paramString);
    try
    {
      if (!this$1.isDone())
      {
        paramString = StandardLocationAdapter.access$500(this$1.this$0, StandardLocationAdapter.SingleLocationRequest.access$400(this$1), val$options);
        if ((paramString != null) && (!paramString.equals(StandardLocationAdapter.SingleLocationRequest.access$600(this$1)))) {
          StandardLocationAdapter.SingleLocationRequest.access$300(this$1);
        }
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.StandardLocationAdapter.SingleLocationRequest.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */