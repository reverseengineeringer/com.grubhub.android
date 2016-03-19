package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICheckoutResponse;

public class V2CheckoutDTO
  extends V2CartDTO
  implements GHSICheckoutResponse
{
  private String order_number;
  
  public String getOrderNumber()
  {
    return order_number;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CheckoutDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */