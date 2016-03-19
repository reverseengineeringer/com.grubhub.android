package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSICouponDataModel
{
  public abstract Float getAmount();
  
  public abstract Integer getAmountInCents();
  
  public abstract String getCouponId();
  
  public abstract String getDescription();
  
  public abstract String getId();
  
  public abstract Float getMinimumAmount();
  
  public abstract Integer getMinimumAmountInCents();
  
  public abstract String getRestaurantId();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */