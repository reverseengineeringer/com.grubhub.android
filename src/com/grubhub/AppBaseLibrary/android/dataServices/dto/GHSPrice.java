package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAmount;

public class GHSPrice
  implements GHSIAmount
{
  private String currency;
  private Integer price;
  
  public GHSPrice(GHSIAmount paramGHSIAmount)
  {
    price = Integer.valueOf(Math.round(paramGHSIAmount.getAmount().floatValue() * 100.0F));
    currency = paramGHSIAmount.getCurrency();
  }
  
  public Float getAmount()
  {
    if (price != null) {
      return Float.valueOf(price.floatValue() / 100.0F);
    }
    return Float.valueOf(0.0F);
  }
  
  public String getCurrency()
  {
    return currency;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPrice
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */