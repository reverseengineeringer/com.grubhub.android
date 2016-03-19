package com.urbanairship.location;

import java.util.concurrent.TimeUnit;

public class LocationRequestOptions$Builder
{
  private float minDistance = 800.0F;
  private long minTime = 300000L;
  private int priority = 2;
  
  public LocationRequestOptions create()
  {
    return new LocationRequestOptions(this, null);
  }
  
  public Builder setMinDistance(float paramFloat)
  {
    LocationRequestOptions.access$500(paramFloat);
    minDistance = paramFloat;
    return this;
  }
  
  public Builder setMinTime(long paramLong, TimeUnit paramTimeUnit)
  {
    LocationRequestOptions.access$400(paramTimeUnit.toMillis(paramLong));
    minTime = paramTimeUnit.toMillis(paramLong);
    return this;
  }
  
  public Builder setPriority(int paramInt)
  {
    LocationRequestOptions.access$600(paramInt);
    priority = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationRequestOptions.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */