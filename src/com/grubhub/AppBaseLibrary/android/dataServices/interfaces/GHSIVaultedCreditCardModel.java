package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIVaultedCreditCardModel
{
  public abstract Long getCreateDate();
  
  public abstract String getCreditCardList4();
  
  public abstract String getCreditCardType();
  
  public abstract String getDinerId();
  
  public abstract Integer getExpirationMonth();
  
  public abstract Integer getExpirationYear();
  
  public abstract String getId();
  
  public abstract Long getLastUsedDate();
  
  public abstract Boolean isExpired();
  
  public abstract boolean isSingleUse();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */