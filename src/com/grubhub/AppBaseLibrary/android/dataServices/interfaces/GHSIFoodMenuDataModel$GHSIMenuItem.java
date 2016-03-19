package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIFoodMenuDataModel$GHSIMenuItem
{
  public abstract ArrayList<String> getItemTags();
  
  public abstract GHSIFoodMenuDataModel.GHSIChoiceGroup getMenuItemChoiceGroupById(String paramString);
  
  public abstract GHSIFoodMenuDataModel.GHSIOption getMenuItemChoiceGroupOption(String paramString);
  
  public abstract ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> getMenuItemChoiceGroups();
  
  public abstract String getMenuItemDescription();
  
  public abstract String getMenuItemId();
  
  public abstract String getMenuItemName();
  
  public abstract Float getMenuItemPrice();
  
  public abstract Float getOrderItemMinimum();
  
  public abstract boolean hasItemCoupon();
  
  public abstract boolean hasRequiredChoicesWithExtraCharges();
  
  public abstract boolean isCombinableWithCoupons();
  
  public abstract boolean isMenuItemAvailableNow();
  
  public abstract boolean isPopular();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */