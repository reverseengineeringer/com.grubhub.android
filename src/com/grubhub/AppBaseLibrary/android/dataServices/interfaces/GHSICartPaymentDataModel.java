package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSICartPaymentDataModel
{
  public abstract Integer getAmount();
  
  public abstract String getId();
  
  public abstract String getPaymentId();
  
  public abstract GHSICartPaymentDataModel.PaymentTypes getType();
  
  public abstract void setAmount(Integer paramInteger);
  
  public abstract void setId(String paramString);
  
  public abstract void setPaymentId(String paramString);
  
  public abstract void setType(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */