package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount;
import java.util.ArrayList;

class V2RestaurantDTO$GHSAvailability
{
  private boolean available_for_delivery;
  private ArrayList<V2RestaurantDTO.GHSDateTime> available_hours;
  private ArrayList<V2RestaurantDTO.GHSDateTime> available_hours_pickup;
  private boolean blacked_out;
  private boolean cash_accepted;
  private boolean credit_card_accepted;
  private boolean cutoff_for_delivery;
  private boolean cutoff_for_pickup;
  private Integer delivery_cutoff;
  private Integer delivery_estimate;
  private GHSAmount delivery_fee;
  private Float delivery_fee_as_percentage;
  private GHSAmount delivery_fee_estimate;
  private boolean delivery_fee_taxable;
  private boolean delivery_offered_to_diner_location;
  private Integer distance_in_miles;
  private V2RestaurantDTO.GHSFutureOrderInfo future_order_info;
  private boolean open;
  private GHSAmount order_minimum;
  private boolean paypal_accepted;
  private Integer pickup_cutoff;
  private Integer pickup_estimate;
  private String restaurant_id;
  private Float sales_tax;
  private String time_zone_id;
  private Integer time_zone_offset;
  private boolean tracker;
  private boolean white_in;
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSAvailability
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */