package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSCartState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIDiscountCodeInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class V1CartDTO
  implements GHSICartDataModel
{
  private static final String TAG = V1CartDTO.class.getSimpleName();
  private V1CartDTO.GHSCustomerServiceContact customerServiceContact;
  private String expectedDeliveryTime;
  private String expectedPickupTime;
  private V1CartDTO.GHSOrder order;
  
  private ArrayList<GHSICartDataModel.GHSIDiscountCodeInfo> findDiscountsInCheckArray(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    if ((order != null) && (V1CartDTO.GHSOrder.access$1900(order) != null) && (V1CartDTO.GHSCheck.access$000(V1CartDTO.GHSOrder.access$1900(order)) != null))
    {
      Iterator localIterator = V1CartDTO.GHSCheck.access$000(V1CartDTO.GHSOrder.access$1900(order)).iterator();
      while (localIterator.hasNext())
      {
        V1CartDTO.GHSLineItem localGHSLineItem = (V1CartDTO.GHSLineItem)localIterator.next();
        int j = paramArrayOfString.length;
        int i = 0;
        while (i < j)
        {
          Object localObject = paramArrayOfString[i];
          if ((V1CartDTO.GHSLineItem.access$100(localGHSLineItem) != null) && (V1CartDTO.GHSLineItem.access$100(localGHSLineItem).equalsIgnoreCase((String)localObject)))
          {
            localObject = new V1CartDTO.GHSDiscountCodeInfo(this, null);
            V1CartDTO.GHSDiscountCodeInfo.access$2102((V1CartDTO.GHSDiscountCodeInfo)localObject, V1CartDTO.GHSLineItem.access$2200(localGHSLineItem));
            V1CartDTO.GHSDiscountCodeInfo.access$2302((V1CartDTO.GHSDiscountCodeInfo)localObject, V1CartDTO.GHSLineItem.access$2400(localGHSLineItem));
            V1CartDTO.GHSDiscountCodeInfo.access$2502((V1CartDTO.GHSDiscountCodeInfo)localObject, V1CartDTO.GHSLineItem.access$100(localGHSLineItem));
            V1CartDTO.GHSDiscountCodeInfo.access$2602((V1CartDTO.GHSDiscountCodeInfo)localObject, V1CartDTO.GHSLineItem.access$200(localGHSLineItem));
            localArrayList.add(localObject);
          }
          i += 1;
        }
      }
    }
    return localArrayList;
  }
  
  public Float getAmountDue()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$1400(order, "TOTAL");
    }
    return Float.valueOf(0.0F);
  }
  
  public Integer getAmountDueCents()
  {
    return null;
  }
  
  public Float getAmountDueMinusTipAndDiscounts()
  {
    if (order != null) {
      return Float.valueOf(V1CartDTO.GHSOrder.access$1400(order, "TOTAL").floatValue() - V1CartDTO.GHSOrder.access$1400(order, "TIP").floatValue());
    }
    return Float.valueOf(0.0F);
  }
  
  public GHSICartDataModel.GHSIDiscountCodeInfo getAppliedDiscount()
  {
    return null;
  }
  
  public GHSICartPaymentDataModel getAppliedPayment()
  {
    return null;
  }
  
  public String getCartId()
  {
    return null;
  }
  
  public GHSICartDataModel.GHSCartState getCartState()
  {
    return null;
  }
  
  public GHSICouponDataModel getCoupon()
  {
    return null;
  }
  
  public String getCustomerContactPhone()
  {
    if (customerServiceContact != null) {
      return customerServiceContact.phone;
    }
    return null;
  }
  
  public GHSIAddressDataModel getDeliveryAddress()
  {
    if (getOrderType() == g.DELIVERY) {
      return V1CartDTO.GHSOrder.access$1600(order);
    }
    return null;
  }
  
  public Float getDeliveryFee()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$1400(order, "DELIVERY");
    }
    return Float.valueOf(0.0F);
  }
  
  public String getDinerName()
  {
    return null;
  }
  
  public long getExpectedTimeInMillis()
  {
    if ((order != null) && (V1CartDTO.GHSOrder.access$1000(order) != null) && (V1CartDTO.GHSOrder.access$1000(order).equals("delivery")) && (V1CartDTO.GHSOrder.access$1800(order) != null)) {
      return V1CartDTO.GHSOrder.access$1800(order).longValue();
    }
    return 0L;
  }
  
  public GHSICartDataModel.GHSIDiscountCodeInfo getGiftCardDiscount()
  {
    return null;
  }
  
  public Integer getGrandTotalCents()
  {
    return null;
  }
  
  public String getOrderId()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$600(order);
    }
    return null;
  }
  
  public List<GHSICartDataModel.GHSIOrderItem> getOrderItems()
  {
    ArrayList localArrayList = new ArrayList();
    if ((order != null) && (V1CartDTO.GHSOrder.access$900(order) != null)) {
      localArrayList.addAll(access$900order).orderItem);
    }
    return localArrayList;
  }
  
  public String getOrderPaymentType()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$1100(order);
    }
    return null;
  }
  
  public String getOrderSpecialInstructions()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$1700(order);
    }
    return null;
  }
  
  public String getOrderStatus()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$1200(order);
    }
    return null;
  }
  
  public String getOrderToken()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$800(order);
    }
    return null;
  }
  
  public g getOrderType()
  {
    if ((order != null) && (V1CartDTO.GHSOrder.access$1000(order) != null))
    {
      if (V1CartDTO.GHSOrder.access$1000(order).equals("delivery")) {
        return g.DELIVERY;
      }
      if (V1CartDTO.GHSOrder.access$1000(order).equals("pickup")) {
        return g.PICKUP;
      }
    }
    return g.DELIVERY_OR_PICKUP;
  }
  
  public GHSICartDataModel.GHSIDiscountCodeInfo getPromoCodeDiscount()
  {
    ArrayList localArrayList = findDiscountsInCheckArray(new String[] { "CASHVOUCHER", "GIFTCARD", "PROMO" });
    if (localArrayList.isEmpty()) {
      return null;
    }
    return (GHSICartDataModel.GHSIDiscountCodeInfo)localArrayList.get(0);
  }
  
  public String getRestaurantId()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$700(order);
    }
    return null;
  }
  
  public String getRestaurantName()
  {
    return null;
  }
  
  public Float getSubtotal()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$1400(order, "SUBTOTAL");
    }
    return Float.valueOf(0.0F);
  }
  
  public Integer getSubtotalInCents()
  {
    return null;
  }
  
  public Float getTax()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$1400(order, "TAX");
    }
    return Float.valueOf(0.0F);
  }
  
  public long getTimePlacedMillis()
  {
    return 0L;
  }
  
  public Float getTip()
  {
    if (order != null) {
      return V1CartDTO.GHSOrder.access$1400(order, "TIP");
    }
    return Float.valueOf(0.0F);
  }
  
  public GHSICartDataModel.TipTypes getTipType()
  {
    if ((order != null) && (V1CartDTO.GHSOrder.access$1300(order) != null) && (V1CartDTO.GHSOrder.access$1300(order).toLowerCase().equals("cash"))) {
      return GHSICartDataModel.TipTypes.CASH;
    }
    return GHSICartDataModel.TipTypes.INCLUDE_IN_BILL;
  }
  
  public boolean isAsapOrder()
  {
    return true;
  }
  
  public void setTip(float paramFloat)
  {
    if (order != null)
    {
      float f = getAmountDueMinusTipAndDiscounts().floatValue();
      V1CartDTO.GHSOrder.access$1500(order, "TIP", paramFloat);
      V1CartDTO.GHSOrder.access$1500(order, "AMOUNT_DUE", Math.round((f + paramFloat) * 100.0F) / 100.0F);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1CartDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */