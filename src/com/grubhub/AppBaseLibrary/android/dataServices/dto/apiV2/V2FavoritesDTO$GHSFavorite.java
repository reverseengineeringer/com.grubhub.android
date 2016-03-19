package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteDataModel;
import java.util.ArrayList;

public class V2FavoritesDTO$GHSFavorite
  implements GHSIFavoriteDataModel
{
  private Long create_time;
  private String id;
  private String restaurant_id;
  
  public boolean acceptsCash()
  {
    return false;
  }
  
  public boolean acceptsCreditCard()
  {
    return false;
  }
  
  public int getCouponCount()
  {
    return 0;
  }
  
  public float getDeliveryFee()
  {
    return 0.0F;
  }
  
  public String getDistanceInMiles()
  {
    return null;
  }
  
  public String getLatitude()
  {
    return null;
  }
  
  public String getLongitude()
  {
    return null;
  }
  
  public float getOrderMinimum()
  {
    return 0.0F;
  }
  
  public float getRating()
  {
    return 0.0F;
  }
  
  public GHSIAddressDataModel getRestaurantAddress()
  {
    return null;
  }
  
  public ArrayList<GHSIRestaurantDataModel.GHSIDateTime> getRestaurantDeliveryHours()
  {
    return new ArrayList();
  }
  
  public String getRestaurantId()
  {
    return restaurant_id;
  }
  
  public String getRestaurantName()
  {
    return null;
  }
  
  public ArrayList<GHSIRestaurantDataModel.GHSIDateTime> getRestaurantPickupHours()
  {
    return new ArrayList();
  }
  
  public String getReviewCount()
  {
    return null;
  }
  
  public boolean isManagedDelivery()
  {
    return false;
  }
  
  public Boolean isOpen()
  {
    return Boolean.valueOf(false);
  }
  
  public boolean offersCoupons()
  {
    return false;
  }
  
  public boolean offersDelivery()
  {
    return false;
  }
  
  public boolean offersDeliveryToDinerLocation()
  {
    return false;
  }
  
  public boolean offersOnlineOrdering()
  {
    return false;
  }
  
  public boolean offersPickup()
  {
    return false;
  }
  
  public boolean requiresCrossStreet()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2FavoritesDTO.GHSFavorite
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */