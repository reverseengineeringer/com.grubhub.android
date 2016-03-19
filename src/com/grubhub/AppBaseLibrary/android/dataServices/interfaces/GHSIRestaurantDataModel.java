package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;

public abstract interface GHSIRestaurantDataModel
{
  public static final int TIME_WINDOW_BUFFER_MINUTES = 10;
  
  public abstract ArrayList<GHSICouponListDataModel.GHSICouponDataModel> getCoupons();
  
  public abstract GHSIAmount getDeliveryFeeExact();
  
  public abstract GHSIAmount getDeliveryFeeMaximum();
  
  public abstract GHSIAmount getDeliveryFeeMinimum();
  
  public abstract GHSIAmount getDeliveryMinimum();
  
  public abstract float getDistanceFromDinerLocationMiles();
  
  public abstract GHSIRange getEstimatedDeliveryTime();
  
  public abstract GHSIRange getEstimatedPickupReadyTime();
  
  public abstract GHSIRestaurantDataModel.GHSIFutureOrderInfo getFutureOrderInfo();
  
  public abstract ArrayList<GHSIRestaurantDataModel.GHSIDateTime> getHoursOfOperation(g paramg);
  
  public abstract String getLatitude();
  
  public abstract String getLongitude();
  
  public abstract int getMenuItemMatchingCount();
  
  public abstract GHSIAmount getMinimumTip();
  
  public abstract double getMinimumTipPercent();
  
  public abstract GHSIAmount getPickupMinimum();
  
  public abstract int getRatingCount();
  
  public abstract GHSIAddressDataModel getRestaurantAddress();
  
  public abstract ArrayList<String> getRestaurantCuisines();
  
  public abstract String getRestaurantDescription();
  
  public abstract String getRestaurantDescriptionCondensed();
  
  public abstract String getRestaurantId();
  
  @Deprecated
  public abstract String getRestaurantImage();
  
  public abstract String getRestaurantLogo();
  
  public abstract String getRestaurantMediaImage();
  
  public abstract String getRestaurantName();
  
  public abstract String getRestaurantPhoneNumber();
  
  public abstract int getRestaurantPriceRating();
  
  public abstract float getStarRating();
  
  public abstract boolean hasCoupons();
  
  public abstract boolean isAcceptingCash();
  
  public abstract boolean isAcceptingCredit();
  
  public abstract boolean isCashTipAllowed();
  
  public abstract boolean isCrossStreetRequired();
  
  public abstract boolean isManagedDelivery();
  
  public abstract boolean isNew();
  
  public abstract boolean isOpen(g paramg);
  
  public abstract boolean isPhoneOnly();
  
  public abstract boolean offersDelivery();
  
  public abstract boolean offersDeliveryToDinerLocation();
  
  public abstract boolean offersPickup();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */