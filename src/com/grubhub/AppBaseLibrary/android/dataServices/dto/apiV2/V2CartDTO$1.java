package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIDiscountCodeInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import java.util.ArrayList;
import java.util.Map.Entry;

class V2CartDTO$1
  implements GHSICartDataModel.GHSIDiscountCodeInfo
{
  V2CartDTO$1(V2CartDTO paramV2CartDTO, Map.Entry paramEntry) {}
  
  public String getDiscountCode()
  {
    return ((V2CartPaymentDTO)((ArrayList)val$pair.getValue()).get(0)).getPaymentId();
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
    return ((V2CartPaymentDTO)((ArrayList)val$pair.getValue()).get(0)).getId();
  }
  
  public Float getDiscountValue()
  {
    Integer localInteger = ((V2CartPaymentDTO)((ArrayList)val$pair.getValue()).get(0)).getAmount();
    if (localInteger != null) {
      return Float.valueOf(V2CartDTO.centsToDollars(localInteger.intValue()));
    }
    return null;
  }
  
  public Integer getDiscountValueCents()
  {
    return ((V2CartPaymentDTO)((ArrayList)val$pair.getValue()).get(0)).getAmount();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */