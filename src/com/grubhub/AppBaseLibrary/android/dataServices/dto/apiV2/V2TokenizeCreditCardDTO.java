package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSITokenizeCreditCardDataModel;

public class V2TokenizeCreditCardDTO
  implements GHSITokenizeCreditCardDataModel
{
  private String client_token;
  private String nonce;
  
  public String getClientToken()
  {
    return client_token;
  }
  
  public String getNonce()
  {
    return nonce;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2TokenizeCreditCardDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */