package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1OrderStatusDTO.OrderEvent;
import java.util.ArrayList;

public abstract interface GHSIOrderStatus
{
  public abstract GHSIAddressDataModel getAddress();
  
  public abstract String getCustomerId();
  
  public abstract Boolean getDelivery();
  
  public abstract String getDeliveryStatus();
  
  public abstract String getDinerName();
  
  public abstract String getDriverName();
  
  public abstract String getEmail();
  
  public abstract Long getEstimateEndTime();
  
  public abstract Long getEstimateStartTime();
  
  public abstract Long getExpectedDeliveryTimeInMillis();
  
  public abstract Boolean getMapTrackable();
  
  public abstract ArrayList<String> getMessages();
  
  public abstract Long getOrderCompletionTimeInMillis();
  
  public abstract ArrayList<V1OrderStatusDTO.OrderEvent> getOrderEvents();
  
  public abstract String getOrderId();
  
  public abstract String getOrderStatus();
  
  public abstract ArrayList<Long> getRecentOrderIds();
  
  public abstract String getRestaurantName();
  
  public abstract String getRestaurantPhone();
  
  public abstract String getRestaurantTimeZone();
  
  public abstract String getSpecialInstructions();
  
  public abstract String getStatusTrackable();
  
  public abstract String getTip();
  
  public abstract String getTygRestaurant();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */