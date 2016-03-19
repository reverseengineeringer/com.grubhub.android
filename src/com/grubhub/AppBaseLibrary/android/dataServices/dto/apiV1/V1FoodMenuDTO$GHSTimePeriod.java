package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

class V1FoodMenuDTO$GHSTimePeriod
{
  private boolean active;
  private V1FoodMenuDTO.GHSAvailability availability;
  private String id;
  private String name;
  
  private V1FoodMenuDTO.GHSAvailability getAvailability()
  {
    return availability;
  }
  
  private String getTimePeriodId()
  {
    return id;
  }
  
  private String getTimePeriodName()
  {
    return name;
  }
  
  private boolean isActive()
  {
    return active;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO.GHSTimePeriod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */