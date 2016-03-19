package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;

public class V1CouponListDTO$V1CouponDTO
  implements GHSICouponListDataModel.GHSICouponDataModel
{
  private boolean applied;
  private boolean available;
  private boolean combinable;
  private String description;
  private String id;
  private String minimum;
  private String type;
  
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
    return minimum;
  }
  
  public String getType()
  {
    return type;
  }
  
  public boolean isApplied()
  {
    return applied;
  }
  
  public boolean isAvailable()
  {
    return available;
  }
  
  public boolean isCombinable()
  {
    return combinable;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1CouponListDTO.V1CouponDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */