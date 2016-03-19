package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel.GHSIErrorMessage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public class V1RestaurantListDTO
  implements GHSIRestaurantListDataModel
{
  private static final int CONDENSED_DESCRIPTION_CUISINE_LIMIT = 2;
  public static final String RESTAURANT_LIST_MARKET_TYPE_FULLY_DEPLOYED = "FULLY_DEPLOYED";
  public static final String RESTAURANT_LIST_MARKET_TYPE_OUT_OF_MARKET = "OUT_OF_MARKET";
  private V1RestaurantListDTO.GHSCuisines cuisines;
  private String itemSearch;
  private String marketType;
  private V1RestaurantListDTO.GHSMessages messages;
  private String pickupRadius;
  private V1RestaurantListDTO.GHSRestaurants restaurants;
  private int totalResults;
  
  public static GHSIRestaurantListDataModel getStoredInstance()
  {
    return GHSApplication.a().b().W();
  }
  
  public void addToRestaurantList(ArrayList<? extends GHSIRestaurantDataModel> paramArrayList)
  {
    if ((restaurants != null) && (paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      if (V1RestaurantListDTO.GHSRestaurants.access$400(restaurants) == null) {
        V1RestaurantListDTO.GHSRestaurants.access$402(restaurants, new ArrayList());
      }
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        GHSIRestaurantDataModel localGHSIRestaurantDataModel = (GHSIRestaurantDataModel)paramArrayList.next();
        V1RestaurantListDTO.GHSRestaurants.access$400(restaurants).add((V1RestaurantListDTO.GHSRestaurant)localGHSIRestaurantDataModel);
      }
    }
  }
  
  public ArrayList<GHSCuisine> getCuisineList()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = V1RestaurantListDTO.GHSCuisines.access$500(cuisines).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new GHSCuisine(str, -1, str));
    }
    return localArrayList;
  }
  
  public ArrayList<GHSIRestaurantListDataModel.GHSIErrorMessage> getErrorMessages()
  {
    if (messages != null)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.addAll(messages.message);
      return localArrayList;
    }
    return null;
  }
  
  public String getMarketType()
  {
    return marketType;
  }
  
  public GHSIRestaurantDataModel getRestaurantMatchingRestaurantId(String paramString)
  {
    if (restaurants != null)
    {
      Object localObject = V1RestaurantListDTO.GHSRestaurants.access$400(restaurants);
      if ((paramString != null) && (localObject != null))
      {
        localObject = ((ArrayList)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          V1RestaurantListDTO.GHSRestaurant localGHSRestaurant = (V1RestaurantListDTO.GHSRestaurant)((Iterator)localObject).next();
          if (localGHSRestaurant.getRestaurantId().equals(paramString)) {
            return localGHSRestaurant;
          }
        }
      }
    }
    return null;
  }
  
  public ArrayList<GHSIRestaurantDataModel> getRestaurants()
  {
    if (restaurants != null)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.addAll(V1RestaurantListDTO.GHSRestaurants.access$400(restaurants));
      return localArrayList;
    }
    return null;
  }
  
  public String getSearchId()
  {
    return null;
  }
  
  public String getSearchTermUsed()
  {
    return itemSearch;
  }
  
  public Map<String, String> getSortItemPrettyNames()
  {
    return null;
  }
  
  public Long getTotalResults()
  {
    return Long.valueOf(totalResults);
  }
  
  public int getTotalResultsOmittingOpenTimes()
  {
    return 0;
  }
  
  public boolean hasPriceFilterOption()
  {
    return false;
  }
  
  public boolean hasRatingsFilterOption()
  {
    return false;
  }
  
  public void saveGHSIRestaurantListDataModel()
  {
    GHSApplication.a().b().a(this);
  }
  
  public void updateFilterModel(GHSFilterSortCriteria paramGHSFilterSortCriteria) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1RestaurantListDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */