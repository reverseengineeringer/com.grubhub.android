package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import java.util.ArrayList;

class V2RestaurantDTO$GHSRestaurant
{
  private V2RestaurantDTO.GHSPostalAddress address;
  private boolean cash_tip_allowed;
  private long city_id;
  private boolean cross_street_required;
  private ArrayList<String> cuisines;
  private String event;
  private boolean has_coupons;
  private String id;
  private boolean is_new;
  private boolean is_olo;
  private String latitude;
  private String logo;
  private String longitude;
  private boolean managed_delivery;
  private V2MediaImageDTO media_image;
  private ArrayList<V2RestaurantDTO.GHSMenuCategory> menu_category_list;
  private GHSAmount minimum_tip;
  private double minimum_tip_percent;
  private String name;
  private boolean online_ordering_available;
  private String phone_number_for_delivery;
  private boolean phone_ordering_available;
  private boolean pickup_offered;
  private boolean premium;
  private String price_rating;
  private V2RestaurantDTO.GHSRating rating;
  private String restaurant_cdn_image_url;
  private ArrayList<V2RestaurantDTO.GHSRestaurantCoupons> restaurant_coupons;
  private String routing_number;
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSRestaurant
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */