package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeoInfo;

public class V2DeliveryLookupDTO$GHSLocation
  implements GHSIGeoInfo
{
  private float lat;
  private float lng;
  
  public String getLatitude()
  {
    return String.valueOf(lat);
  }
  
  public String getLongitude()
  {
    return String.valueOf(lng);
  }
  
  public void setLatitude(String paramString) {}
  
  public void setLongitude(String paramString) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2DeliveryLookupDTO.GHSLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */