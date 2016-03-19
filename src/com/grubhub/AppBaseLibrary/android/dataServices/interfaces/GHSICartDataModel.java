package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.List;

public abstract interface GHSICartDataModel
{
  public static final String DELIVERY_TYPESTRING_DELIVERY = "delivery";
  public static final String DELIVERY_TYPESTRING_PICKUP = "pickup";
  public static final String DISCOUNT_TYPE_CASHVOUCHER = "CASHVOUCHER";
  public static final String DISCOUNT_TYPE_COUPON = "COUPON";
  public static final String DISCOUNT_TYPE_FREEGRUBTOTAL = "FREEGRUBTOTAL";
  public static final String DISCOUNT_TYPE_GIFTCARD = "GIFTCARD";
  public static final String DISCOUNT_TYPE_PROMOCODE = "PROMO";
  
  public abstract Float getAmountDue();
  
  public abstract Integer getAmountDueCents();
  
  public abstract Float getAmountDueMinusTipAndDiscounts();
  
  public abstract GHSICartDataModel.GHSIDiscountCodeInfo getAppliedDiscount();
  
  public abstract GHSICartPaymentDataModel getAppliedPayment();
  
  public abstract String getCartId();
  
  public abstract GHSICartDataModel.GHSCartState getCartState();
  
  public abstract GHSICouponDataModel getCoupon();
  
  public abstract String getCustomerContactPhone();
  
  public abstract GHSIAddressDataModel getDeliveryAddress();
  
  public abstract Float getDeliveryFee();
  
  public abstract String getDinerName();
  
  public abstract long getExpectedTimeInMillis();
  
  public abstract GHSICartDataModel.GHSIDiscountCodeInfo getGiftCardDiscount();
  
  public abstract Integer getGrandTotalCents();
  
  public abstract String getOrderId();
  
  public abstract List<GHSICartDataModel.GHSIOrderItem> getOrderItems();
  
  public abstract String getOrderPaymentType();
  
  public abstract String getOrderSpecialInstructions();
  
  public abstract String getOrderStatus();
  
  public abstract String getOrderToken();
  
  public abstract g getOrderType();
  
  public abstract GHSICartDataModel.GHSIDiscountCodeInfo getPromoCodeDiscount();
  
  public abstract String getRestaurantId();
  
  public abstract String getRestaurantName();
  
  public abstract Float getSubtotal();
  
  public abstract Integer getSubtotalInCents();
  
  public abstract Float getTax();
  
  public abstract long getTimePlacedMillis();
  
  public abstract Float getTip();
  
  public abstract GHSICartDataModel.TipTypes getTipType();
  
  public abstract boolean isAsapOrder();
  
  public abstract void setTip(float paramFloat);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */