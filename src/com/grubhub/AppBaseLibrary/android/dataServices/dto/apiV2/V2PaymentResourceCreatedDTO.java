package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;

public class V2PaymentResourceCreatedDTO
  implements GHSIPaymentResourceCreatedDataModel
{
  private boolean already_exists;
  private String id;
  private String uri;
  
  public boolean getAlreadyExists()
  {
    return already_exists;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getUri()
  {
    return uri;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2PaymentResourceCreatedDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */