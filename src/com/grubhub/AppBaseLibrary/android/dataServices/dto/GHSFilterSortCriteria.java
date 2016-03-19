package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.c.a.d;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.l;
import com.grubhub.AppBaseLibrary.android.utils.e.a.a.b;
import com.grubhub.AppBaseLibrary.android.utils.e.a.a.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GHSFilterSortCriteria
  implements b
{
  private GHSAddressDataModel address = new GHSAddressDataModel();
  private String addressString;
  private ArrayList<GHSCuisine> cuisineList;
  private String currentSortOption;
  private float distanceRadius;
  private GHSFilterFragmentsModel filterFragmentsModel = new GHSFilterFragmentsModel();
  private float fsFilterDefaultRadius = 1.0F;
  private boolean hasDefaultRadiusBeenSet = false;
  private boolean hasUserSelectedCuisines;
  private boolean hasUserSelectedRefinements;
  private boolean hasUserSelectedSort;
  private g orderType;
  private GHSPriceFilterModel priceModel = new GHSPriceFilterModel();
  private GHSRatingsFilterModel ratingsModel = new GHSRatingsFilterModel();
  private String searchTerm;
  private boolean showPriceFilter;
  private boolean showRatingsFilter;
  private l subOrderType;
  private long whenFor;
  
  public GHSFilterSortCriteria()
  {
    resetFilterValues();
    searchTerm = "";
    if (orderType == null) {
      orderType = g.DELIVERY;
    }
    if (subOrderType == null) {
      subOrderType = l.DEFAULT;
    }
  }
  
  private void setHasUserSelectedCuisines(List<GHSCuisine> paramList)
  {
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        if (((GHSCuisine)paramList.next()).isSelected()) {
          hasUserSelectedCuisines = true;
        }
      }
    }
  }
  
  public void accept(c paramc)
  {
    if (paramc != null) {
      paramc.a(this);
    }
  }
  
  public GHSIAddressDataModel getAddress()
  {
    return address;
  }
  
  public String getAddressString()
  {
    return addressString;
  }
  
  public ArrayList<GHSCuisine> getCuisineList()
  {
    return cuisineList;
  }
  
  public String getCurrentSortOption()
  {
    return currentSortOption;
  }
  
  public float getDefaultRadius()
  {
    return fsFilterDefaultRadius;
  }
  
  public float getDistanceRadius()
  {
    return distanceRadius;
  }
  
  public GHSFilterFragmentsModel getFilterFragmentsModel()
  {
    return filterFragmentsModel;
  }
  
  public boolean getHasUserSelectedCuisines()
  {
    return hasUserSelectedCuisines;
  }
  
  public boolean getHasUserSelectedRefinements()
  {
    return hasUserSelectedRefinements;
  }
  
  public boolean getHasUserSelectedSort()
  {
    return hasUserSelectedSort;
  }
  
  public g getOrderType()
  {
    return orderType;
  }
  
  public GHSPriceFilterModel getPriceModel()
  {
    return priceModel;
  }
  
  public GHSRatingsFilterModel getRatingsModel()
  {
    return ratingsModel;
  }
  
  public String getSavedAddressId()
  {
    if (address != null) {
      return address.getId();
    }
    return null;
  }
  
  public String getSavedAddressLabel()
  {
    if (address != null) {
      return address.getLabel();
    }
    return null;
  }
  
  public String getSearchTerm()
  {
    return searchTerm;
  }
  
  public l getSubOrderType()
  {
    return subOrderType;
  }
  
  public long getWhenFor()
  {
    return whenFor;
  }
  
  public boolean isSavedAddress()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (address != null)
    {
      bool1 = bool2;
      if (!TextUtils.isEmpty(address.getId())) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean isShowPriceFilter()
  {
    return showPriceFilter;
  }
  
  public boolean isShowRatingsFilter()
  {
    return showRatingsFilter;
  }
  
  public void resetFilterValues()
  {
    if (orderType != g.PICKUP) {
      currentSortOption = d.DEFAULT.toString();
    }
    setRatingsModel(new GHSRatingsFilterModel());
    setPriceModel(new GHSPriceFilterModel());
    filterFragmentsModel = new GHSFilterFragmentsModel();
    setDistanceRadius(fsFilterDefaultRadius);
    setOrderType(g.DELIVERY);
    setSubOrderType(l.DEFAULT);
    searchTerm = "";
    whenFor = 0L;
    setCuisineList(null);
    setHasUserSelectedRefinements(false);
    setHasUserSelectedCuisines(false);
    setHasUserSelectedSort(false);
  }
  
  public void setAddress(GHSIAddressDataModel paramGHSIAddressDataModel, String paramString)
  {
    address = new GHSAddressDataModel();
    if (paramGHSIAddressDataModel != null)
    {
      address.setId(paramGHSIAddressDataModel.getId());
      address.setLabel(paramGHSIAddressDataModel.getLabel());
      address.setAddress1(paramGHSIAddressDataModel.getAddress1());
      address.setAddress2(paramGHSIAddressDataModel.getAddress2());
      address.setCity(paramGHSIAddressDataModel.getCity());
      address.setState(paramGHSIAddressDataModel.getState());
      address.setCrossStreet(paramGHSIAddressDataModel.getCrossStreet());
      address.setZip(paramGHSIAddressDataModel.getZip());
      address.setCountry(paramGHSIAddressDataModel.getCountry());
      address.setPhone(paramGHSIAddressDataModel.getPhone());
      address.setLatitude(paramGHSIAddressDataModel.getLatitude());
      address.setLongitude(paramGHSIAddressDataModel.getLongitude());
      address.setIsDefault(paramGHSIAddressDataModel.getIsDefault());
      address.setIsSavedAddress(paramGHSIAddressDataModel.getIsSavedAddress());
      address.setIsPrecise(paramGHSIAddressDataModel.getIsPrecise());
      address.setPickupRadius(paramGHSIAddressDataModel.getPickupRadius());
      hasDefaultRadiusBeenSet = false;
    }
    addressString = paramString;
  }
  
  public void setAddressToNotSaved()
  {
    address.setId(null);
    address.setLabel(null);
    address.setIsSavedAddress(false);
  }
  
  public void setCuisineList(ArrayList<GHSCuisine> paramArrayList)
  {
    cuisineList = paramArrayList;
    setHasUserSelectedCuisines(paramArrayList);
  }
  
  public void setCurrentSortOption(String paramString)
  {
    currentSortOption = paramString;
  }
  
  public void setDefaultRadius(float paramFloat)
  {
    try
    {
      if (!hasDefaultRadiusBeenSet)
      {
        fsFilterDefaultRadius = paramFloat;
        hasDefaultRadiusBeenSet = true;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void setDistanceRadius(float paramFloat)
  {
    distanceRadius = paramFloat;
  }
  
  public void setFilterFragmentsModel(GHSFilterFragmentsModel paramGHSFilterFragmentsModel)
  {
    filterFragmentsModel = paramGHSFilterFragmentsModel;
  }
  
  public void setHasUserSelectedCuisines(boolean paramBoolean)
  {
    hasUserSelectedCuisines = paramBoolean;
  }
  
  public void setHasUserSelectedRefinements(boolean paramBoolean)
  {
    hasUserSelectedRefinements = paramBoolean;
  }
  
  public void setHasUserSelectedSort(boolean paramBoolean)
  {
    hasUserSelectedSort = paramBoolean;
  }
  
  public void setOrderType(g paramg)
  {
    orderType = paramg;
  }
  
  public void setPriceModel(GHSPriceFilterModel paramGHSPriceFilterModel)
  {
    priceModel = paramGHSPriceFilterModel;
  }
  
  public void setRatingsModel(GHSRatingsFilterModel paramGHSRatingsFilterModel)
  {
    ratingsModel = paramGHSRatingsFilterModel;
  }
  
  public void setRestaurantFilterData(GHSIRestaurantListDataModel paramGHSIRestaurantListDataModel)
  {
    setShowPriceFilter(paramGHSIRestaurantListDataModel.hasPriceFilterOption());
    setShowRatingsFilter(paramGHSIRestaurantListDataModel.hasRatingsFilterOption());
    paramGHSIRestaurantListDataModel.updateFilterModel(this);
  }
  
  public void setSearchTerm(String paramString)
  {
    searchTerm = paramString;
  }
  
  public void setShowPriceFilter(boolean paramBoolean)
  {
    showPriceFilter = paramBoolean;
  }
  
  public void setShowRatingsFilter(boolean paramBoolean)
  {
    showRatingsFilter = paramBoolean;
  }
  
  public void setSubOrderType(l paraml)
  {
    subOrderType = paraml;
  }
  
  public void setWhenFor(long paramLong)
  {
    whenFor = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */