package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIDiscountCodeInfo;

class V1CartDTO$GHSDiscountCodeInfo
  implements GHSICartDataModel.GHSIDiscountCodeInfo
{
  private String code;
  private String description;
  private String type;
  private Float value;
  
  private V1CartDTO$GHSDiscountCodeInfo(V1CartDTO paramV1CartDTO) {}
  
  public String getDiscountCode()
  {
    return code;
  }
  
  public String getDiscountCodeType()
  {
    return null;
  }
  
  public String getDiscountDescription()
  {
    return description;
  }
  
  public String getDiscountId()
  {
    return null;
  }
  
  public Float getDiscountValue()
  {
    return value;
  }
  
  public Integer getDiscountValueCents()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1CartDTO.GHSDiscountCodeInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */