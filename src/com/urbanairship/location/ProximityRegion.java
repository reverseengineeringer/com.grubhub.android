package com.urbanairship.location;

import com.urbanairship.Logger;

public class ProximityRegion
{
  private static final int MAX_MAJOR_MINOR_VALUE = 65535;
  private static final int MAX_RSSI = 100;
  private static final int MIN_RSSI = -100;
  private Double latitude;
  private Double longitude;
  private final int major;
  private final int minor;
  private final String proximityId;
  private Integer rssi;
  
  public ProximityRegion(String paramString, int paramInt1, int paramInt2)
  {
    proximityId = paramString;
    major = paramInt1;
    minor = paramInt2;
  }
  
  public Double getLatitude()
  {
    return latitude;
  }
  
  public Double getLongitude()
  {
    return longitude;
  }
  
  public int getMajor()
  {
    return major;
  }
  
  public int getMinor()
  {
    return minor;
  }
  
  public String getProximityId()
  {
    return proximityId;
  }
  
  public Integer getRssi()
  {
    return rssi;
  }
  
  public boolean isValid()
  {
    if (proximityId == null)
    {
      Logger.error("The proximity ID must not be null.");
      return false;
    }
    if (!RegionEvent.regionEventCharacterCountIsValid(proximityId))
    {
      Logger.error("The proximity ID must not be greater than 255 or less than 1 characters in length.");
      return false;
    }
    if ((major > 65535) || (major < 0))
    {
      Logger.error("The major must not be greater than 65535 or less than 0.");
      return false;
    }
    if ((minor > 65535) || (minor < 0))
    {
      Logger.error("The minor must not be greater than 65535 or less than 0.");
      return false;
    }
    return true;
  }
  
  public void setCoordinates(Double paramDouble1, Double paramDouble2)
  {
    if ((paramDouble1 == null) || (paramDouble2 == null))
    {
      latitude = null;
      longitude = null;
      return;
    }
    if (!RegionEvent.regionEventLatitudeIsValid(paramDouble1))
    {
      Logger.error("The latitude must be greater than or equal to -90.0 and less than or equal to 90.0 degrees.");
      latitude = null;
      return;
    }
    if (!RegionEvent.regionEventLongitudeIsValid(paramDouble2))
    {
      Logger.error("The longitude must be greater than or equal to -180.0 and less than or equal to 180.0 degrees.");
      longitude = null;
      return;
    }
    latitude = paramDouble1;
    longitude = paramDouble2;
  }
  
  public void setRssi(Integer paramInteger)
  {
    if (paramInteger == null)
    {
      rssi = null;
      return;
    }
    if ((paramInteger.intValue() > 100) || (paramInteger.intValue() < -100))
    {
      Logger.error("The rssi must be greater than or equal to -100 and less than or equal to 100 dBm.");
      rssi = null;
      return;
    }
    rssi = paramInteger;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.ProximityRegion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */