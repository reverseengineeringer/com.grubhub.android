package com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders;

import android.os.Parcelable;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;

public abstract interface GHSIPastOrderDataModel
  extends Parcelable
{
  public abstract String getDinerEmail();
  
  public abstract String getDinerGrandTotal();
  
  public abstract String getDinerName();
  
  public abstract String getDinerPhone();
  
  public abstract String getFoodItemsCommaSeparated();
  
  public abstract String getOrderId();
  
  public abstract String getOrderNumber();
  
  public abstract String getOrderState();
  
  public abstract g getOrderType();
  
  public abstract ArrayList<GHSIPastOrderDataModel.GHSIPastOrderItem> getPastOrderItemList();
  
  public abstract String getRestaurantId();
  
  public abstract String getRestaurantLatitude();
  
  public abstract String getRestaurantLogoURL();
  
  public abstract String getRestaurantLongitude();
  
  public abstract String getRestaurantName();
  
  public abstract long getTimePlacedMillis();
  
  public abstract String getTimePlacedString();
  
  public abstract boolean hasOrderItems();
  
  public abstract boolean isOrderTrackingEnabled();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */