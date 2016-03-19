.class public Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static conversionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/grubhub/AppBaseLibrary/android/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMapper;->createNewMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMapper;->conversionMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createNewMap()Ljava/util/Map;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string v1, "missingRequiredInput"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_GENERIC_MISSING_REQUIRED_INPUT:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "badToken"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_LOGIN_TOKEN_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "badCredentials"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_LOGIN_NO_MATCH:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "emailInvalid"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_LOGIN_EMAIL_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "outOfDeliveryArea"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "cannotGeocode"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_CANNOT_GEOCODE_NONE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "ambiguousGeocode"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_CANNOT_GEOCODE_MANY:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "ERR_GEOCODE_NO_RESULTS"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_CANNOT_GEOCODE_NONE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "ERR_GEOCODE_MULTI_RESULTS"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_CANNOT_GEOCODE_MANY:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "address1"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_ADDRESS1_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "address2"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_ADDRESS2_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "city"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_CITY_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "state"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_STATE_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "OUT_OF_MARKET"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_OUT_OF_MARKET:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "invalidPhoneNumber"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_INVALID_PHONE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "noPhoneNumOnOrderAddress"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_ADDRESS_MISSING_PHONE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "customerNotTakingOnlineOrders"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_RESTAURANT_NOT_TAKING_ORDERS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "customerNotTakingPickupOrders"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_RESTAURANT_NOT_TAKING_PICKUP_ORDERS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "customerNotTakingDeliveryOrders"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_RESTAURANT_NOT_TAKING_DELIVERY_ORDERS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "cannotPickup30MinutesBeforeClose"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_RESTAURANT_NOT_TAKING_ORDERS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "invalidQuantity"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_QUANTITY_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "invalidQuantityChangeDropsBelowCouponMinOrder"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_QUANTITY_CHANGE_DROPS_BELOW_COUPON_MIN_ORDER:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "quantityOutOfRange"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_QUANTITY_OUT_OF_RANGE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "invalidMenuItem"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_ITEM_UNAVAILABLE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "menuItemNotCurrentlyAvailable"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_ITEM_UNAVAILABLE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "menuItemOwnedByOtherCustomer"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_ITEM_OWNED_BY_OTHER:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "menuDataTooOld"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_DATA_TOO_OLD:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "invalidChoiceOptions"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_ITEM_CHOICE_OPTIONS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "invalidChoiceSuboptions"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_ITEM_CHOICE_SUB_OPTIONS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "tooFewChoicesSelected"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_ITEM_CHOICES_TOO_FEW:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "tooManyChoicesSelected"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_MENU_ITEM_CHOICES_TOO_MANY:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "badOrderId"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CART_BAD_ORDER_ID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "someoneElsesOrderId"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CART_SOMEONE_ELSES_ORDER_ID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "orderContainsNoItems"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CART_NO_ITEMS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "number"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_NUMBER_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "Your CVV is missing or invalid"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_CCV_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "creditCardInformationNotValid"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_INFO_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "invalidCvv"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_CCV_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "cvv"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_CCV_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "invalidCCNum"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_NUMBER_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "invalidCCExpirationDate"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_EXPIRATION_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "expirationdate"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_EXPIRATION_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "Expiration Date"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_EXPIRATION_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "invalidCCZip"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_ZIP_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "billingZip"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CC_ZIP_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "invalidPromoCode"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PROMO_CODE_ADD_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "remove.invalidPromoCode"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PROMO_CODE_REMOVE_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "invalidCouponCombinability"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_COUPON_LIMIT_ONLY_ONE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "invalidCouponCombinabilityOnlyOne"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_COUPON_LIMIT_ONLY_ONE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "customerDoesNotAcceptTips"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_NOT_TAKING_TIPS:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "invalidTip"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_INVALID_TIP:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "paymentMethodNotSupported"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_PAYMENT_METHOD_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "orderTooLargeForCash"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_ORDER_TOO_LARGE_FOR_CASH:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "noPaymentMethodSelected"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_PAYMENT_METHOD_UNSELECTED:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "invalidPaymentMethodCombination"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_COMBINATION_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "invalidPaymentMethod"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_PAYMENT_METHOD_INVALID:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "ccPaymentFailure"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_FAILURE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "Credit Card Information"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_PAYMENT_FAILURE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "invalidPromoUsage"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CHECKOUT_INVALID_PROMO_USAGE:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "orderAlreadyCompleted"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CHECKOUT_ORDER_ALREADY_COMPLETED:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "minimumNotMet"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CHECKOUT_MINIMUM_NOT_MET:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "requiredCrossStreet"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CHECKOUT_REQUIRED_CROSS_STREET:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "totalCalculationMismatch"

    sget-object v2, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_CHECKOUT_TOTALS_MISMATCH:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static mapToAppError(Lcom/grubhub/AppBaseLibrary/android/b/b;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    const/4 v2, 0x0

    .line 127
    if-eqz p0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->e()Lcom/grubhub/AppBaseLibrary/android/b/c;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Lcom/grubhub/AppBaseLibrary/android/b/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    invoke-static {v0}, Lcom/grubhub/AppBaseLibrary/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    sget-object v1, Lcom/grubhub/AppBaseLibrary/android/dataServices/dto/apiV1/V1ErrorMapper;->conversionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grubhub/AppBaseLibrary/android/b/a;

    .line 142
    :goto_1
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    .line 144
    const/4 v0, 0x1

    .line 150
    :goto_2
    return v0

    .line 146
    :cond_0
    sget-object v0, Lcom/grubhub/AppBaseLibrary/android/b/a;->ERROR_CODE_UNKNOWN:Lcom/grubhub/AppBaseLibrary/android/b/a;

    invoke-virtual {p0, v0}, Lcom/grubhub/AppBaseLibrary/android/b/b;->a(Lcom/grubhub/AppBaseLibrary/android/b/a;)V

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
