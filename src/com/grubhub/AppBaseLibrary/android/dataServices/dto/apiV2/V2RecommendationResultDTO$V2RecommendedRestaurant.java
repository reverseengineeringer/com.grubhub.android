package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRecommendationsModel.GHSIRecommendedRestaurant;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRecommendationsModel.GHSIRecommendedRestaurant.GHSIRecommendedRestaurantAddress;
import java.util.ArrayList;

class V2RecommendationResultDTO$V2RecommendedRestaurant
  implements GHSIRecommendationsModel.GHSIRecommendedRestaurant
{
  private V2RecommendationResultDTO.V2RecommendedRestaurant.V2RecommendedRestaurantAddress address;
  private Double bayesian_rating10_point;
  private ArrayList<String> cuisines;
  private GHSAmount delivery_fee;
  private GHSAmount delivery_minimum;
  private Integer delivery_time_estimate;
  private String logo;
  private String name;
  private Integer pickup_time_estimate;
  private Integer price_rating;
  private Double rating;
  private Integer rating_count;
  private String restaurant_cdn_url;
  private String restaurant_id;
  private Double restaurant_score;
  private String user_id;
  
  private V2RecommendationResultDTO$V2RecommendedRestaurant(V2RecommendationResultDTO paramV2RecommendationResultDTO) {}
  
  public GHSIRecommendationsModel.GHSIRecommendedRestaurant.GHSIRecommendedRestaurantAddress getAddress()
  {
    return address;
  }
  
  public Double getBayesianRating()
  {
    return bayesian_rating10_point;
  }
  
  public ArrayList<String> getCuisines()
  {
    return cuisines;
  }
  
  public GHSAmount getDeliveryFee()
  {
    return delivery_fee;
  }
  
  public GHSAmount getDeliveryMinimum()
  {
    return delivery_minimum;
  }
  
  public Integer getDeliveryTimeEstimate()
  {
    return delivery_time_estimate;
  }
  
  public String getLogo()
  {
    return logo;
  }
  
  public String getName()
  {
    return name;
  }
  
  public Integer getPickupTimeEstimate()
  {
    return pickup_time_estimate;
  }
  
  public Integer getPriceRating()
  {
    return price_rating;
  }
  
  public Double getRating()
  {
    return rating;
  }
  
  public Integer getRatingCount()
  {
    return rating_count;
  }
  
  public String getRestaurantId()
  {
    return restaurant_id;
  }
  
  public String getRestaurantImage()
  {
    return restaurant_cdn_url;
  }
  
  public Double getRestaurantScore()
  {
    return restaurant_score;
  }
  
  public String getUserId()
  {
    return user_id;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RecommendationResultDTO.V2RecommendedRestaurant
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */