package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.b.c;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class V2ErrorMapper
{
  public static final String ERROR_DOMAIN_ADDRESS_GEOCODING = "AddressGeocoding";
  public static final String ERROR_DOMAIN_ADD_COUPON_TO_CART = "AddCouponToCart";
  public static final String ERROR_DOMAIN_ADD_FAVORITE = "AddFavorite";
  public static final String ERROR_DOMAIN_ADD_MENU_ITEM_TO_CART = "AddMenuItemToCart";
  public static final String ERROR_DOMAIN_ADD_PAYMENT_TO_CART = "AddPaymentToCart";
  public static final String ERROR_DOMAIN_ADD_SAVED_ADDRESS = "AddSavedAddress";
  public static final String ERROR_DOMAIN_CREATE_ACCOUNT = "CreateAccount";
  public static final String ERROR_DOMAIN_CREATE_NEW_CART = "CreateNewCart";
  public static final String ERROR_DOMAIN_CREATE_ORDER_REVIEW = "CreateOrderReview";
  public static final String ERROR_DOMAIN_DELETE_CART = "DeleteCart";
  public static final String ERROR_DOMAIN_DELETE_COUPON_FROM_CART = "DeleteCouponFromCart";
  public static final String ERROR_DOMAIN_DELETE_MENU_ITEM_TO_CART = "DeleteMenuItemToCart";
  public static final String ERROR_DOMAIN_DELETE_PAYMENT_FROM_CART = "DeletePaymentFromCart";
  public static final String ERROR_DOMAIN_DELETE_VAULTED_PAYMENT = "DeleteVaultedPayment";
  public static final String ERROR_DOMAIN_DELIVERY_LOOKUP = "DeliveryLookup";
  public static final String ERROR_DOMAIN_FACEBOOK_AUTH = "FacebookAuth";
  public static final String ERROR_DOMAIN_FACEBOOK_CONNECT = "FacebookConnect";
  public static final String ERROR_DOMAIN_GET_BILL = "GetBill";
  public static final String ERROR_DOMAIN_GET_CART = "GetCart";
  public static final String ERROR_DOMAIN_GET_CARTS = "GetCarts";
  public static final String ERROR_DOMAIN_GET_COUPON_FROM_CART = "GetCouponFromCart";
  public static final String ERROR_DOMAIN_GET_FAVORITES = "GetFavorite";
  public static final String ERROR_DOMAIN_GET_MENU_ITEM_TO_CART = "GetMenuItemToCart";
  public static final String ERROR_DOMAIN_GET_ORDER_REVIEW_SURVEY = "GetOrderReviewSurvey";
  public static final String ERROR_DOMAIN_GET_PAST_ORDERS = "GetPastOrders";
  public static final String ERROR_DOMAIN_GET_PAYMENTS_TOKEN = "GetPaymentsToken";
  public static final String ERROR_DOMAIN_GET_PAYMENT_FROM_CART = "GetPaymentFromCart";
  public static final String ERROR_DOMAIN_GET_RECOMMENDATIONS = "GetRecommendations";
  public static final String ERROR_DOMAIN_GET_SAVED_ADDRESSES = "GetSavedAddresses";
  public static final String ERROR_DOMAIN_GET_VAULTED_CREDIT_CARD = "GetVaultedCreditCard";
  public static final String ERROR_DOMAIN_GET_VAULTED_CREDIT_CARDS = "GetVaultedCreditCards";
  public static final String ERROR_DOMAIN_GET_VAULTED_PAYMENTS = "GetVaultedPayments";
  public static final String ERROR_DOMAIN_GET_VAULTED_PAYPAL = "GetVaultedPayPal";
  public static final String ERROR_DOMAIN_GET_VAULTED_PAYPALS = "GetVaultedPayPals";
  public static final String ERROR_DOMAIN_LOGIN = "Login";
  public static final String ERROR_DOMAIN_PLACE_ORDER = "PlaceOrder";
  public static final String ERROR_DOMAIN_QUIT_ORDER_REVIEW_SURVEY = "QuitOrderReviewSurvey";
  public static final String ERROR_DOMAIN_REMOVE_FAVORITE = "RemoveFavorite";
  public static final String ERROR_DOMAIN_REMOVE_SAVED_ADDRESS = "RemoveSavedAddress";
  public static final String ERROR_DOMAIN_REORDER_PAST_ORDER = "ReorderPastOrder";
  public static final String ERROR_DOMAIN_RESTAURANT_AVAILABILITY = "RestaurantAvailability";
  public static final String ERROR_DOMAIN_RESTAURANT_CONTENT = "RestaurantContent";
  public static final String ERROR_DOMAIN_RESTAURANT_SEARCH = "RestaurantSearch";
  public static final String ERROR_DOMAIN_SET_DELIVERY_INFO = "SetDeliveryInfo";
  public static final String ERROR_DOMAIN_SET_DEVICE_DATA = "SetDeviceData";
  public static final String ERROR_DOMAIN_SET_PICKUP_INFO = "SetPickupInfo";
  public static final String ERROR_DOMAIN_SET_TIP_INFO = "SetTipInfo";
  public static final String ERROR_DOMAIN_TOKENIZE_CREDIT_CARD = "TokenizeCreditCard";
  public static final String ERROR_DOMAIN_UPDATE_CART = "UpdateCart";
  public static final String ERROR_DOMAIN_UPDATE_MENU_ITEM_TO_CART = "UpdateMenuItemToCart";
  public static final String ERROR_DOMAIN_UPDATE_PAYMENT_IN_CART = "UpdatePaymentInCart";
  public static final String ERROR_DOMAIN_UPDATE_SAVED_ADDRESS = "UpdateSavedAddress";
  public static final String ERROR_DOMAIN_UPDATE_USER_INFO = "UpdateUserInfo";
  public static final String ERROR_DOMAIN_VALIDATE_ORDER_REVIEWED = "ValidateOrderReviewed";
  public static final String ERROR_DOMAIN_VAULT_PAYMENT = "VaultPayment";
  public static final String ERROR_DOMAIN_YUMMY_RUMMY_ACCESS = "YummyRummyAccess";
  public static final String ERROR_DOMAIN_YUMMY_RUMMY_STATUS_CHECK = "YummyRummyStatusCheck";
  private static Map<String, a> conversionMap = ;
  
  private static String buildErrorKey(String paramString, int paramInt)
  {
    return buildErrorKey(paramString, paramInt, null, null);
  }
  
  private static String buildErrorKey(String paramString1, int paramInt, String paramString2)
  {
    return buildErrorKey(paramString1, paramInt, paramString2, null);
  }
  
  private static String buildErrorKey(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (f.b(paramString1)) {
      localStringBuilder.append(paramString1);
    }
    if (paramInt > 0)
    {
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(".");
      }
      localStringBuilder.append(paramInt);
    }
    if (f.b(paramString2))
    {
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(".");
      }
      localStringBuilder.append(paramString2.replaceAll("\\[[0-9]+\\]", ""));
      if (f.b(paramString3))
      {
        localStringBuilder.append(".");
        localStringBuilder.append(paramString3);
      }
    }
    return localStringBuilder.toString();
  }
  
  private static String buildErrorKey(String paramString1, String paramString2)
  {
    return buildErrorKey(null, 0, paramString1, paramString2);
  }
  
  private static Map<String, a> createNewMap()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(buildErrorKey("Login", 400), a.ERROR_CODE_LOGIN_UNKNOWN);
    localHashMap.put(buildErrorKey("Login", 401), a.ERROR_CODE_LOGIN_NO_MATCH);
    localHashMap.put(buildErrorKey("Login", 403), a.ERROR_CODE_LOGIN_UNKNOWN);
    localHashMap.put(buildErrorKey("Login", 404), a.ERROR_CODE_LOGIN_UNKNOWN);
    localHashMap.put(buildErrorKey("Login", 409), a.ERROR_CODE_LOGIN_UNKNOWN);
    localHashMap.put(buildErrorKey("Login", 422), a.ERROR_CODE_LOGIN_USERNAME_PASSWORD);
    localHashMap.put(buildErrorKey("Login", 461), a.ERROR_CODE_LOGIN_UNKNOWN);
    localHashMap.put(buildErrorKey("Login", 500), a.ERROR_CODE_LOGIN_UNKNOWN);
    localHashMap.put(buildErrorKey("Login", 503), a.ERROR_CODE_LOGIN_UNKNOWN);
    localHashMap.put(buildErrorKey("CreateAccount", 400), a.ERROR_CODE_CREATE_ACCOUNT_UNKNOWN);
    localHashMap.put(buildErrorKey("CreateAccount", 401), a.ERROR_CODE_CREATE_ACCOUNT_UNKNOWN);
    localHashMap.put(buildErrorKey("CreateAccount", 403), a.ERROR_CODE_CREATE_ACCOUNT_UNKNOWN);
    localHashMap.put(buildErrorKey("CreateAccount", 404), a.ERROR_CODE_CREATE_ACCOUNT_UNKNOWN);
    localHashMap.put(buildErrorKey("CreateAccount", 409), a.ERROR_CODE_CREATE_ACCOUNT_ALREADY_EXISTS);
    localHashMap.put(buildErrorKey("CreateAccount", 422), a.ERROR_CODE_CREATE_ACCOUNT_USERNAME_PASSWORD);
    localHashMap.put(buildErrorKey("CreateAccount", 422, "password"), a.ERROR_CODE_CREATE_ACCOUNT_PASSWORD);
    localHashMap.put(buildErrorKey("CreateAccount", 422, "email"), a.ERROR_CODE_CREATE_ACCOUNT_USERNAME);
    localHashMap.put(buildErrorKey("CreateAccount", 461), a.ERROR_CODE_CREATE_ACCOUNT_UNKNOWN);
    localHashMap.put(buildErrorKey("CreateAccount", 500), a.ERROR_CODE_CREATE_ACCOUNT_UNKNOWN);
    localHashMap.put(buildErrorKey("CreateAccount", 503), a.ERROR_CODE_CREATE_ACCOUNT_UNKNOWN);
    localHashMap.put(buildErrorKey("UpdateUserInfo", 409), a.ERROR_CODE_UPDATE_USER_INFO_ALREADY_EXISTS);
    localHashMap.put(buildErrorKey("UpdateUserInfo", 422, "password"), a.ERROR_CODE_UPDATE_USER_INFO_PASSWORD);
    localHashMap.put("cannotGeocode", a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_NONE);
    localHashMap.put("ambiguousGeocode", a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_MANY);
    localHashMap.put("ERR_GEOCODE_NO_RESULTS", a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_NONE);
    localHashMap.put("ERR_GEOCODE_MULTI_RESULTS", a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_MANY);
    localHashMap.put(buildErrorKey("phone", "invalid"), a.ERROR_CODE_ADDRESS_INVALID_PHONE);
    localHashMap.put(buildErrorKey("AddSavedAddress", 422, "phone"), a.ERROR_CODE_ADDRESS_INVALID_PHONE);
    localHashMap.put(buildErrorKey("UpdateSavedAddress", 422, "phone"), a.ERROR_CODE_ADDRESS_INVALID_PHONE);
    localHashMap.put(buildErrorKey("RestaurantContent", 400), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND);
    localHashMap.put(buildErrorKey("RestaurantContent", 401), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND);
    localHashMap.put(buildErrorKey("RestaurantContent", 403), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND);
    localHashMap.put(buildErrorKey("RestaurantContent", 404), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND);
    localHashMap.put(buildErrorKey("RestaurantContent", 409), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND);
    localHashMap.put(buildErrorKey("RestaurantContent", 422), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND);
    localHashMap.put(buildErrorKey("RestaurantContent", 422, "restaurantId"), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_PREMIUM_CUSTOMER);
    localHashMap.put(buildErrorKey("RestaurantContent", 461), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND);
    localHashMap.put(buildErrorKey("RestaurantContent", 500), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND);
    localHashMap.put(buildErrorKey("RestaurantContent", 503), a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND);
    localHashMap.put(buildErrorKey("RestaurantSearch", 400), a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
    localHashMap.put(buildErrorKey("RestaurantSearch", 401), a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
    localHashMap.put(buildErrorKey("RestaurantSearch", 403), a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
    localHashMap.put(buildErrorKey("RestaurantSearch", 404), a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
    localHashMap.put(buildErrorKey("RestaurantSearch", 409), a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
    localHashMap.put(buildErrorKey("RestaurantSearch", 422), a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
    localHashMap.put(buildErrorKey("RestaurantSearch", 461), a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
    localHashMap.put(buildErrorKey("RestaurantSearch", 500), a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
    localHashMap.put(buildErrorKey("RestaurantSearch", 503), a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
    localHashMap.put(buildErrorKey("menu_item_id", "invalid-itemcouponnotcombinable"), a.ERROR_CODE_MENU_ITEM_COUPON_INCOMPATIBLE);
    localHashMap.put(buildErrorKey("quantity", "invalid"), a.ERROR_CODE_MENU_QUANTITY_INVALID);
    localHashMap.put("invalid", a.ERROR_CODE_UNKNOWN);
    localHashMap.put("invalid-whenforpastmaxallowedtime", a.ERROR_CODE_FUTURE_ORDER_PAST_MAX_TIME);
    localHashMap.put("invalid-cantupdatewhenforasap", a.ERROR_CODE_FUTURE_ORDER_UPDATE_ASAP);
    localHashMap.put("invalid-anonymousfutureordersnotallowed", a.ERROR_CODE_FUTURE_ORDER_ANONYMOUS_USER);
    localHashMap.put("invalid-cartcheckedout", a.ERROR_CODE_CHECKOUT_ORDER_ALREADY_COMPLETED);
    localHashMap.put("invalid-individualcartnotcheckedout", a.ERROR_CODE_GROUP_ORDER_INDIVIDUAL_NOT_CHECKED);
    localHashMap.put("invalid-reorderfromgroupnotallowed", a.ERROR_CODE_GROUP_ORDER_REORDER_NOT_ALLOWED);
    localHashMap.put("invalid-notopen", a.ERROR_CODE_RESTAURANT_NOT_TAKING_ORDERS);
    localHashMap.put("invalid-olorestaurant", a.ERROR_CODE_UNKNOWN);
    localHashMap.put("invalid-notavailablefordelivery", a.ERROR_CODE_RESTAURANT_NOT_TAKING_DELIVERY_ORDERS);
    localHashMap.put("invalid-notavailableforpickup", a.ERROR_CODE_RESTAURANT_NOT_TAKING_PICKUP_ORDERS);
    localHashMap.put("invalid-notavailablefordeliveryatdinerlocation", a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA);
    localHashMap.put("invalid-timecutofffordelivery", a.ERROR_CODE_RESTAURANT_NOT_TAKING_DELIVERY_ORDERS_CUTOFF);
    localHashMap.put("invalid-timecutoffforpickup", a.ERROR_CODE_RESTAURANT_NOT_TAKING_PICKUP_ORDERS_CUTOFF);
    localHashMap.put("invalid-fulfillmentinforequired", a.ERROR_CODE_ADDRESS_MISSING);
    localHashMap.put("invalid-enterpickupinfo", a.ERROR_CODE_CART_MISSING_PICKUP_INFO);
    localHashMap.put("invalid-geocheckout", a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_INVALID);
    localHashMap.put("invalid-orderminimumnotmet", a.ERROR_CODE_CHECKOUT_MINIMUM_NOT_MET);
    localHashMap.put("invalid-tipminimumnotmet", a.ERROR_CODE_PAYMENT_MINIMUM_TIP_NOT_MET);
    localHashMap.put("invalid-cashtipnotallowed", a.ERROR_CODE_PAYMENT_CASH_TIP_NOT_ALLOWED);
    localHashMap.put("invalid-amountnotmet", a.ERROR_CODE_CART_NOT_ENOUGH_ITEMS);
    localHashMap.put("invalid-nonzerocashtipnotallowed", a.ERROR_CODE_PAYMENT_NON_ZERO_CASH_TIP);
    localHashMap.put("invalid-negativetipnotallowed", a.ERROR_CODE_PAYMENT_NEGATIVE_TIP);
    localHashMap.put("invalid-freegrubnotfound", a.ERROR_CODE_INVALID_FREE_GRUBHUB);
    localHashMap.put("invalid-categoryminimumnotmet", a.ERROR_CODE_MENU_ITEM_CHOICES_TOO_FEW);
    localHashMap.put("invalid-categorymaximumexceeded", a.ERROR_CODE_MENU_ITEM_CHOICES_TOO_MANY);
    localHashMap.put("invalid-couponminimumnotmet", a.ERROR_CODE_COUPON_MINIMUM_NOT_MET);
    localHashMap.put("invalid-itemcouponminimumnotmet", a.ERROR_CODE_COUPON_ITEM_MINIMUM_NOT_MET);
    localHashMap.put("invalid-codenotcombinable", a.ERROR_CODE_PAYMENT_COMBINATION_INVALID_CODE);
    localHashMap.put("invalid-couponnotcombinable", a.ERROR_CODE_PAYMENT_COMBINATION_INVALID_COUPON);
    localHashMap.put("invalid-itemcouponnotcombinable", a.ERROR_CODE_PAYMENT_COMBINATION_INVALID_COUPON);
    localHashMap.put("invalid-itemnotcombinablewithcoupon", a.ERROR_CODE_PAYMENT_COMBINATION_INVALID_ITEMS_WITH_COUPON);
    localHashMap.put("invalid-maximumexceeded", a.ERROR_CODE_COUPON_LIMIT_ONLY_ONE);
    localHashMap.put("invalid-couponnotfound", a.ERROR_CODE_COUPON_NOT_FOUND);
    localHashMap.put("invalid-couponinvalidforrestaurant", a.ERROR_CODE_COUPON_INVALID_FOR_RESTAURANT);
    localHashMap.put("invalid-optionnotfound", a.ERROR_CODE_MENU_ITEM_CHOICE_OPTIONS);
    localHashMap.put("invalid-menuitemunavailable", a.ERROR_CODE_MENU_ITEM_UNAVAILABLE);
    localHashMap.put("invalid-notaccepted", a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_NOT_ACCEPTED);
    localHashMap.put("invalid-notavailablefromkendo", a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_NOT_AVAILABLE);
    localHashMap.put("invalid-amountexceeded", a.ERROR_CODE_CHECKOUT_COST_AMOUNT_EXCEEDED);
    localHashMap.put("invalid-twoindeterminatepayments", a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_INVALID_PAYMENTS_COMBINATION);
    localHashMap.put("invalid-invalidfreegrub", a.ERROR_CODE_INVALID_FREE_GRUBHUB_CODE);
    localHashMap.put("invalid-notenoughfreegrub", a.ERROR_CODE_NOT_ENOUGH_FREE_GRUB);
    localHashMap.put("invalid-linepricedchanged", a.ERROR_CODE_MENU_ITEM_PRICE_CHANGED);
    localHashMap.put("invalid-required", a.ERROR_CODE_CART_REQUIREMENT_MISSING);
    localHashMap.put("invalid-onlyonerestaurantallowed", a.ERROR_CODE_CART_ORDER_FROM_MULTIPLE_RESTAURANTS);
    localHashMap.put("invalid-groupalreadycheckedout", a.ERROR_CODE_CHECKOUT_GROUP_ORDER_ALREADY_COMPLETED);
    localHashMap.put("invalid-alreadyfulfilled", a.ERROR_CODE_CHECKOUT_ORDER_ALREADY_FULFILLED);
    localHashMap.put("invalid-alreadydeleted", a.ERROR_CODE_CHECKOUT_ORDER_ALREADY_DELETED);
    localHashMap.put("invalid-anonymousfutureordersnotallowed", a.ERROR_CODE_ANONYMOUS_FUTURE_ORDERS_NOT_ALLOWED);
    localHashMap.put("invalid-notavailableforfuturedelivery", a.ERROR_CODE_RESTAURANT_NOT_TAKING_FUTURE_ORDERS);
    localHashMap.put("invalid-notavailableforfuturepickup", a.ERROR_CODE_RESTAURANT_NOT_TAKING_FUTURE_ORDERS);
    localHashMap.put("NON_COMBINABLE_ENTITLEMENT_TYPE", a.ERROR_CODE_PAYMENT_COMBINATION_INVALID);
    localHashMap.put("ADDRESS_OUTSIDE_PICKUP_RADIUS", a.ERROR_CODE_ADDRESS_OUT_OF_PICKUP_RADIUS);
    localHashMap.put("DELIVERY_ADDRESS_INVALID", a.ERROR_CODE_ADDRESS_ADDRESS1_INVALID);
    localHashMap.put("EXPENSE_CODE_REQUIRED", a.ERROR_CODE_UNKNOWN);
    localHashMap.put("FULFILLMENT_TYPE_NOT_PERMITTED", a.ERROR_CODE_CART_ORDER_TYPE_NOT_PERMITTED);
    localHashMap.put("NOT_FOUND", a.ERROR_CODE_SOMETHING_NOT_FOUND);
    localHashMap.put("ORDER_OUTSIDE_SCHEDULE", a.ERROR_CODE_CART_OUTSIDE_SCHEDULE);
    localHashMap.put("CODE_NOT_FOUND", a.ERROR_CODE_PROMO_CODE_NOT_FOUND);
    localHashMap.put("CODE_EXPIRED", a.ERROR_CODE_PROMO_CODE_EXPIRED);
    localHashMap.put("CODE_MAX_PROMO_USAGE_REACHED", a.ERROR_CODE_PROMO_CODE_MAX_USAGE_REACHED);
    localHashMap.put("CODE_MAX_CODE_USAGE_REACHED", a.ERROR_CODE_GIFT_CARD_MAX_USAGE_REACHED);
    localHashMap.put("CODE_ORDER_MIN_NOT_MET", a.ERROR_CODE_PROMO_CODE_ORDER_MIN_NOT_MET);
    localHashMap.put("CODE_NOT_FIRST_TIME_DINER", a.ERROR_CODE_PROMO_CODE_NOT_FIRST_TIME_DINER);
    localHashMap.put("CODE_NOT_FIRST_TIME_ON_CHANNEL", a.ERROR_CODE_PROMO_CODE_NOT_FIRST_TIME_ON_CHANNEL);
    localHashMap.put("CODE_ONE_PER_USER_REACHED", a.ERROR_CODE_PROMO_CODE_ONE_PER_USER_REACHED);
    localHashMap.put("CODE_NOT_AVAILABLE_IN_MARKET", a.ERROR_CODE_PROMO_CODE_NOT_AVAILABLE_IN_MARKET);
    localHashMap.put("CODE_NOT_AVAILABLE_ON_APPLICATION", a.ERROR_CODE_PROMO_CODE_NOT_AVAILABLE_ON_APPLICATION);
    localHashMap.put("CODE_NOT_AVAILABLE_FOR_RESTAURANT", a.ERROR_CODE_PROMO_CODE_NOT_AVAILABLE_FOR_RESTAURANT);
    localHashMap.put("CODE_NOT_COMBINABLE", a.ERROR_CODE_PAYMENT_COMBINATION_INVALID_CODE_NOT_COMBINABLE);
    localHashMap.put("CODE_UNAVAILABLE", a.ERROR_CODE_PROMO_CODE_UNAVAILABLE);
    localHashMap.put("CODE_NO_AMOUNT_REMAINING", a.ERROR_CODE_GIFT_CARD_NO_BALANCE);
    localHashMap.put("CASH_PAYMENT_LIMIT_EXCEEDED", a.ERROR_CODE_PAYMENT_CASH_LIMIT_EXCEEDED);
    localHashMap.put("FRAUD", a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_FRAUD);
    localHashMap.put("INSUFFICIENT_FUNDS", a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_INSUFFICIENT_FUNDS);
    localHashMap.put("PAYMENT_FAILED", a.ERROR_CODE_PAYMENT_FAILED);
    localHashMap.put(buildErrorKey("PlaceOrder", 557), a.ERROR_CODE_HTTP557);
    localHashMap.put(buildErrorKey("payments", "invalid"), a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_INVALID);
    localHashMap.put(buildErrorKey("TokenizeCreditCard", 422, "card number"), a.ERROR_CODE_CC_NUMBER_INVALID);
    localHashMap.put(buildErrorKey("TokenizeCreditCard", 422, "cvv"), a.ERROR_CODE_CC_CCV_INVALID);
    localHashMap.put(buildErrorKey("TokenizeCreditCard", 422, "billing zip"), a.ERROR_CODE_CC_ZIP_INVALID);
    localHashMap.put(buildErrorKey("TokenizeCreditCard", 422, "expiration month"), a.ERROR_CODE_CC_EXPIRATION_INVALID);
    localHashMap.put(buildErrorKey("TokenizeCreditCard", 422, "expiration year"), a.ERROR_CODE_CC_EXPIRATION_INVALID);
    localHashMap.put(buildErrorKey("GetVaultedPayments", 401), a.ERROR_CODE_HTTP401);
    localHashMap.put(buildErrorKey("VaultPayment", 422, "Credit card"), a.ERROR_CODE_CC_INFO_INVALID);
    localHashMap.put(buildErrorKey("GetFavorite", 401), a.ERROR_CODE_HTTP401);
    localHashMap.put(buildErrorKey("GetFavorite", 403), a.ERROR_CODE_HTTP403);
    localHashMap.put(buildErrorKey("GetPastOrders", 401), a.ERROR_CODE_HTTP401);
    localHashMap.put(buildErrorKey("GetPastOrders", 403), a.ERROR_CODE_HTTP403);
    localHashMap.put(buildErrorKey("GetPastOrders", 461), a.ERROR_CODE_PAST_ORDERS_SERVICE_UNAVAILABLE);
    localHashMap.put(buildErrorKey("GetPastOrders", 500), a.ERROR_CODE_PAST_ORDERS_SERVICE_UNAVAILABLE);
    localHashMap.put(buildErrorKey("GetPastOrders", 503), a.ERROR_CODE_PAST_ORDERS_SERVICE_UNAVAILABLE);
    localHashMap.put(buildErrorKey("YummyRummyAccess", 401), a.ERROR_CODE_HTTP401);
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public static boolean mapToAppError(String paramString, b paramb)
  {
    Object localObject;
    int i;
    String str2;
    String str1;
    if (paramb != null)
    {
      localObject = paramb.e();
      i = paramb.a();
      if (localObject == null) {
        break label193;
      }
      str2 = ((c)localObject).a();
      str1 = ((c)localObject).b();
    }
    for (;;)
    {
      localObject = buildErrorKey(paramString, i, str2, str1);
      a locala = (a)conversionMap.get(localObject);
      localObject = locala;
      if (locala == null)
      {
        localObject = locala;
        if (paramString != null)
        {
          localObject = locala;
          if (i > 0)
          {
            localObject = locala;
            if (str2 != null)
            {
              paramString = buildErrorKey(paramString, i, str2);
              localObject = (a)conversionMap.get(paramString);
            }
          }
        }
      }
      paramString = (String)localObject;
      if (localObject == null)
      {
        paramString = (String)localObject;
        if (str2 != null)
        {
          paramString = (String)localObject;
          if (str1 != null)
          {
            paramString = buildErrorKey(str2, str1);
            paramString = (a)conversionMap.get(paramString);
          }
        }
      }
      localObject = paramString;
      if (paramString == null)
      {
        localObject = paramString;
        if (str1 != null) {
          localObject = (a)conversionMap.get(str1);
        }
      }
      if (localObject != null)
      {
        paramb.a((a)localObject);
        return true;
      }
      paramb.a(a.ERROR_CODE_UNKNOWN);
      return false;
      label193:
      str1 = null;
      str2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ErrorMapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */