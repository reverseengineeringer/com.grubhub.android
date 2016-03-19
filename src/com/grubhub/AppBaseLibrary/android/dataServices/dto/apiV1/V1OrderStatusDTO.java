package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderStatus;
import java.util.ArrayList;

public class V1OrderStatusDTO
  implements GHSIOrderStatus
{
  private static final String TAG = V1OrderStatusDTO.class.getSimpleName();
  private GHSAddressDataModel address;
  private String customerId;
  private Boolean delivery;
  private String deliveryStatus;
  private String dinerName;
  private String driverName;
  private String email;
  private Long estimateEndTime;
  private Long estimateStartTime;
  private Long expectedDeliveryTimeInMillis;
  private Boolean mapTrackable;
  private ArrayList<String> messages;
  private Long orderCompletionTimeInMillis;
  private V1OrderStatusDTO.OrderEvents orderEvents;
  private String orderId;
  private String orderStatus;
  private ArrayList<Long> recentOrderIds;
  private V1OrderStatusDTO.RestNames restOrderRestNames;
  private String restaurantName;
  private String restaurantPhone;
  private String restaurantTimeZone;
  private String specialInstructions;
  private String statusTrackable;
  private String tip;
  private String tygRestaurant;
  
  public GHSIAddressDataModel getAddress()
  {
    return address;
  }
  
  public String getCustomerId()
  {
    return customerId;
  }
  
  public Boolean getDelivery()
  {
    return delivery;
  }
  
  public String getDeliveryStatus()
  {
    return deliveryStatus;
  }
  
  public String getDinerName()
  {
    return dinerName;
  }
  
  public String getDriverName()
  {
    return driverName;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public Long getEstimateEndTime()
  {
    return estimateEndTime;
  }
  
  public Long getEstimateStartTime()
  {
    return estimateStartTime;
  }
  
  public Long getExpectedDeliveryTimeInMillis()
  {
    return expectedDeliveryTimeInMillis;
  }
  
  public Boolean getMapTrackable()
  {
    return mapTrackable;
  }
  
  public ArrayList<String> getMessages()
  {
    return messages;
  }
  
  public Long getOrderCompletionTimeInMillis()
  {
    return orderCompletionTimeInMillis;
  }
  
  public ArrayList<V1OrderStatusDTO.OrderEvent> getOrderEvents()
  {
    return V1OrderStatusDTO.OrderEvents.access$100(orderEvents);
  }
  
  public String getOrderId()
  {
    return orderId;
  }
  
  public String getOrderStatus()
  {
    return orderStatus;
  }
  
  public ArrayList<Long> getRecentOrderIds()
  {
    return recentOrderIds;
  }
  
  public String getRestaurantName()
  {
    return restaurantName;
  }
  
  public String getRestaurantPhone()
  {
    return restaurantPhone;
  }
  
  public String getRestaurantTimeZone()
  {
    return restaurantTimeZone;
  }
  
  public String getSpecialInstructions()
  {
    return specialInstructions;
  }
  
  public String getStatusTrackable()
  {
    return statusTrackable;
  }
  
  public String getTip()
  {
    return tip;
  }
  
  public String getTygRestaurant()
  {
    return tygRestaurant;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1OrderStatusDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */