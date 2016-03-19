package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import com.grubhub.AppBaseLibrary.android.c.a.c;
import java.util.ArrayList;
import java.util.Map;

public abstract interface GHSISortOptionList
{
  public abstract Map<String, String> getApiToAppSortNameMapping();
  
  public abstract ArrayList<c> getSortOptionList();
  
  public abstract boolean hasAuctionSort();
  
  public abstract boolean hasDefaultSort();
  
  public abstract boolean hasDeliveryEstimateAscending();
  
  public abstract boolean hasDeliveryFeeAscending();
  
  public abstract boolean hasDeliveryMinimumAscending();
  
  public abstract boolean hasDistanceAscending();
  
  public abstract boolean hasPickupEstimateAscending();
  
  public abstract boolean hasPriceAscending();
  
  public abstract boolean hasRatingDescending();
  
  public abstract boolean hasRelevanceSort();
  
  public abstract boolean hasRestaurantNameAscending();
  
  public abstract boolean hasStandardSort();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSISortOptionList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */