package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

public class GHSReorderDataModel
{
  private GHSIAddressDataModel addressDataModel;
  private boolean isPickup;
  private String orderId;
  private String restaurantId = "";
  
  public GHSIAddressDataModel getAddressDataModel()
  {
    return addressDataModel;
  }
  
  public boolean getIsPickup()
  {
    return isPickup;
  }
  
  public String getOrderId()
  {
    return orderId;
  }
  
  public String getRestaurantId()
  {
    return restaurantId;
  }
  
  public void setAddressDataModel(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    addressDataModel = paramGHSIAddressDataModel;
  }
  
  public void setIsPickup(boolean paramBoolean)
  {
    isPickup = paramBoolean;
  }
  
  public void setOrderId(String paramString)
  {
    orderId = paramString;
  }
  
  public void setRestaurantId(String paramString)
  {
    restaurantId = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSReorderDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */