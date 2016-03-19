package com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import java.util.ArrayList;

public abstract interface GHSIFavoriteDataModel
{
  public abstract boolean acceptsCash();
  
  public abstract boolean acceptsCreditCard();
  
  public abstract int getCouponCount();
  
  public abstract float getDeliveryFee();
  
  public abstract String getDistanceInMiles();
  
  public abstract String getLatitude();
  
  public abstract String getLongitude();
  
  public abstract float getOrderMinimum();
  
  public abstract float getRating();
  
  public abstract GHSIAddressDataModel getRestaurantAddress();
  
  public abstract ArrayList<GHSIRestaurantDataModel.GHSIDateTime> getRestaurantDeliveryHours();
  
  public abstract String getRestaurantId();
  
  public abstract String getRestaurantName();
  
  public abstract ArrayList<GHSIRestaurantDataModel.GHSIDateTime> getRestaurantPickupHours();
  
  public abstract String getReviewCount();
  
  public abstract boolean isManagedDelivery();
  
  public abstract Boolean isOpen();
  
  public abstract boolean offersCoupons();
  
  public abstract boolean offersDelivery();
  
  public abstract boolean offersDeliveryToDinerLocation();
  
  public abstract boolean offersOnlineOrdering();
  
  public abstract boolean offersPickup();
  
  public abstract boolean requiresCrossStreet();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */