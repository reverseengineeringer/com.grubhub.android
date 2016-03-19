package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSISavedPaymentDataModel
{
  public abstract long getCreationDate();
  
  public abstract String getCreditCardBillingZip();
  
  public abstract String getCreditCardLastFour();
  
  public abstract String getCreditCardType();
  
  public abstract long getExpirationDate();
  
  public abstract int getId();
  
  public abstract int getLoginUserId();
  
  public abstract boolean isDisabled();
  
  public abstract boolean isExpired();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSISavedPaymentDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */