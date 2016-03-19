package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import java.util.ArrayList;

class V1FoodMenuDTO$GHSAvailability
{
  private ArrayList<V1FoodMenuDTO.GHSDay> day;
  private ArrayList<V1FoodMenuDTO.GHTimePeriodRef> timePeriodRef;
  
  private ArrayList<V1FoodMenuDTO.GHSDay> getAvailabilityDay()
  {
    return day;
  }
  
  private ArrayList<V1FoodMenuDTO.GHTimePeriodRef> getTimePeriodRef()
  {
    return timePeriodRef;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO.GHSAvailability
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */