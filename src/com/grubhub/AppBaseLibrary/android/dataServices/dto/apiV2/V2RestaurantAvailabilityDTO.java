package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import java.util.ArrayList;
import java.util.Iterator;

public class V2RestaurantAvailabilityDTO
  implements GHSIRestaurantAvailabilityDataModel
{
  private ArrayList<V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary> availability_summaries;
  
  public GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary getSummary(String paramString)
  {
    if ((availability_summaries != null) && (paramString != null))
    {
      Iterator localIterator = availability_summaries.iterator();
      while (localIterator.hasNext())
      {
        V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary localV2RestaurantAvailabilitySummary = (V2RestaurantAvailabilityDTO.V2RestaurantAvailabilitySummary)localIterator.next();
        if ((localV2RestaurantAvailabilitySummary != null) && (paramString.equals(localV2RestaurantAvailabilitySummary.getRestaurantId()))) {
          return localV2RestaurantAvailabilitySummary;
        }
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantAvailabilityDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */