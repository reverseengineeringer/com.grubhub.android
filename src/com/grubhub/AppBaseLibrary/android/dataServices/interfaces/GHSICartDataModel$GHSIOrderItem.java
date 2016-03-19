package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSICartDataModel$GHSIOrderItem
{
  public abstract Float getDinerTotal();
  
  public abstract Integer getDinerTotalInCents();
  
  public abstract String getId();
  
  public abstract String getItemName();
  
  public abstract Float getItemPrice();
  
  public abstract Integer getItemQuantity();
  
  public abstract String getItemSpecialInstructions();
  
  public abstract String getOriginalItemId();
  
  public abstract String getRestaurantId();
  
  public abstract String getRestaurantName();
  
  public abstract ArrayList<GHSICartDataModel.GHSIItemOptionSelection> getSelectedItemOptions();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */