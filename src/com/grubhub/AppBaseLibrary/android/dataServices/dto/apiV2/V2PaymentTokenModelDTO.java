package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel.PaymentTokenizer;

public class V2PaymentTokenModelDTO
  implements GHSIPaymentTokenModel
{
  private String client_token;
  private String payment_id;
  private String tokenizer;
  
  public String getPaymentId()
  {
    return payment_id;
  }
  
  public String getToken()
  {
    return client_token;
  }
  
  public GHSIPaymentTokenModel.PaymentTokenizer getTokenizer()
  {
    return GHSIPaymentTokenModel.PaymentTokenizer.fromString(tokenizer);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2PaymentTokenModelDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */