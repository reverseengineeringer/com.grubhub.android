.class public interface abstract Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DELIVERY_TYPESTRING_DELIVERY:Ljava/lang/String; = "delivery"

.field public static final DELIVERY_TYPESTRING_PICKUP:Ljava/lang/String; = "pickup"

.field public static final DISCOUNT_TYPE_CASHVOUCHER:Ljava/lang/String; = "CASHVOUCHER"

.field public static final DISCOUNT_TYPE_COUPON:Ljava/lang/String; = "COUPON"

.field public static final DISCOUNT_TYPE_FREEGRUBTOTAL:Ljava/lang/String; = "FREEGRUBTOTAL"

.field public static final DISCOUNT_TYPE_GIFTCARD:Ljava/lang/String; = "GIFTCARD"

.field public static final DISCOUNT_TYPE_PROMOCODE:Ljava/lang/String; = "PROMO"


# virtual methods
.method public abstract getAmountDue()Ljava/lang/Float;
.end method

.method public abstract getAmountDueCents()Ljava/lang/Integer;
.end method

.method public abstract getAmountDueMinusTipAndDiscounts()Ljava/lang/Float;
.end method

.method public abstract getAppliedDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;
.end method

.method public abstract getAppliedPayment()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartPaymentDataModel;
.end method

.method public abstract getCartId()Ljava/lang/String;
.end method

.method public abstract getCartState()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSCartState;
.end method

.method public abstract getCoupon()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICouponDataModel;
.end method

.method public abstract getCustomerContactPhone()Ljava/lang/String;
.end method

.method public abstract getDeliveryAddress()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSIAddressDataModel;
.end method

.method public abstract getDeliveryFee()Ljava/lang/Float;
.end method

.method public abstract getDinerName()Ljava/lang/String;
.end method

.method public abstract getExpectedTimeInMillis()J
.end method

.method public abstract getGiftCardDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;
.end method

.method public abstract getGrandTotalCents()Ljava/lang/Integer;
.end method

.method public abstract getOrderId()Ljava/lang/String;
.end method

.method public abstract getOrderItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIOrderItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOrderPaymentType()Ljava/lang/String;
.end method

.method public abstract getOrderSpecialInstructions()Ljava/lang/String;
.end method

.method public abstract getOrderStatus()Ljava/lang/String;
.end method

.method public abstract getOrderToken()Ljava/lang/String;
.end method

.method public abstract getOrderType()Lcom/grubhub/AppBaseLibrary/android/order/g;
.end method

.method public abstract getPromoCodeDiscount()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$GHSIDiscountCodeInfo;
.end method

.method public abstract getRestaurantId()Ljava/lang/String;
.end method

.method public abstract getRestaurantName()Ljava/lang/String;
.end method

.method public abstract getSubtotal()Ljava/lang/Float;
.end method

.method public abstract getSubtotalInCents()Ljava/lang/Integer;
.end method

.method public abstract getTax()Ljava/lang/Float;
.end method

.method public abstract getTimePlacedMillis()J
.end method

.method public abstract getTip()Ljava/lang/Float;
.end method

.method public abstract getTipType()Lcom/grubhub/AppBaseLibrary/android/dataServices/interfaces/GHSICartDataModel$TipTypes;
.end method

.method public abstract isAsapOrder()Z
.end method

.method public abstract setTip(F)V
.end method
