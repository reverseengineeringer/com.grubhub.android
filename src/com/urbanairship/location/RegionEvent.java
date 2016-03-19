package com.urbanairship.location;

import com.urbanairship.Logger;
import com.urbanairship.analytics.Event;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class RegionEvent
  extends Event
{
  private static final String BOUNDARY_EVENT = "action";
  public static final int BOUNDARY_EVENT_ENTER = 1;
  public static final int BOUNDARY_EVENT_EXIT = 2;
  private static final String CIRCULAR_REGION = "circular_region";
  private static final String CIRCULAR_REGION_RADIUS = "radius";
  private static final String LATITUDE = "latitude";
  private static final String LONGITUDE = "longitude";
  public static final int MAX_CHARACTER_LENGTH = 255;
  public static final double MAX_LATITUDE = 90.0D;
  public static final double MAX_LONGITUDE = 180.0D;
  public static final double MIN_LATITUDE = -90.0D;
  public static final double MIN_LONGITUDE = -180.0D;
  private static final String PROXIMITY_REGION = "proximity";
  private static final String PROXIMITY_REGION_ID = "proximity_id";
  private static final String PROXIMITY_REGION_MAJOR = "major";
  private static final String PROXIMITY_REGION_MINOR = "minor";
  private static final String PROXIMITY_REGION_RSSI = "rssi";
  private static final String REGION_ID = "region_id";
  private static final String SOURCE = "source";
  public static final String TYPE = "region_event";
  private final int boundaryEvent;
  private CircularRegion circularRegion;
  private ProximityRegion proximityRegion;
  private final String regionId;
  private final String source;
  
  public RegionEvent(String paramString1, String paramString2, int paramInt)
  {
    regionId = paramString1;
    source = paramString2;
    boundaryEvent = paramInt;
  }
  
  static boolean regionEventCharacterCountIsValid(String paramString)
  {
    return (paramString.length() <= 255) && (paramString.length() > 0);
  }
  
  static boolean regionEventLatitudeIsValid(Double paramDouble)
  {
    return (paramDouble.doubleValue() <= 90.0D) && (paramDouble.doubleValue() >= -90.0D);
  }
  
  static boolean regionEventLongitudeIsValid(Double paramDouble)
  {
    return (paramDouble.doubleValue() <= 180.0D) && (paramDouble.doubleValue() >= -180.0D);
  }
  
  protected final JSONObject getEventData()
  {
    JSONObject localJSONObject = new JSONObject();
    Object localObject;
    if (!isValid())
    {
      localObject = null;
      return (JSONObject)localObject;
    }
    for (;;)
    {
      try
      {
        localJSONObject.putOpt("region_id", regionId);
        localJSONObject.putOpt("source", source);
        if (boundaryEvent == 1)
        {
          localObject = "enter";
          localJSONObject.putOpt("action", localObject);
          if ((proximityRegion != null) && (proximityRegion.isValid()))
          {
            localObject = new JSONObject();
            ((JSONObject)localObject).putOpt("proximity_id", proximityRegion.getProximityId());
            ((JSONObject)localObject).putOpt("major", Integer.valueOf(proximityRegion.getMajor()));
            ((JSONObject)localObject).putOpt("minor", Integer.valueOf(proximityRegion.getMinor()));
            ((JSONObject)localObject).putOpt("latitude", Double.toString(proximityRegion.getLatitude().doubleValue()));
            ((JSONObject)localObject).putOpt("longitude", Double.toString(proximityRegion.getLongitude().doubleValue()));
            ((JSONObject)localObject).putOpt("rssi", proximityRegion.getRssi());
            localJSONObject.putOpt("proximity", localObject);
          }
          localObject = localJSONObject;
          if (circularRegion == null) {
            break;
          }
          localObject = localJSONObject;
          if (!circularRegion.isValid()) {
            break;
          }
          localObject = new JSONObject();
          ((JSONObject)localObject).putOpt("radius", String.format(Locale.US, "%.1f", new Object[] { Double.valueOf(circularRegion.getRadius()) }));
          ((JSONObject)localObject).putOpt("latitude", String.format(Locale.US, "%.7f", new Object[] { Double.valueOf(circularRegion.getLatitude()) }));
          ((JSONObject)localObject).putOpt("longitude", String.format(Locale.US, "%.7f", new Object[] { Double.valueOf(circularRegion.getLongitude()) }));
          localJSONObject.putOpt("circular_region", localObject);
          return localJSONObject;
        }
      }
      catch (JSONException localJSONException)
      {
        Logger.error("Error constructing JSON data for " + getType());
        return localJSONObject;
      }
      String str = "exit";
    }
  }
  
  public final String getType()
  {
    return "region_event";
  }
  
  public boolean isValid()
  {
    if ((regionId == null) || (source == null))
    {
      Logger.error("The region ID and source must not be null.");
      return false;
    }
    if (!regionEventCharacterCountIsValid(regionId))
    {
      Logger.error("The region ID must not be greater than 255 or less than 1 characters in length.");
      return false;
    }
    if (!regionEventCharacterCountIsValid(source))
    {
      Logger.error("The source must not be greater than 255 or less than 1 characters in length.");
      return false;
    }
    if ((boundaryEvent < 1) || (boundaryEvent > 2))
    {
      Logger.error("The boundary event must either be an entrance (1) or an exit (2).");
      return false;
    }
    return true;
  }
  
  public void setCircularRegion(CircularRegion paramCircularRegion)
  {
    circularRegion = paramCircularRegion;
  }
  
  public void setProximityRegion(ProximityRegion paramProximityRegion)
  {
    proximityRegion = paramProximityRegion;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.RegionEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */