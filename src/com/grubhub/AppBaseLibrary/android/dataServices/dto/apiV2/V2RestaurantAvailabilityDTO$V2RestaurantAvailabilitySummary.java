package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;

public class V2RestaurantAvailabilityDTO$V2RestaurantAvailabilitySummary
  implements GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary
{
  private V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary.GHSAddress address;
  private boolean available_for_delivery;
  private Float decimal_distance_in_miles;
  private boolean delivery_offered_to_diner_location;
  private boolean open;
  private boolean premium;
  private String restaurant_id;
  private String restaurant_name;
  
  public GHSIAddressDataModel getAddress()
  {
    if (address == null) {
      return null;
    }
    GHSAddressDataModel localGHSAddressDataModel = new GHSAddressDataModel();
    localGHSAddressDataModel.setAddress1(V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary.GHSAddress.access$000(address));
    localGHSAddressDataModel.setCity(V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary.GHSAddress.access$100(address));
    localGHSAddressDataModel.setState(V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary.GHSAddress.access$200(address));
    localGHSAddressDataModel.setZip(V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary.GHSAddress.access$300(address));
    localGHSAddressDataModel.setCountry(V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary.GHSAddress.access$400(address));
    return localGHSAddressDataModel;
  }
  
  public String getDistanceInMiles()
  {
    if (decimal_distance_in_miles == null) {
      return "";
    }
    return String.format("%.1f", new Object[] { Float.valueOf(decimal_distance_in_miles.floatValue()) });
  }
  
  public String getRestaurantId()
  {
    return restaurant_id;
  }
  
  public String getRestaurantName()
  {
    return restaurant_name;
  }
  
  public boolean isAvailableForDelivery()
  {
    return available_for_delivery;
  }
  
  public boolean isOpen()
  {
    return open;
  }
  
  public boolean isPremium()
  {
    return premium;
  }
  
  public boolean offersDeliveryToDinerLocation()
  {
    return delivery_offered_to_diner_location;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */