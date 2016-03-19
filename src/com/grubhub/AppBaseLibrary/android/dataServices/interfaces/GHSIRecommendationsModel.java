package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIRecommendationsModel
{
  public abstract ArrayList<GHSIRecommendationsModel.GHSIRecommendedRestaurant> getRestaurantRecommendationList();
  
  public abstract String getSearchId();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRecommendationsModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */