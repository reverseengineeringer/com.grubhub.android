package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRange;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRange;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIFutureOrderInfo;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;

public class V1RestaurantListDTO$GHSRestaurant
  implements GHSIRestaurantDataModel
{
  private V1RestaurantListDTO.GHSAvailability availability;
  private String city;
  private V1RestaurantListDTO.GHSCuisines cuisines;
  private Float deliveryFee;
  private String deliveryFeeText;
  private boolean deliveryService;
  private float distanceMiles;
  private String gulpCode;
  private String id = "206367";
  private String lat;
  private String lng;
  private String logoUrl;
  private String name;
  private boolean offersCoupons;
  private boolean offersDelivery;
  private boolean offersDeliveryToDinerLocation;
  private boolean offersItem;
  private boolean offersPickup;
  private boolean onlineOrdering;
  private Float orderMinimum;
  private int reviewCount;
  private V1RestaurantListDTO.GHSSortPositions sortPositions;
  private float starRating;
  private String state;
  private String streetAddress;
  private boolean tracker;
  private String zip;
  
  public V1RestaurantListDTO$GHSRestaurant(V1RestaurantListDTO paramV1RestaurantListDTO) {}
  
  private V1RestaurantListDTO.GHSAvailability getAvailability()
  {
    return availability;
  }
  
  public ArrayList<GHSICouponListDataModel.GHSICouponDataModel> getCoupons()
  {
    return null;
  }
  
  public GHSIAmount getDeliveryFeeExact()
  {
    return null;
  }
  
  public GHSIAmount getDeliveryFeeMaximum()
  {
    if (deliveryFee != null) {
      return new GHSAmount(Integer.valueOf(deliveryFee.intValue() * 100), "USD");
    }
    return new GHSAmount(Integer.valueOf(0), "");
  }
  
  public GHSIAmount getDeliveryFeeMinimum()
  {
    return null;
  }
  
  public GHSIAmount getDeliveryMinimum()
  {
    if (orderMinimum != null) {
      return new GHSAmount(Integer.valueOf(orderMinimum.intValue() * 100), "USD");
    }
    return new GHSAmount(Integer.valueOf(0), "");
  }
  
  public float getDistanceFromDinerLocationMiles()
  {
    return distanceMiles;
  }
  
  public GHSIRange getEstimatedDeliveryTime()
  {
    return new GHSRange(45, 60);
  }
  
  public GHSIRange getEstimatedPickupReadyTime()
  {
    return new GHSRange(45, 60);
  }
  
  public GHSIRestaurantDataModel.GHSIFutureOrderInfo getFutureOrderInfo()
  {
    return null;
  }
  
  public ArrayList<GHSIRestaurantDataModel.GHSIDateTime> getHoursOfOperation(g paramg)
  {
    return null;
  }
  
  public String getLatitude()
  {
    return lat;
  }
  
  public String getLongitude()
  {
    return lng;
  }
  
  public int getMenuItemMatchingCount()
  {
    return 1;
  }
  
  public GHSIAmount getMinimumTip()
  {
    return null;
  }
  
  public double getMinimumTipPercent()
  {
    return 0.0D;
  }
  
  public GHSIAmount getPickupMinimum()
  {
    return null;
  }
  
  public int getRatingCount()
  {
    return 0;
  }
  
  public GHSIAddressDataModel getRestaurantAddress()
  {
    GHSAddressDataModel localGHSAddressDataModel = new GHSAddressDataModel();
    localGHSAddressDataModel.setAddress1(streetAddress);
    localGHSAddressDataModel.setCity(city);
    localGHSAddressDataModel.setZip(zip);
    localGHSAddressDataModel.setState(state);
    localGHSAddressDataModel.setLatitude(lat);
    localGHSAddressDataModel.setLongitude(lng);
    return localGHSAddressDataModel;
  }
  
  public ArrayList<String> getRestaurantCuisines()
  {
    if (cuisines != null) {
      return V1RestaurantListDTO.GHSCuisines.access$000(cuisines);
    }
    return null;
  }
  
  public String getRestaurantDescription()
  {
    if ((cuisines != null) && (V1RestaurantListDTO.GHSCuisines.access$000(cuisines) != null)) {
      return V1RestaurantListDTO.GHSCuisines.access$000(cuisines).toString().replace("[", "").replace("]", "");
    }
    return "";
  }
  
  public String getRestaurantDescriptionCondensed()
  {
    if ((cuisines != null) && (V1RestaurantListDTO.GHSCuisines.access$000(cuisines) != null))
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      while ((i < V1RestaurantListDTO.GHSCuisines.access$000(cuisines).size()) && (i < 2))
      {
        localArrayList.add(V1RestaurantListDTO.GHSCuisines.access$000(cuisines).get(i));
        i += 1;
      }
      return localArrayList.toString().replace("[", "").replace("]", "");
    }
    return "";
  }
  
  public String getRestaurantId()
  {
    return id;
  }
  
  public String getRestaurantImage()
  {
    return logoUrl;
  }
  
  public String getRestaurantLogo()
  {
    return logoUrl;
  }
  
  public String getRestaurantMediaImage()
  {
    return null;
  }
  
  public String getRestaurantName()
  {
    return name;
  }
  
  public String getRestaurantPhoneNumber()
  {
    return null;
  }
  
  public int getRestaurantPriceRating()
  {
    return 0;
  }
  
  public float getStarRating()
  {
    return starRating;
  }
  
  public boolean hasCoupons()
  {
    return offersCoupons;
  }
  
  public boolean isAcceptingCash()
  {
    if (availability != null) {
      return V1RestaurantListDTO.GHSAvailability.access$200(availability);
    }
    return false;
  }
  
  public boolean isAcceptingCredit()
  {
    if (availability != null) {
      return V1RestaurantListDTO.GHSAvailability.access$300(availability);
    }
    return false;
  }
  
  public boolean isCashTipAllowed()
  {
    return true;
  }
  
  public boolean isCrossStreetRequired()
  {
    return true;
  }
  
  public boolean isManagedDelivery()
  {
    return false;
  }
  
  public boolean isNew()
  {
    return false;
  }
  
  public boolean isOpen(g paramg)
  {
    if (availability != null) {
      return V1RestaurantListDTO.GHSAvailability.access$100(availability);
    }
    return false;
  }
  
  public boolean isPhoneOnly()
  {
    return !onlineOrdering;
  }
  
  public boolean offersDelivery()
  {
    return offersDelivery;
  }
  
  public boolean offersDeliveryToDinerLocation()
  {
    return offersDeliveryToDinerLocation;
  }
  
  public boolean offersPickup()
  {
    return offersPickup;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1RestaurantListDTO.GHSRestaurant
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */