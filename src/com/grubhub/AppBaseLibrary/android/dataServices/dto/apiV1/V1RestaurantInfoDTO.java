package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRange;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRestaurantHours;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRestaurantHours.GHSHour;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRestaurantHours.GHSHours;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRestaurantHours.GHSPrimaryHours;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRange;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIFutureOrderInfo;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;
import java.util.Iterator;

public class V1RestaurantInfoDTO
  implements GHSIRestaurantDataModel
{
  private boolean acceptingCash;
  private boolean acceptingCreditCard;
  private String address;
  private String availabilityMessage;
  private String city;
  private Integer couponCount;
  private ArrayList<V1RestaurantInfoDTO.GHSDateTime> dateTimeArrayList;
  private Float deliveryFee;
  private boolean hidingReviews;
  private String id;
  private String lat;
  private String lng;
  private String logo;
  private String menuTeaserText;
  private String name;
  private boolean offersCoupons;
  private boolean offersDelivery;
  private boolean offersPickup;
  private boolean onlineOrdering;
  private boolean open;
  private Float orderMinimum;
  private String phone;
  private Float rating;
  private boolean requiresCrossStreet;
  private GHSRestaurantHours restaurantHours;
  private Integer reviewCount;
  private String state;
  private Integer textReviewCount;
  private boolean tracker;
  private boolean trackerEnabled;
  private String zip;
  
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
      return new GHSAmount(Integer.valueOf(deliveryFee.intValue()), "USD");
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
      return new GHSAmount(Integer.valueOf(orderMinimum.intValue()), "USD");
    }
    return new GHSAmount(Integer.valueOf(0), "");
  }
  
  public float getDistanceFromDinerLocationMiles()
  {
    return 0.0F;
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
    ArrayList localArrayList = new ArrayList();
    if (restaurantHours != null)
    {
      Object localObject;
      if (paramg == g.PICKUP)
      {
        paramg = restaurantHours;
        if (GHSRestaurantHours.pickupHours != null)
        {
          paramg = restaurantHours;
          if (pickupHoursprimary != null)
          {
            paramg = restaurantHours;
            if (pickupHoursprimary.hours != null)
            {
              paramg = restaurantHours;
              paramg = pickupHoursprimary.hours.iterator();
              while (paramg.hasNext())
              {
                localObject = (GHSRestaurantHours.GHSHour)paramg.next();
                localObject = new V1RestaurantInfoDTO.GHSDateTime(day, new String[] { value });
                if (localObject != null) {
                  localArrayList.add(localObject);
                }
              }
            }
          }
        }
      }
      paramg = restaurantHours;
      if (GHSRestaurantHours.deliveryHours != null)
      {
        paramg = restaurantHours;
        if (deliveryHoursprimary != null)
        {
          paramg = restaurantHours;
          if (deliveryHoursprimary.hours != null)
          {
            paramg = restaurantHours;
            paramg = deliveryHoursprimary.hours.iterator();
            while (paramg.hasNext())
            {
              localObject = (GHSRestaurantHours.GHSHour)paramg.next();
              localObject = new V1RestaurantInfoDTO.GHSDateTime(day, new String[] { value });
              if (localObject != null) {
                localArrayList.add(localObject);
              }
            }
          }
        }
      }
    }
    return localArrayList;
  }
  
  public String getLatitude()
  {
    return null;
  }
  
  public String getLongitude()
  {
    return null;
  }
  
  public int getMenuItemMatchingCount()
  {
    return 0;
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
    localGHSAddressDataModel.setAddress1(address);
    localGHSAddressDataModel.setCity(city);
    localGHSAddressDataModel.setZip(zip);
    localGHSAddressDataModel.setLatitude(lat);
    localGHSAddressDataModel.setLongitude(lng);
    localGHSAddressDataModel.setPhone(phone);
    return localGHSAddressDataModel;
  }
  
  public ArrayList<String> getRestaurantCuisines()
  {
    return null;
  }
  
  public String getRestaurantDescription()
  {
    return null;
  }
  
  public String getRestaurantDescriptionCondensed()
  {
    return null;
  }
  
  public String getRestaurantId()
  {
    return id;
  }
  
  public String getRestaurantImage()
  {
    return logo;
  }
  
  public String getRestaurantLogo()
  {
    return logo;
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
    return phone;
  }
  
  public int getRestaurantPriceRating()
  {
    return 0;
  }
  
  public float getStarRating()
  {
    return 0.0F;
  }
  
  public boolean hasCoupons()
  {
    return offersCoupons;
  }
  
  public boolean isAcceptingCash()
  {
    return acceptingCash;
  }
  
  public boolean isAcceptingCredit()
  {
    return acceptingCreditCard;
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
    return open;
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
    return false;
  }
  
  public boolean offersPickup()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1RestaurantInfoDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */