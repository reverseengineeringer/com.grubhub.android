package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIRestaurantAvailabilityDataModel$GHSIRestaurantAvailabilitySummary
{
  public abstract GHSIAddressDataModel getAddress();
  
  public abstract String getDistanceInMiles();
  
  public abstract String getRestaurantId();
  
  public abstract String getRestaurantName();
  
  public abstract boolean isAvailableForDelivery();
  
  public abstract boolean isOpen();
  
  public abstract boolean isPremium();
  
  public abstract boolean offersDeliveryToDinerLocation();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */