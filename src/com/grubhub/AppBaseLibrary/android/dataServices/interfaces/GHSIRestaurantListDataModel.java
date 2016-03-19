package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import java.util.ArrayList;
import java.util.Map;

public abstract interface GHSIRestaurantListDataModel
{
  public abstract void addToRestaurantList(ArrayList<? extends GHSIRestaurantDataModel> paramArrayList);
  
  public abstract ArrayList<GHSCuisine> getCuisineList();
  
  public abstract ArrayList<GHSIRestaurantListDataModel.GHSIErrorMessage> getErrorMessages();
  
  public abstract String getMarketType();
  
  public abstract GHSIRestaurantDataModel getRestaurantMatchingRestaurantId(String paramString);
  
  public abstract ArrayList<GHSIRestaurantDataModel> getRestaurants();
  
  public abstract String getSearchId();
  
  public abstract String getSearchTermUsed();
  
  public abstract Map<String, String> getSortItemPrettyNames();
  
  public abstract Long getTotalResults();
  
  public abstract int getTotalResultsOmittingOpenTimes();
  
  public abstract boolean hasPriceFilterOption();
  
  public abstract boolean hasRatingsFilterOption();
  
  public abstract void saveGHSIRestaurantListDataModel();
  
  public abstract void updateFilterModel(GHSFilterSortCriteria paramGHSFilterSortCriteria);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */