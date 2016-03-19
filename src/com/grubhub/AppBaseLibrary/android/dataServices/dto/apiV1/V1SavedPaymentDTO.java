package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSISavedPaymentDataModel;

public class V1SavedPaymentDTO
  implements GHSISavedPaymentDataModel
{
  private long createDate;
  private String creditCardBillingZip;
  private String creditCardLastFour;
  private String creditCardType;
  private boolean disabled;
  private long expirationDate;
  private boolean expired;
  private int id;
  private int loginUserId;
  
  public long getCreationDate()
  {
    return createDate;
  }
  
  public String getCreditCardBillingZip()
  {
    return creditCardBillingZip;
  }
  
  public String getCreditCardLastFour()
  {
    return creditCardLastFour;
  }
  
  public String getCreditCardType()
  {
    return creditCardType;
  }
  
  public long getExpirationDate()
  {
    return expirationDate;
  }
  
  public int getId()
  {
    return id;
  }
  
  public int getLoginUserId()
  {
    return loginUserId;
  }
  
  public boolean isDisabled()
  {
    return disabled;
  }
  
  public boolean isExpired()
  {
    return expired;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1SavedPaymentDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */