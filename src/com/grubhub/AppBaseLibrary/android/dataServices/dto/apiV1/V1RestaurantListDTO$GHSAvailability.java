package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

class V1RestaurantListDTO$GHSAvailability
{
  public static final String GHSAVAILABILITY_MESSAGE_DELIVERY_AND_PICKUP = "Delivery and Pickup";
  private String message;
  private boolean onlineCash;
  private boolean onlineCredit;
  private boolean open;
  
  private V1RestaurantListDTO$GHSAvailability(V1RestaurantListDTO paramV1RestaurantListDTO) {}
  
  public String getAvailabilityMessage()
  {
    return message;
  }
  
  public boolean isOpen()
  {
    return open;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1RestaurantListDTO.GHSAvailability
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */