package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.content.res.Resources;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPrice;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRange;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRange;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIFutureOrderInfo;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.j;
import java.util.ArrayList;

public class V2RestaurantListDTO$GHSRestaurant
  implements GHSIRestaurantDataModel
{
  private boolean accepts_cash;
  private boolean accepts_credit;
  private V2RestaurantListDTO.GHSPostalAddress address;
  private boolean coupons_available;
  private ArrayList<String> cuisines;
  private boolean delivery;
  private GHSPrice delivery_fee;
  private GHSPrice delivery_minimum;
  private int delivery_time_estimate;
  private String description;
  private float distance_from_location;
  private GHSPrice exact_delivery_fee;
  private String logo;
  private V2MediaImageDTO media_image;
  private ArrayList<V2RestaurantListDTO.GHSMenuItem> menu_items;
  private GHSPrice min_delivery_fee;
  private String name;
  private boolean new_restaurant;
  private V2RestaurantListDTO.GHSPhoneNumber phone_number;
  private boolean phone_only;
  private boolean pickup;
  private GHSPrice pickup_fee;
  private GHSPrice pickup_minimum;
  private int pickup_time_estimate;
  private int price_rating;
  private V2RestaurantListDTO.GHSAggregateRating ratings;
  private String restaurant_id;
  private String time_zone;
  private boolean track_your_grub;
  private String vendor_location_id;
  
  public ArrayList<GHSICouponListDataModel.GHSICouponDataModel> getCoupons()
  {
    return null;
  }
  
  public GHSIAmount getDeliveryFeeExact()
  {
    return exact_delivery_fee;
  }
  
  public GHSIAmount getDeliveryFeeMaximum()
  {
    return delivery_fee;
  }
  
  public GHSIAmount getDeliveryFeeMinimum()
  {
    return min_delivery_fee;
  }
  
  public GHSIAmount getDeliveryMinimum()
  {
    return delivery_minimum;
  }
  
  public float getDistanceFromDinerLocationMiles()
  {
    return distance_from_location;
  }
  
  public GHSIRange getEstimatedDeliveryTime()
  {
    return new GHSRange(delivery_time_estimate, delivery_time_estimate + 10);
  }
  
  public GHSIRange getEstimatedPickupReadyTime()
  {
    return new GHSRange(pickup_time_estimate, pickup_time_estimate + 10);
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
    return null;
  }
  
  public String getLongitude()
  {
    return null;
  }
  
  public int getMenuItemMatchingCount()
  {
    if (menu_items != null) {
      return menu_items.size();
    }
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
    return pickup_minimum;
  }
  
  public int getRatingCount()
  {
    if (ratings != null) {
      return V2RestaurantListDTO.GHSAggregateRating.access$700(ratings);
    }
    return 0;
  }
  
  public GHSIAddressDataModel getRestaurantAddress()
  {
    GHSAddressDataModel localGHSAddressDataModel = new GHSAddressDataModel();
    if (address != null)
    {
      localGHSAddressDataModel.setAddress1(V2RestaurantListDTO.GHSPostalAddress.access$000(address));
      localGHSAddressDataModel.setCity(V2RestaurantListDTO.GHSPostalAddress.access$100(address));
      localGHSAddressDataModel.setState(V2RestaurantListDTO.GHSPostalAddress.access$200(address));
      localGHSAddressDataModel.setZip(V2RestaurantListDTO.GHSPostalAddress.access$300(address));
      localGHSAddressDataModel.setCountry(V2RestaurantListDTO.GHSPostalAddress.access$400(address));
      if (phone_number != null) {
        localGHSAddressDataModel.setPhone(V2RestaurantListDTO.GHSPhoneNumber.access$500(phone_number));
      }
    }
    return localGHSAddressDataModel;
  }
  
  public ArrayList<String> getRestaurantCuisines()
  {
    return cuisines;
  }
  
  public String getRestaurantDescription()
  {
    if (cuisines != null) {
      return cuisines.toString().replace("[", "").replace("]", "");
    }
    return "";
  }
  
  public String getRestaurantDescriptionCondensed()
  {
    if (cuisines != null)
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      while ((i < cuisines.size()) && (i < 2))
      {
        localArrayList.add(cuisines.get(i));
        i += 1;
      }
      return localArrayList.toString().replace("[", "").replace("]", "");
    }
    return "";
  }
  
  public String getRestaurantId()
  {
    return restaurant_id;
  }
  
  public String getRestaurantImage()
  {
    if (vendor_location_id != null)
    {
      int i = j.b();
      int j = j.a();
      return String.format("%s%s/%s/%s/?fs=1", new Object[] { "http://s1.seamless.com/-/ri/vl/", vendor_location_id, Integer.valueOf(i), Integer.valueOf(j) });
    }
    return logo;
  }
  
  public String getRestaurantLogo()
  {
    return logo;
  }
  
  public String getRestaurantMediaImage()
  {
    if ((media_image == null) || ((media_image.tag != null) && (media_image.tag.equals("placeholder")))) {
      return null;
    }
    int i = Math.round(GHSApplication.a().getResources().getDimension(2131427521));
    int j = Math.round(GHSApplication.a().getResources().getDimension(2131427520));
    float f = GHSApplication.o();
    StringBuilder localStringBuilder = new StringBuilder(media_image.base_url);
    if (!localStringBuilder.toString().endsWith("/")) {
      localStringBuilder.append("/");
    }
    if ((media_image.tag != null) && (media_image.tag.equals("search"))) {}
    for (String str = "c_fill";; str = "c_fit")
    {
      localStringBuilder.append(str).append(",w_").append(i).append(",h_").append(j).append(",dpr_").append(f).append("/").append(media_image.public_id).append(".").append(media_image.format);
      return localStringBuilder.toString();
    }
  }
  
  public String getRestaurantName()
  {
    return name;
  }
  
  public String getRestaurantPhoneNumber()
  {
    if (phone_number != null) {
      return V2RestaurantListDTO.GHSPhoneNumber.access$500(phone_number);
    }
    return null;
  }
  
  public int getRestaurantPriceRating()
  {
    return price_rating;
  }
  
  public float getStarRating()
  {
    if ((ratings != null) && (V2RestaurantListDTO.GHSAggregateRating.access$600(ratings) != null)) {
      return Float.valueOf(V2RestaurantListDTO.GHSAggregateRating.access$600(ratings)).floatValue();
    }
    return 0.0F;
  }
  
  public boolean hasCoupons()
  {
    return coupons_available;
  }
  
  public boolean isAcceptingCash()
  {
    return accepts_cash;
  }
  
  public boolean isAcceptingCredit()
  {
    return accepts_credit;
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
    return new_restaurant;
  }
  
  public boolean isOpen(g paramg)
  {
    return true;
  }
  
  public boolean isPhoneOnly()
  {
    return phone_only;
  }
  
  public boolean offersDelivery()
  {
    return delivery;
  }
  
  public boolean offersDeliveryToDinerLocation()
  {
    return false;
  }
  
  public boolean offersPickup()
  {
    return pickup;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantListDTO.GHSRestaurant
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */