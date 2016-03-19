package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;

public class GHSCartPaymentDataModel
  implements GHSICartPaymentDataModel
{
  private Integer amount;
  private String id;
  private String paymentId;
  private String type;
  
  public Integer getAmount()
  {
    return amount;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getPaymentId()
  {
    return paymentId;
  }
  
  public GHSICartPaymentDataModel.PaymentTypes getType()
  {
    return GHSICartPaymentDataModel.PaymentTypes.fromString(type);
  }
  
  public void setAmount(Integer paramInteger)
  {
    amount = paramInteger;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setPaymentId(String paramString)
  {
    paymentId = paramString;
  }
  
  public void setType(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    type = paramPaymentTypes.toString();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCartPaymentDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */