package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAmount;

public class GHSAmount
  implements GHSIAmount
{
  private Integer amount;
  private String currency;
  
  public GHSAmount(Integer paramInteger, String paramString)
  {
    amount = paramInteger;
    currency = paramString;
  }
  
  public Float getAmount()
  {
    if (amount != null) {
      return Float.valueOf(amount.floatValue() / 100.0F);
    }
    return Float.valueOf(0.0F);
  }
  
  public String getCurrency()
  {
    return currency;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAmount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */