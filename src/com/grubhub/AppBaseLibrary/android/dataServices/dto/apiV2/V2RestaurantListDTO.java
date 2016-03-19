package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFacetOption;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterFragmentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPriceFilterModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPriceFilterModel.PriceValues;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRatingsFilterModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRatingsFilterModel.RatingsValues;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel.GHSIErrorMessage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class V2RestaurantListDTO
  implements GHSIRestaurantListDataModel
{
  private static final int CONDENSED_DESCRIPTION_CUISINE_LIMIT = 2;
  private static final String PRICE_RATING_NAME = "Price";
  private static final int PRICE_RATING_NUM = 5;
  private static final String RATING_NAME = "Rating";
  private static final int RATING_NUM = 5;
  private static final String URL_IMAGE_UMAMI = "http://s1.seamless.com/-/ri/vl/";
  private String className = getClass().getName();
  private V2RestaurantListDTO.GHSPager pager;
  private String recommendation_result;
  private ArrayList<V2RestaurantListDTO.GHSRestaurant> results;
  private String search_id;
  private V2RestaurantListDTO.GHSSearchResult search_result;
  
  private GHSFilterFragmentsModel buildFragmentsModel()
  {
    GHSFilterFragmentsModel localGHSFilterFragmentsModel = new GHSFilterFragmentsModel();
    localGHSFilterFragmentsModel.setSortFragments(buildSortFragments());
    localGHSFilterFragmentsModel.setSingleValueRefinements(buildSingleValueFragments());
    localGHSFilterFragmentsModel.setPriceValueFragments(buildPriceValueFragments());
    localGHSFilterFragmentsModel.setRatingsValueFragments(buildRatingsValueFragments());
    return localGHSFilterFragmentsModel;
  }
  
  private LinkedHashMap<String, String> buildPriceValueFragments()
  {
    return buildRangeValueFragments("price_rating");
  }
  
  private LinkedHashMap<String, String> buildRangeValueFragments(String paramString)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$1400(search_result) != null))
    {
      int i = 0;
      while (i < V2RestaurantListDTO.GHSSearchResult.access$1400(search_result).size())
      {
        Object localObject = (V2RestaurantListDTO.GHSFacet)V2RestaurantListDTO.GHSSearchResult.access$1400(search_result).get(i);
        if ((!TextUtils.isEmpty(V2RestaurantListDTO.GHSFacet.access$3300((V2RestaurantListDTO.GHSFacet)localObject))) && (V2RestaurantListDTO.GHSFacet.access$3300((V2RestaurantListDTO.GHSFacet)localObject).equalsIgnoreCase(paramString)))
        {
          localObject = V2RestaurantListDTO.GHSFacet.access$1600((V2RestaurantListDTO.GHSFacet)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            V2RestaurantListDTO.GHSFacetValue localGHSFacetValue = (V2RestaurantListDTO.GHSFacetValue)((Iterator)localObject).next();
            localLinkedHashMap.put(V2RestaurantListDTO.GHSFacetValue.access$1800(localGHSFacetValue), V2RestaurantListDTO.GHSFacetValue.access$2000(localGHSFacetValue));
          }
        }
        i += 1;
      }
    }
    return localLinkedHashMap;
  }
  
  private LinkedHashMap<String, String> buildRatingsValueFragments()
  {
    return buildRangeValueFragments("rating");
  }
  
  private LinkedHashMap<String, GHSFacetOption> buildSingleValueFragments()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$1400(search_result) != null))
    {
      int i = 0;
      if (i < V2RestaurantListDTO.GHSSearchResult.access$1400(search_result).size())
      {
        V2RestaurantListDTO.GHSFacet localGHSFacet = (V2RestaurantListDTO.GHSFacet)V2RestaurantListDTO.GHSSearchResult.access$1400(search_result).get(i);
        if ((localGHSFacet == null) || (TextUtils.isEmpty(V2RestaurantListDTO.GHSFacet.access$3200(localGHSFacet))) || (!V2RestaurantListDTO.GHSFacet.access$3200(localGHSFacet).equalsIgnoreCase("SingleValue"))) {}
        Object localObject1;
        do
        {
          while (!((Iterator)localObject2).hasNext())
          {
            i += 1;
            break;
            localObject2 = V2RestaurantListDTO.GHSFacet.access$1600(localGHSFacet).iterator();
          }
          localObject1 = (V2RestaurantListDTO.GHSFacetValue)((Iterator)localObject2).next();
        } while ((TextUtils.isEmpty(V2RestaurantListDTO.GHSFacetValue.access$2000((V2RestaurantListDTO.GHSFacetValue)localObject1))) || (!V2RestaurantListDTO.GHSFacetValue.access$2000((V2RestaurantListDTO.GHSFacetValue)localObject1).contains("true")));
        Object localObject2 = V2RestaurantListDTO.GHSFacet.access$3300(localGHSFacet);
        String str1 = V2RestaurantListDTO.GHSFacet.access$1500(localGHSFacet);
        String str2 = V2RestaurantListDTO.GHSFacetValue.access$2000((V2RestaurantListDTO.GHSFacetValue)localObject1);
        int j = V2RestaurantListDTO.GHSFacetValue.access$1900((V2RestaurantListDTO.GHSFacetValue)localObject1).intValue();
        if ((V2RestaurantListDTO.GHSFacet.access$2100(localGHSFacet)) || (V2RestaurantListDTO.GHSFacetValue.access$1900((V2RestaurantListDTO.GHSFacetValue)localObject1).intValue() <= 0)) {}
        for (boolean bool = true;; bool = false)
        {
          localObject1 = new GHSFacetOption((String)localObject2, str1, str2, j, bool, V2RestaurantListDTO.GHSFacetValue.access$3400((V2RestaurantListDTO.GHSFacetValue)localObject1));
          localLinkedHashMap.put(V2RestaurantListDTO.GHSFacet.access$3300(localGHSFacet), localObject1);
          break;
        }
      }
    }
    return localLinkedHashMap;
  }
  
  private LinkedHashMap<String, String> buildSortFragments()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$2200(search_result) != null))
    {
      int i = 0;
      while (i < V2RestaurantListDTO.GHSSearchResult.access$2200(search_result).size())
      {
        localLinkedHashMap.put(V2RestaurantListDTO.GHSSort.access$2300((V2RestaurantListDTO.GHSSort)V2RestaurantListDTO.GHSSearchResult.access$2200(search_result).get(i)), V2RestaurantListDTO.GHSSort.access$3100((V2RestaurantListDTO.GHSSort)V2RestaurantListDTO.GHSSearchResult.access$2200(search_result).get(i)));
        i += 1;
      }
    }
    return localLinkedHashMap;
  }
  
  private boolean containsRangedValueFacet(String paramString, int paramInt)
  {
    if ((search_result == null) || (V2RestaurantListDTO.GHSSearchResult.access$1400(search_result) == null)) {
      return false;
    }
    Iterator localIterator = V2RestaurantListDTO.GHSSearchResult.access$1400(search_result).iterator();
    while (localIterator.hasNext())
    {
      V2RestaurantListDTO.GHSFacet localGHSFacet = (V2RestaurantListDTO.GHSFacet)localIterator.next();
      if ((!TextUtils.isEmpty(V2RestaurantListDTO.GHSFacet.access$1500(localGHSFacet))) && (V2RestaurantListDTO.GHSFacet.access$1500(localGHSFacet).equalsIgnoreCase(paramString)) && (!V2RestaurantListDTO.GHSFacet.access$2100(localGHSFacet)) && (V2RestaurantListDTO.GHSFacet.access$1600(localGHSFacet).size() == paramInt)) {
        return true;
      }
    }
    return false;
  }
  
  private boolean isThisCuisineSelected(GHSCuisine paramGHSCuisine)
  {
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$2500(search_result) != null) && (V2RestaurantListDTO.GHSBreadCrumb.access$2900(V2RestaurantListDTO.GHSSearchResult.access$2500(search_result)) != null) && (!V2RestaurantListDTO.GHSBreadCrumb.access$2900(V2RestaurantListDTO.GHSSearchResult.access$2500(search_result)).isEmpty()))
    {
      Iterator localIterator = V2RestaurantListDTO.GHSBreadCrumb.access$2900(V2RestaurantListDTO.GHSSearchResult.access$2500(search_result)).iterator();
      while (localIterator.hasNext())
      {
        V2RestaurantListDTO.GHSCrumb localGHSCrumb = (V2RestaurantListDTO.GHSCrumb)localIterator.next();
        if ((V2RestaurantListDTO.GHSCrumb.access$3500(localGHSCrumb).equalsIgnoreCase("cuisine")) && (V2RestaurantListDTO.GHSCrumb.access$3600(localGHSCrumb).equalsIgnoreCase(paramGHSCuisine.getDisplayName()))) {
          return true;
        }
      }
    }
    return false;
  }
  
  public void addToRestaurantList(ArrayList<? extends GHSIRestaurantDataModel> paramArrayList)
  {
    if ((search_result != null) && (paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      if (V2RestaurantListDTO.GHSSearchResult.access$1300(search_result) == null) {
        V2RestaurantListDTO.GHSSearchResult.access$1302(search_result, new ArrayList());
      }
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        GHSIRestaurantDataModel localGHSIRestaurantDataModel = (GHSIRestaurantDataModel)paramArrayList.next();
        V2RestaurantListDTO.GHSSearchResult.access$1300(search_result).add((V2RestaurantListDTO.GHSRestaurant)localGHSIRestaurantDataModel);
      }
    }
  }
  
  public ArrayList<GHSCuisine> getCuisineList()
  {
    ArrayList localArrayList = new ArrayList();
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$1400(search_result) != null))
    {
      Iterator localIterator = V2RestaurantListDTO.GHSSearchResult.access$1400(search_result).iterator();
      while (localIterator.hasNext())
      {
        Object localObject1 = (V2RestaurantListDTO.GHSFacet)localIterator.next();
        if ((V2RestaurantListDTO.GHSFacet.access$1500((V2RestaurantListDTO.GHSFacet)localObject1) != null) && (V2RestaurantListDTO.GHSFacet.access$1500((V2RestaurantListDTO.GHSFacet)localObject1).equalsIgnoreCase(GHSApplication.a().getString(2131230925))))
        {
          localObject1 = V2RestaurantListDTO.GHSFacet.access$1600((V2RestaurantListDTO.GHSFacet)localObject1);
          if (localObject1 != null)
          {
            localObject1 = ((ArrayList)localObject1).iterator();
            while (((Iterator)localObject1).hasNext())
            {
              Object localObject3 = (V2RestaurantListDTO.GHSFacetValue)((Iterator)localObject1).next();
              V2RestaurantListDTO.GHSFacetValue.access$1700((V2RestaurantListDTO.GHSFacetValue)localObject3);
              Object localObject2 = V2RestaurantListDTO.GHSFacetValue.access$1800((V2RestaurantListDTO.GHSFacetValue)localObject3);
              Integer localInteger = V2RestaurantListDTO.GHSFacetValue.access$1900((V2RestaurantListDTO.GHSFacetValue)localObject3);
              localObject3 = V2RestaurantListDTO.GHSFacetValue.access$2000((V2RestaurantListDTO.GHSFacetValue)localObject3);
              localObject2 = new GHSCuisine((String)localObject2, localInteger.intValue(), (String)localObject3);
              ((GHSCuisine)localObject2).setSelected(isThisCuisineSelected((GHSCuisine)localObject2));
              localArrayList.add(localObject2);
            }
          }
        }
      }
    }
    return localArrayList;
  }
  
  public ArrayList<GHSIRestaurantListDataModel.GHSIErrorMessage> getErrorMessages()
  {
    return null;
  }
  
  public String getMarketType()
  {
    return null;
  }
  
  public GHSIRestaurantDataModel getRestaurantMatchingRestaurantId(String paramString)
  {
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$1300(search_result) != null))
    {
      Iterator localIterator = V2RestaurantListDTO.GHSSearchResult.access$1300(search_result).iterator();
      while (localIterator.hasNext())
      {
        V2RestaurantListDTO.GHSRestaurant localGHSRestaurant = (V2RestaurantListDTO.GHSRestaurant)localIterator.next();
        if ((localGHSRestaurant.getRestaurantId() != null) && (localGHSRestaurant.getRestaurantId().equals(paramString))) {
          return localGHSRestaurant;
        }
      }
    }
    return null;
  }
  
  public ArrayList<GHSIRestaurantDataModel> getRestaurants()
  {
    ArrayList localArrayList;
    if (results != null)
    {
      localArrayList = new ArrayList();
      localArrayList.addAll(results);
      return localArrayList;
    }
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$1300(search_result) != null))
    {
      localArrayList = new ArrayList();
      localArrayList.addAll(V2RestaurantListDTO.GHSSearchResult.access$1300(search_result));
      return localArrayList;
    }
    return null;
  }
  
  public String getSearchId()
  {
    return search_id;
  }
  
  public String getSearchTermUsed()
  {
    return null;
  }
  
  public Map<String, String> getSortItemPrettyNames()
  {
    HashMap localHashMap = new HashMap();
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$2200(search_result) != null))
    {
      Iterator localIterator = V2RestaurantListDTO.GHSSearchResult.access$2200(search_result).iterator();
      while (localIterator.hasNext())
      {
        V2RestaurantListDTO.GHSSort localGHSSort = (V2RestaurantListDTO.GHSSort)localIterator.next();
        localHashMap.put(V2RestaurantListDTO.GHSSort.access$2300(localGHSSort), V2RestaurantListDTO.GHSSort.access$2400(localGHSSort));
      }
    }
    return localHashMap;
  }
  
  public Long getTotalResults()
  {
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$800(search_result) != null) && (V2RestaurantListDTO.GHSStats.access$900(V2RestaurantListDTO.GHSSearchResult.access$800(search_result)) != null)) {
      return V2RestaurantListDTO.GHSStats.access$900(V2RestaurantListDTO.GHSSearchResult.access$800(search_result));
    }
    return Long.valueOf(0L);
  }
  
  public int getTotalResultsOmittingOpenTimes()
  {
    if ((search_result != null) && (V2RestaurantListDTO.GHSSearchResult.access$1000(search_result) != null) && (V2RestaurantListDTO.GHSCountOmittingOpenTimes.access$1100(V2RestaurantListDTO.GHSSearchResult.access$1000(search_result)))) {
      return V2RestaurantListDTO.GHSCountOmittingOpenTimes.access$1200(V2RestaurantListDTO.GHSSearchResult.access$1000(search_result));
    }
    return 0;
  }
  
  public boolean hasPriceFilterOption()
  {
    return containsRangedValueFacet("Price", 5);
  }
  
  public boolean hasRatingsFilterOption()
  {
    return containsRangedValueFacet("Rating", 5);
  }
  
  public void saveGHSIRestaurantListDataModel()
  {
    GHSApplication.a().b().a(this);
  }
  
  public void updateFilterModel(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    if ((paramGHSFilterSortCriteria == null) || (search_result == null) || (V2RestaurantListDTO.GHSSearchResult.access$2500(search_result) == null)) {}
    for (;;)
    {
      return;
      paramGHSFilterSortCriteria.setDefaultRadius(V2RestaurantListDTO.GHSBreadCrumb.access$2600(V2RestaurantListDTO.GHSSearchResult.access$2500(search_result)));
      paramGHSFilterSortCriteria.setDistanceRadius(V2RestaurantListDTO.GHSBreadCrumb.access$2600(V2RestaurantListDTO.GHSSearchResult.access$2500(search_result)));
      paramGHSFilterSortCriteria.setSearchTerm(V2RestaurantListDTO.GHSBreadCrumb.access$2700(V2RestaurantListDTO.GHSSearchResult.access$2500(search_result)));
      paramGHSFilterSortCriteria.setCurrentSortOption(V2RestaurantListDTO.GHSBreadCrumb.access$2800(V2RestaurantListDTO.GHSSearchResult.access$2500(search_result)));
      paramGHSFilterSortCriteria.setFilterFragmentsModel(buildFragmentsModel());
      if (V2RestaurantListDTO.GHSBreadCrumb.access$2900(V2RestaurantListDTO.GHSSearchResult.access$2500(search_result)) != null)
      {
        Iterator localIterator = V2RestaurantListDTO.GHSBreadCrumb.access$2900(V2RestaurantListDTO.GHSSearchResult.access$2500(search_result)).iterator();
        while (localIterator.hasNext())
        {
          Object localObject2 = (V2RestaurantListDTO.GHSCrumb)localIterator.next();
          Object localObject1 = GHSRatingsFilterModel.RatingsValues.fromString(V2RestaurantListDTO.GHSCrumb.access$3000((V2RestaurantListDTO.GHSCrumb)localObject2));
          if (localObject1 != null)
          {
            localObject2 = new GHSRatingsFilterModel();
            ((GHSRatingsFilterModel)localObject2).setRatingsRangeSelected((GHSRatingsFilterModel.RatingsValues)localObject1);
            paramGHSFilterSortCriteria.setRatingsModel((GHSRatingsFilterModel)localObject2);
          }
          else
          {
            localObject1 = GHSPriceFilterModel.PriceValues.fromString(V2RestaurantListDTO.GHSCrumb.access$3000((V2RestaurantListDTO.GHSCrumb)localObject2));
            if (localObject1 != null)
            {
              localObject2 = new GHSPriceFilterModel();
              ((GHSPriceFilterModel)localObject2).setPriceRangeSelected((GHSPriceFilterModel.PriceValues)localObject1);
              paramGHSFilterSortCriteria.setPriceModel((GHSPriceFilterModel)localObject2);
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantListDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */