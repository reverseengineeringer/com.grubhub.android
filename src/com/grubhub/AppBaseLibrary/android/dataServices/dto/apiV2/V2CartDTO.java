package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSCartState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIDiscountCodeInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.utils.b;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class V2CartDTO
  implements GHSICartDataModel
{
  protected Boolean asap;
  protected String cart_state;
  protected V2OrderChargesDTO charges;
  protected String currency;
  protected String diner_id;
  protected V2FulfillmentInfoDTO fulfillment_info;
  protected String group_id;
  protected String id;
  protected Map<String, ArrayList<V2CartPaymentDTO>> payments;
  protected ArrayList<String> restaurant_ids;
  protected ArrayList<V2CartRestaurantInfoDTO> restaurants;
  protected String time_placed;
  protected String when_for;
  
  public static float centsToDollars(int paramInt)
  {
    return paramInt / 100.0F;
  }
  
  public Float getAmountDue()
  {
    Integer localInteger = getAmountDueCents();
    if (localInteger == null) {
      return null;
    }
    return Float.valueOf(centsToDollars(localInteger.intValue()));
  }
  
  public Integer getAmountDueCents()
  {
    if ((charges == null) || (charges.diner_grand_total == null)) {
      return Integer.valueOf(0);
    }
    int k = 0 + charges.diner_grand_total.intValue();
    int j = k;
    if (payments != null)
    {
      GHSICartDataModel.GHSIDiscountCodeInfo localGHSIDiscountCodeInfo = getPromoCodeDiscount();
      int i = k;
      if (localGHSIDiscountCodeInfo != null)
      {
        i = k;
        if (localGHSIDiscountCodeInfo.getDiscountValueCents() != null) {
          i = k - localGHSIDiscountCodeInfo.getDiscountValueCents().intValue();
        }
      }
      localGHSIDiscountCodeInfo = getGiftCardDiscount();
      j = i;
      if (localGHSIDiscountCodeInfo != null)
      {
        j = i;
        if (localGHSIDiscountCodeInfo.getDiscountValueCents() != null) {
          j = i - localGHSIDiscountCodeInfo.getDiscountValueCents().intValue();
        }
      }
    }
    return Integer.valueOf(j);
  }
  
  public Float getAmountDueMinusTipAndDiscounts()
  {
    Object localObject1 = getAmountDueCents();
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = localObject1;
    if (charges != null)
    {
      localObject2 = localObject1;
      if (charges.tip != null)
      {
        localObject2 = localObject1;
        if (charges.tip.amount != null) {
          localObject2 = Integer.valueOf(((Integer)localObject1).intValue() - charges.tip.amount.intValue());
        }
      }
    }
    GHSICartDataModel.GHSIDiscountCodeInfo localGHSIDiscountCodeInfo = getPromoCodeDiscount();
    localObject1 = localObject2;
    if (localGHSIDiscountCodeInfo != null)
    {
      localObject1 = localObject2;
      if (localGHSIDiscountCodeInfo.getDiscountValueCents() != null) {
        localObject1 = Integer.valueOf(((Integer)localObject2).intValue() + localGHSIDiscountCodeInfo.getDiscountValueCents().intValue());
      }
    }
    localGHSIDiscountCodeInfo = getGiftCardDiscount();
    localObject2 = localObject1;
    if (localGHSIDiscountCodeInfo != null)
    {
      localObject2 = localObject1;
      if (localGHSIDiscountCodeInfo.getDiscountValueCents() != null) {
        localObject2 = Integer.valueOf(((Integer)localObject1).intValue() + localGHSIDiscountCodeInfo.getDiscountValueCents().intValue());
      }
    }
    return Float.valueOf(centsToDollars(((Integer)localObject2).intValue()));
  }
  
  public GHSICartDataModel.GHSIDiscountCodeInfo getAppliedDiscount()
  {
    Object localObject = getPromoCodeDiscount();
    if (localObject != null) {}
    GHSICartDataModel.GHSIDiscountCodeInfo localGHSIDiscountCodeInfo;
    do
    {
      return (GHSICartDataModel.GHSIDiscountCodeInfo)localObject;
      localGHSIDiscountCodeInfo = getGiftCardDiscount();
      localObject = localGHSIDiscountCodeInfo;
    } while (localGHSIDiscountCodeInfo != null);
    return null;
  }
  
  public GHSICartPaymentDataModel getAppliedPayment()
  {
    if (payments != null)
    {
      Iterator localIterator = payments.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if ((str != null) && (!str.equals(GHSICartPaymentDataModel.PaymentTypes.PROMO_CODE.toString())) && (!str.equals(GHSICartPaymentDataModel.PaymentTypes.GIFT_CARD.toString())) && (!((ArrayList)payments.get(str)).isEmpty())) {
          return (GHSICartPaymentDataModel)((ArrayList)payments.get(str)).get(0);
        }
      }
    }
    return null;
  }
  
  public String getCartId()
  {
    return id;
  }
  
  public GHSICartDataModel.GHSCartState getCartState()
  {
    return GHSICartDataModel.GHSCartState.fromString(cart_state);
  }
  
  public GHSICouponDataModel getCoupon()
  {
    if ((charges != null) && (charges.coupons != null) && (!charges.coupons.isEmpty())) {
      return (GHSICouponDataModel)charges.coupons.get(0);
    }
    return null;
  }
  
  public String getCustomerContactPhone()
  {
    if (fulfillment_info != null)
    {
      if (fulfillment_info.delivery_info != null) {
        return fulfillment_info.delivery_info.getPhone();
      }
      if (fulfillment_info.pickup_info != null) {
        return fulfillment_info.pickup_info.getPhone();
      }
    }
    return null;
  }
  
  public GHSIAddressDataModel getDeliveryAddress()
  {
    if (getOrderType() == g.DELIVERY)
    {
      if (fulfillment_info.delivery_info != null) {}
      for (V2DeliveryInfoDTO localV2DeliveryInfoDTO = fulfillment_info.delivery_info;; localV2DeliveryInfoDTO = fulfillment_info.incomplete_delivery)
      {
        GHSAddressDataModel localGHSAddressDataModel = new GHSAddressDataModel();
        localGHSAddressDataModel.setAddress1(localV2DeliveryInfoDTO.getStreetAddress1());
        localGHSAddressDataModel.setCrossStreet(localV2DeliveryInfoDTO.getCrossStreets());
        localGHSAddressDataModel.setAddress2(localV2DeliveryInfoDTO.getStreetAddress2());
        localGHSAddressDataModel.setCity(localV2DeliveryInfoDTO.getAddressLocality());
        localGHSAddressDataModel.setState(localV2DeliveryInfoDTO.getAddressRegion());
        localGHSAddressDataModel.setZip(localV2DeliveryInfoDTO.getPostalCode());
        localGHSAddressDataModel.setCountry(localV2DeliveryInfoDTO.getAddressCountry());
        localGHSAddressDataModel.setDeliveryInstructions(localV2DeliveryInfoDTO.getDeliveryInstructions());
        localGHSAddressDataModel.setLabel(localV2DeliveryInfoDTO.getName());
        localGHSAddressDataModel.setPhone(localV2DeliveryInfoDTO.getPhone());
        localGHSAddressDataModel.setEmailAddress(localV2DeliveryInfoDTO.getEmail());
        localGHSAddressDataModel.setLatitude(localV2DeliveryInfoDTO.getLatitude());
        localGHSAddressDataModel.setLongitude(localV2DeliveryInfoDTO.getLongitude());
        return localGHSAddressDataModel;
      }
    }
    return null;
  }
  
  public Float getDeliveryFee()
  {
    if ((charges != null) && (charges.fees != null) && (charges.fees.delivery != null)) {
      return Float.valueOf(centsToDollars(charges.fees.delivery.intValue()));
    }
    return Float.valueOf(0.0F);
  }
  
  public String getDinerName()
  {
    if (fulfillment_info == null) {}
    do
    {
      g localg;
      do
      {
        do
        {
          return null;
          localg = getOrderType();
          if (localg != g.DELIVERY) {
            break;
          }
          if (fulfillment_info.delivery_info != null) {
            return fulfillment_info.delivery_info.getName();
          }
        } while (fulfillment_info.incomplete_delivery == null);
        return fulfillment_info.incomplete_delivery.getName();
      } while (localg != g.PICKUP);
      if (fulfillment_info.pickup_info != null) {
        return fulfillment_info.pickup_info.getName();
      }
    } while (fulfillment_info.incomplete_pickup == null);
    return fulfillment_info.incomplete_pickup.getName();
  }
  
  public long getExpectedTimeInMillis()
  {
    return b.a(when_for, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true);
  }
  
  public GHSICartDataModel.GHSIDiscountCodeInfo getGiftCardDiscount()
  {
    if (payments != null)
    {
      Iterator localIterator = payments.entrySet().iterator();
      while (localIterator.hasNext())
      {
        final Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((localEntry.getKey() != null) && (((String)localEntry.getKey()).equals(GHSICartPaymentDataModel.PaymentTypes.GIFT_CARD.toString()))) {
          new GHSICartDataModel.GHSIDiscountCodeInfo()
          {
            public String getDiscountCode()
            {
              return ((V2CartPaymentDTO)((ArrayList)localEntry.getValue()).get(0)).getPaymentId();
            }
            
            public String getDiscountCodeType()
            {
              return GHSICartPaymentDataModel.PaymentTypes.GIFT_CARD.toString();
            }
            
            public String getDiscountDescription()
            {
              return null;
            }
            
            public String getDiscountId()
            {
              return ((V2CartPaymentDTO)((ArrayList)localEntry.getValue()).get(0)).getId();
            }
            
            public Float getDiscountValue()
            {
              Integer localInteger = ((V2CartPaymentDTO)((ArrayList)localEntry.getValue()).get(0)).getAmount();
              if (localInteger != null) {
                return Float.valueOf(V2CartDTO.centsToDollars(localInteger.intValue()));
              }
              return null;
            }
            
            public Integer getDiscountValueCents()
            {
              return ((V2CartPaymentDTO)((ArrayList)localEntry.getValue()).get(0)).getAmount();
            }
          };
        }
      }
    }
    return null;
  }
  
  public Integer getGrandTotalCents()
  {
    if ((charges != null) && (charges.diner_grand_total != null)) {
      return charges.diner_grand_total;
    }
    return Integer.valueOf(0);
  }
  
  public String getOrderId()
  {
    return null;
  }
  
  public List<GHSICartDataModel.GHSIOrderItem> getOrderItems()
  {
    if ((charges != null) && (charges.lines != null) && (charges.lines.line_items != null)) {
      return new ArrayList(charges.lines.line_items);
    }
    return null;
  }
  
  public String getOrderPaymentType()
  {
    if (payments != null)
    {
      Iterator localIterator = payments.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if ((str != null) && (!str.equals(GHSICartPaymentDataModel.PaymentTypes.PROMO_CODE.toString()))) {
          return str;
        }
      }
    }
    return null;
  }
  
  public String getOrderSpecialInstructions()
  {
    if (fulfillment_info != null)
    {
      if (getOrderType() == g.DELIVERY) {
        return fulfillment_info.delivery_info.getDeliveryInstructions();
      }
      if (getOrderType() == g.PICKUP) {
        return fulfillment_info.pickup_info.getPickupInstructions();
      }
    }
    return null;
  }
  
  public String getOrderStatus()
  {
    return null;
  }
  
  public String getOrderToken()
  {
    return null;
  }
  
  public g getOrderType()
  {
    if ((fulfillment_info != null) && (f.b(fulfillment_info.type)))
    {
      String str = fulfillment_info.type;
      V2FulfillmentInfoDTO localV2FulfillmentInfoDTO = fulfillment_info;
      if (!str.equals("DELIVERY"))
      {
        str = fulfillment_info.type;
        localV2FulfillmentInfoDTO = fulfillment_info;
        if (!str.equals("INCOMPLETE_DELIVERY")) {}
      }
      else
      {
        return g.DELIVERY;
      }
      return g.PICKUP;
    }
    return g.PICKUP;
  }
  
  public GHSICartDataModel.GHSIDiscountCodeInfo getPromoCodeDiscount()
  {
    if (payments != null)
    {
      Iterator localIterator = payments.entrySet().iterator();
      while (localIterator.hasNext())
      {
        final Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((localEntry.getKey() != null) && (((String)localEntry.getKey()).equals(GHSICartPaymentDataModel.PaymentTypes.PROMO_CODE.toString()))) {
          new GHSICartDataModel.GHSIDiscountCodeInfo()
          {
            public String getDiscountCode()
            {
              return ((V2CartPaymentDTO)((ArrayList)localEntry.getValue()).get(0)).getPaymentId();
            }
            
            public String getDiscountCodeType()
            {
              return GHSICartPaymentDataModel.PaymentTypes.PROMO_CODE.toString();
            }
            
            public String getDiscountDescription()
            {
              return null;
            }
            
            public String getDiscountId()
            {
              return ((V2CartPaymentDTO)((ArrayList)localEntry.getValue()).get(0)).getId();
            }
            
            public Float getDiscountValue()
            {
              Integer localInteger = ((V2CartPaymentDTO)((ArrayList)localEntry.getValue()).get(0)).getAmount();
              if (localInteger != null) {
                return Float.valueOf(V2CartDTO.centsToDollars(localInteger.intValue()));
              }
              return null;
            }
            
            public Integer getDiscountValueCents()
            {
              return ((V2CartPaymentDTO)((ArrayList)localEntry.getValue()).get(0)).getAmount();
            }
          };
        }
      }
    }
    return null;
  }
  
  public String getRestaurantId()
  {
    if ((restaurant_ids != null) && (!restaurant_ids.isEmpty())) {
      return (String)restaurant_ids.get(0);
    }
    return null;
  }
  
  public String getRestaurantName()
  {
    String str = getRestaurantId();
    if ((str != null) && (restaurants != null) && (!restaurants.isEmpty()))
    {
      Iterator localIterator = restaurants.iterator();
      while (localIterator.hasNext())
      {
        V2CartRestaurantInfoDTO localV2CartRestaurantInfoDTO = (V2CartRestaurantInfoDTO)localIterator.next();
        if (str.equals(localV2CartRestaurantInfoDTO.getId())) {
          return localV2CartRestaurantInfoDTO.getName();
        }
      }
    }
    return null;
  }
  
  public Float getSubtotal()
  {
    if ((charges != null) && (charges.diner_subtotal != null)) {
      return Float.valueOf(centsToDollars(charges.diner_subtotal.intValue()));
    }
    return null;
  }
  
  public Integer getSubtotalInCents()
  {
    if ((charges != null) && (charges.diner_subtotal != null)) {
      return charges.diner_subtotal;
    }
    return null;
  }
  
  public Float getTax()
  {
    if ((charges != null) && (charges.taxes != null) && (charges.taxes.total != null)) {
      return Float.valueOf(centsToDollars(charges.taxes.total.intValue()));
    }
    return null;
  }
  
  public long getTimePlacedMillis()
  {
    return b.a(time_placed, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true);
  }
  
  public Float getTip()
  {
    if ((charges != null) && (charges.tip != null) && (charges.tip.amount != null)) {
      return Float.valueOf(centsToDollars(charges.tip.amount.intValue()));
    }
    return null;
  }
  
  public GHSICartDataModel.TipTypes getTipType()
  {
    if ((charges != null) && (charges.tip != null) && (f.b(charges.tip.type))) {
      return GHSICartDataModel.TipTypes.fromString(charges.tip.type);
    }
    return null;
  }
  
  public boolean isAsapOrder()
  {
    return (asap != null) && (asap.booleanValue());
  }
  
  public void setTip(float paramFloat) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */