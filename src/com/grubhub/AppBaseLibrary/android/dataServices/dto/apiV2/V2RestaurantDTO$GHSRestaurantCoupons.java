package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;

class V2RestaurantDTO$GHSRestaurantCoupons
  implements GHSICouponListDataModel.GHSICouponDataModel
{
  private GHSAmount amount;
  private boolean combinable;
  private String description;
  private String id;
  private GHSAmount minimum_cart_total;
  private Integer sequence;
  
  public String getDescription()
  {
    return description;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getMinimum()
  {
    if ((minimum_cart_total != null) && (minimum_cart_total.getAmount() != null)) {
      return String.valueOf(minimum_cart_total.getAmount());
    }
    return null;
  }
  
  public String getType()
  {
    return null;
  }
  
  public boolean isApplied()
  {
    return false;
  }
  
  public boolean isAvailable()
  {
    return false;
  }
  
  public boolean isCombinable()
  {
    return combinable;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSRestaurantCoupons
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */