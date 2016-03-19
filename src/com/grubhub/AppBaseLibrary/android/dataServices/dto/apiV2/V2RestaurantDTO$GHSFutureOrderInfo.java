package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIFutureOrderInfo;
import com.grubhub.AppBaseLibrary.android.utils.b;

class V2RestaurantDTO$GHSFutureOrderInfo
  implements GHSIRestaurantDataModel.GHSIFutureOrderInfo
{
  private Boolean open_order_send_time_delivery;
  private Boolean open_order_send_time_pickup;
  private String order_send_time_delivery;
  private String order_send_time_pickup;
  
  public long getOrderSendTimeDelivery()
  {
    return b.a(order_send_time_delivery, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true);
  }
  
  public long getOrderSendTimePickup()
  {
    return b.a(order_send_time_pickup, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true);
  }
  
  public boolean isOpenOrderSendTimeDelivery()
  {
    return (open_order_send_time_delivery != null) && (open_order_send_time_delivery.booleanValue());
  }
  
  public boolean isOpenOrderSendTimePickup()
  {
    return (open_order_send_time_pickup != null) && (open_order_send_time_pickup.booleanValue());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSFutureOrderInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */