package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIDeliveryDataModel
{
  public abstract String getAccountId();
  
  public abstract ArrayList<String> getContents();
  
  public abstract String getCourierFirstName();
  
  public abstract GHSIGeoInfo getCourierLocation();
  
  public abstract String getCourierPhoneNumber();
  
  public abstract String getCourierPhoto();
  
  public abstract String getCourierVehicleType();
  
  public abstract String getCreatedTime();
  
  public abstract String getDeliveryId();
  
  public abstract String getDinerName();
  
  public abstract GHSIAddressDataModel getDropoffAddress();
  
  public abstract GHSIGeoInfo getDropoffLocation();
  
  public abstract String getDropoffNotes();
  
  public abstract String getDropoffPhoneNumber();
  
  public abstract String getDropoffTime();
  
  public abstract String getDropoffTimeRange();
  
  public abstract String getOrderId();
  
  public abstract GHSIAddressDataModel getPickupAddress();
  
  public abstract GHSIGeoInfo getPickupLocation();
  
  public abstract String getPickupNotes();
  
  public abstract String getPickupPhoneNumber();
  
  public abstract String getPickupTime();
  
  public abstract String getRestaurantName();
  
  public abstract String getStatus();
  
  public abstract boolean isDropoffTimeEstimate();
  
  public abstract boolean isPickupTimeEstimate();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */