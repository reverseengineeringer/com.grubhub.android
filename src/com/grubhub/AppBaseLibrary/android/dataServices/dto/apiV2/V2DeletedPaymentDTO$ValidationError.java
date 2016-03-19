package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel.GHSIValidationError;

public class V2DeletedPaymentDTO$ValidationError
  implements GHSIDeletedPaymentModel.GHSIValidationError
{
  private String message_key;
  private String property;
  
  public V2DeletedPaymentDTO$ValidationError(V2DeletedPaymentDTO paramV2DeletedPaymentDTO) {}
  
  public String getMessageKey()
  {
    return message_key;
  }
  
  public String getProperty()
  {
    return property;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2DeletedPaymentDTO.ValidationError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */