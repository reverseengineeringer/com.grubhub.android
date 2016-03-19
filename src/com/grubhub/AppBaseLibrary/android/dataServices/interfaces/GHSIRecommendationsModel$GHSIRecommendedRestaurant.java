package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import java.util.ArrayList;

public abstract interface GHSIRecommendationsModel$GHSIRecommendedRestaurant
{
  public abstract GHSIRecommendationsModel.GHSIRecommendedRestaurant.GHSIRecommendedRestaurantAddress getAddress();
  
  public abstract Double getBayesianRating();
  
  public abstract ArrayList<String> getCuisines();
  
  public abstract GHSAmount getDeliveryFee();
  
  public abstract GHSAmount getDeliveryMinimum();
  
  public abstract Integer getDeliveryTimeEstimate();
  
  public abstract String getLogo();
  
  public abstract String getName();
  
  public abstract Integer getPickupTimeEstimate();
  
  public abstract Integer getPriceRating();
  
  public abstract Double getRating();
  
  public abstract Integer getRatingCount();
  
  public abstract String getRestaurantId();
  
  public abstract String getRestaurantImage();
  
  public abstract Double getRestaurantScore();
  
  public abstract String getUserId();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRecommendationsModel.GHSIRecommendedRestaurant
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */