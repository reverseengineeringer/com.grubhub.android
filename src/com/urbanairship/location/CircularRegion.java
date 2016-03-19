package com.urbanairship.location;

import com.urbanairship.Logger;

public class CircularRegion
{
  public static final int MAX_RADIUS = 100000;
  private final double latitude;
  private final double longitude;
  private final double radius;
  
  public CircularRegion(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    radius = paramDouble1;
    latitude = paramDouble2;
    longitude = paramDouble3;
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public double getRadius()
  {
    return radius;
  }
  
  public boolean isValid()
  {
    if ((radius > 100000.0D) || (radius <= 0.0D))
    {
      Logger.error("The radius must be greater than 0 and less than or equal to 100000 meters.");
      return false;
    }
    if (!RegionEvent.regionEventLatitudeIsValid(Double.valueOf(latitude)))
    {
      Logger.error("The latitude must be greater than or equal to -90.0 and less than or equal to 90.0 degrees.");
      return false;
    }
    if (!RegionEvent.regionEventLongitudeIsValid(Double.valueOf(longitude)))
    {
      Logger.error("The longitude must be greater than or equal to -180.0 and less than or equal to 180.0 degrees.");
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.CircularRegion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */