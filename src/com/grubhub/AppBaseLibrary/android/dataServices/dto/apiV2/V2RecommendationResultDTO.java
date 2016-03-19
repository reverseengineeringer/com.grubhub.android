package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRecommendationsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRecommendationsModel.GHSIRecommendedRestaurant;
import java.util.ArrayList;

public class V2RecommendationResultDTO
  implements GHSIRecommendationsModel
{
  private ArrayList<V2RecommendationResultDTO.V2RecommendedRestaurant> restaurant_recommendation_list;
  private String search_id;
  
  public ArrayList<GHSIRecommendationsModel.GHSIRecommendedRestaurant> getRestaurantRecommendationList()
  {
    return new ArrayList(restaurant_recommendation_list);
  }
  
  public String getSearchId()
  {
    return search_id;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RecommendationResultDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */