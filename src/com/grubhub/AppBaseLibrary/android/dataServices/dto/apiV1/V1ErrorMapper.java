package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.b.c;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class V1ErrorMapper
{
  private static Map<String, a> conversionMap = ;
  
  private static Map createNewMap()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("missingRequiredInput", a.ERROR_CODE_GENERIC_MISSING_REQUIRED_INPUT);
    localHashMap.put("badToken", a.ERROR_CODE_LOGIN_TOKEN_INVALID);
    localHashMap.put("badCredentials", a.ERROR_CODE_LOGIN_NO_MATCH);
    localHashMap.put("emailInvalid", a.ERROR_CODE_LOGIN_EMAIL_INVALID);
    localHashMap.put("outOfDeliveryArea", a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA);
    localHashMap.put("cannotGeocode", a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_NONE);
    localHashMap.put("ambiguousGeocode", a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_MANY);
    localHashMap.put("ERR_GEOCODE_NO_RESULTS", a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_NONE);
    localHashMap.put("ERR_GEOCODE_MULTI_RESULTS", a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_MANY);
    localHashMap.put("address1", a.ERROR_CODE_ADDRESS_ADDRESS1_INVALID);
    localHashMap.put("address2", a.ERROR_CODE_ADDRESS_ADDRESS2_INVALID);
    localHashMap.put("city", a.ERROR_CODE_ADDRESS_CITY_INVALID);
    localHashMap.put("state", a.ERROR_CODE_ADDRESS_STATE_INVALID);
    localHashMap.put("OUT_OF_MARKET", a.ERROR_CODE_ADDRESS_OUT_OF_MARKET);
    localHashMap.put("invalidPhoneNumber", a.ERROR_CODE_ADDRESS_INVALID_PHONE);
    localHashMap.put("noPhoneNumOnOrderAddress", a.ERROR_CODE_ADDRESS_MISSING_PHONE);
    localHashMap.put("customerNotTakingOnlineOrders", a.ERROR_CODE_RESTAURANT_NOT_TAKING_ORDERS);
    localHashMap.put("customerNotTakingPickupOrders", a.ERROR_CODE_RESTAURANT_NOT_TAKING_PICKUP_ORDERS);
    localHashMap.put("customerNotTakingDeliveryOrders", a.ERROR_CODE_RESTAURANT_NOT_TAKING_DELIVERY_ORDERS);
    localHashMap.put("cannotPickup30MinutesBeforeClose", a.ERROR_CODE_RESTAURANT_NOT_TAKING_ORDERS);
    localHashMap.put("invalidQuantity", a.ERROR_CODE_MENU_QUANTITY_INVALID);
    localHashMap.put("invalidQuantityChangeDropsBelowCouponMinOrder", a.ERROR_CODE_MENU_QUANTITY_CHANGE_DROPS_BELOW_COUPON_MIN_ORDER);
    localHashMap.put("quantityOutOfRange", a.ERROR_CODE_MENU_QUANTITY_OUT_OF_RANGE);
    localHashMap.put("invalidMenuItem", a.ERROR_CODE_MENU_ITEM_UNAVAILABLE);
    localHashMap.put("menuItemNotCurrentlyAvailable", a.ERROR_CODE_MENU_ITEM_UNAVAILABLE);
    localHashMap.put("menuItemOwnedByOtherCustomer", a.ERROR_CODE_MENU_ITEM_OWNED_BY_OTHER);
    localHashMap.put("menuDataTooOld", a.ERROR_CODE_MENU_DATA_TOO_OLD);
    localHashMap.put("invalidChoiceOptions", a.ERROR_CODE_MENU_ITEM_CHOICE_OPTIONS);
    localHashMap.put("invalidChoiceSuboptions", a.ERROR_CODE_MENU_ITEM_CHOICE_SUB_OPTIONS);
    localHashMap.put("tooFewChoicesSelected", a.ERROR_CODE_MENU_ITEM_CHOICES_TOO_FEW);
    localHashMap.put("tooManyChoicesSelected", a.ERROR_CODE_MENU_ITEM_CHOICES_TOO_MANY);
    localHashMap.put("badOrderId", a.ERROR_CODE_CART_BAD_ORDER_ID);
    localHashMap.put("someoneElsesOrderId", a.ERROR_CODE_CART_SOMEONE_ELSES_ORDER_ID);
    localHashMap.put("orderContainsNoItems", a.ERROR_CODE_CART_NO_ITEMS);
    localHashMap.put("number", a.ERROR_CODE_CC_NUMBER_INVALID);
    localHashMap.put("Your CVV is missing or invalid", a.ERROR_CODE_CC_CCV_INVALID);
    localHashMap.put("creditCardInformationNotValid", a.ERROR_CODE_CC_INFO_INVALID);
    localHashMap.put("invalidCvv", a.ERROR_CODE_CC_CCV_INVALID);
    localHashMap.put("cvv", a.ERROR_CODE_CC_CCV_INVALID);
    localHashMap.put("invalidCCNum", a.ERROR_CODE_CC_NUMBER_INVALID);
    localHashMap.put("invalidCCExpirationDate", a.ERROR_CODE_CC_EXPIRATION_INVALID);
    localHashMap.put("expirationdate", a.ERROR_CODE_CC_EXPIRATION_INVALID);
    localHashMap.put("Expiration Date", a.ERROR_CODE_CC_EXPIRATION_INVALID);
    localHashMap.put("invalidCCZip", a.ERROR_CODE_CC_ZIP_INVALID);
    localHashMap.put("billingZip", a.ERROR_CODE_CC_ZIP_INVALID);
    localHashMap.put("invalidPromoCode", a.ERROR_CODE_PROMO_CODE_ADD_INVALID);
    localHashMap.put("remove.invalidPromoCode", a.ERROR_CODE_PROMO_CODE_REMOVE_INVALID);
    localHashMap.put("invalidCouponCombinability", a.ERROR_CODE_COUPON_LIMIT_ONLY_ONE);
    localHashMap.put("invalidCouponCombinabilityOnlyOne", a.ERROR_CODE_COUPON_LIMIT_ONLY_ONE);
    localHashMap.put("customerDoesNotAcceptTips", a.ERROR_CODE_PAYMENT_NOT_TAKING_TIPS);
    localHashMap.put("invalidTip", a.ERROR_CODE_PAYMENT_INVALID_TIP);
    localHashMap.put("paymentMethodNotSupported", a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_INVALID);
    localHashMap.put("orderTooLargeForCash", a.ERROR_CODE_PAYMENT_ORDER_TOO_LARGE_FOR_CASH);
    localHashMap.put("noPaymentMethodSelected", a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_UNSELECTED);
    localHashMap.put("invalidPaymentMethodCombination", a.ERROR_CODE_PAYMENT_COMBINATION_INVALID);
    localHashMap.put("invalidPaymentMethod", a.ERROR_CODE_PAYMENT_PAYMENT_METHOD_INVALID);
    localHashMap.put("ccPaymentFailure", a.ERROR_CODE_PAYMENT_FAILURE);
    localHashMap.put("Credit Card Information", a.ERROR_CODE_PAYMENT_FAILURE);
    localHashMap.put("invalidPromoUsage", a.ERROR_CODE_CHECKOUT_INVALID_PROMO_USAGE);
    localHashMap.put("orderAlreadyCompleted", a.ERROR_CODE_CHECKOUT_ORDER_ALREADY_COMPLETED);
    localHashMap.put("minimumNotMet", a.ERROR_CODE_CHECKOUT_MINIMUM_NOT_MET);
    localHashMap.put("requiredCrossStreet", a.ERROR_CODE_CHECKOUT_REQUIRED_CROSS_STREET);
    localHashMap.put("totalCalculationMismatch", a.ERROR_CODE_CHECKOUT_TOTALS_MISMATCH);
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public static boolean mapToAppError(b paramb)
  {
    if (paramb != null)
    {
      localObject = paramb.e();
      if (localObject == null) {
        break label63;
      }
    }
    label63:
    for (Object localObject = ((c)localObject).a();; localObject = null)
    {
      if (f.b((String)localObject)) {}
      for (localObject = (a)conversionMap.get(localObject);; localObject = null)
      {
        if (localObject != null)
        {
          paramb.a((a)localObject);
          return true;
        }
        paramb.a(a.ERROR_CODE_UNKNOWN);
        return false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ErrorMapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */