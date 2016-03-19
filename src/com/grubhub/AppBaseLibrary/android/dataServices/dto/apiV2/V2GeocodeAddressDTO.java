package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeocodeAddressDataModel;
import java.util.ArrayList;

public class V2GeocodeAddressDTO
  implements GHSIGeocodeAddressDataModel
{
  private static final String TYPE_STREET_ADDRESS = "street_address";
  private String address_country;
  private String address_locality;
  private String address_region;
  private String address_sublocality;
  private String establishment;
  private double latitude;
  private double longitude;
  private String neighborhood;
  private Float pickup_radius;
  private String postal_code;
  private String street_address1;
  private String street_address2;
  private ArrayList<String> types;
  
  public String getAddress1()
  {
    return street_address1;
  }
  
  public String getAddress2()
  {
    return street_address2;
  }
  
  public String getCity()
  {
    if (address_locality != null) {
      return address_locality;
    }
    if (address_sublocality != null) {
      return address_sublocality;
    }
    return null;
  }
  
  public String getCountry()
  {
    return address_country;
  }
  
  public String getEstablishment()
  {
    return establishment;
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public String getNeighborhood()
  {
    return neighborhood;
  }
  
  public Float getPickupRadius()
  {
    return pickup_radius;
  }
  
  public String getState()
  {
    return address_region;
  }
  
  public String getZip()
  {
    return postal_code;
  }
  
  public boolean isPrecise()
  {
    return (types != null) && (types.contains("street_address"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2GeocodeAddressDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */