package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import java.util.ArrayList;
import java.util.Iterator;

class V1CartDTO$GHSOrder
{
  private static final String CHECK_LINEITEM_AMOUNT_DUE = "AMOUNT_DUE";
  private static final String CHECK_LINEITEM_CASHVOUCHER = "CASHVOUCHER";
  private static final String CHECK_LINEITEM_COUPON = "COUPON";
  private static final String CHECK_LINEITEM_DELIVERY_FEE = "DELIVERY";
  private static final String CHECK_LINEITEM_FREEGRUBTOTAL = "FREEGRUBTOTAL";
  private static final String CHECK_LINEITEM_GIFTCARD = "GIFTCARD";
  private static final String CHECK_LINEITEM_PROMOCODE = "PROMO";
  private static final String CHECK_LINEITEM_SUBTOTAL = "SUBTOTAL";
  private static final String CHECK_LINEITEM_TAX = "TAX";
  private static final String CHECK_LINEITEM_TIP = "TIP";
  private static final String CHECK_LINEITEM_TOTAL = "TOTAL";
  private static final String TIP_TYPE_CASH_STRING = "cash";
  private V1AddressDTO address;
  private V1CartDTO.GHSCheck check;
  private Long completeOrderTime;
  private V1CartDTO.GHSCustomerServiceContact customerServiceContact;
  private Float deliveryAlways;
  private Float deliveryTimezoneOffset;
  private Long expectedDeliveryTimeInMillis;
  private Boolean green;
  private V1CartDTO.GHSGuestsAtMeal guestsAtMeal;
  private String id;
  private String locationText;
  private String mealLabel;
  private String mealMessage;
  private String mealPaymentDescription;
  private String mealType;
  private V1CartDTO.GHSOrderItems orderItems;
  private String orderMethod;
  private String orderStatus;
  private String orderToken;
  private String paymentFirstName;
  private String paymentLastName;
  private String paymentType;
  private boolean placed;
  private String restaurantId;
  private String specialInstructions;
  private boolean statusTrackable;
  private String tipType;
  
  private V1CartDTO$GHSOrder(V1CartDTO paramV1CartDTO) {}
  
  private Float findKeyStringinCheckArray(String paramString)
  {
    if ((paramString != null) && (check != null) && (V1CartDTO.GHSCheck.access$000(check) != null))
    {
      Iterator localIterator = V1CartDTO.GHSCheck.access$000(check).iterator();
      while (localIterator.hasNext())
      {
        V1CartDTO.GHSLineItem localGHSLineItem = (V1CartDTO.GHSLineItem)localIterator.next();
        if (V1CartDTO.GHSLineItem.access$100(localGHSLineItem).toLowerCase().equals(paramString.toLowerCase())) {
          return V1CartDTO.GHSLineItem.access$200(localGHSLineItem);
        }
      }
    }
    return Float.valueOf(0.0F);
  }
  
  private void putKeyStringinCheckedArray(String paramString, float paramFloat)
  {
    Object localObject;
    if ((paramString != null) && (check != null) && (V1CartDTO.GHSCheck.access$000(check) != null))
    {
      localObject = V1CartDTO.GHSCheck.access$000(check).iterator();
      while (((Iterator)localObject).hasNext())
      {
        V1CartDTO.GHSLineItem localGHSLineItem = (V1CartDTO.GHSLineItem)((Iterator)localObject).next();
        if (V1CartDTO.GHSLineItem.access$100(localGHSLineItem).toLowerCase().equals(paramString.toLowerCase())) {
          V1CartDTO.GHSLineItem.access$202(localGHSLineItem, Float.valueOf(paramFloat));
        }
      }
    }
    for (int i = 1;; i = 0)
    {
      if (i == 0)
      {
        localObject = new V1CartDTO.GHSLineItem(this$0, null);
        V1CartDTO.GHSLineItem.access$102((V1CartDTO.GHSLineItem)localObject, paramString);
        V1CartDTO.GHSLineItem.access$202((V1CartDTO.GHSLineItem)localObject, Float.valueOf(paramFloat));
        V1CartDTO.GHSCheck.access$000(check).add(localObject);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1CartDTO.GHSOrder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */