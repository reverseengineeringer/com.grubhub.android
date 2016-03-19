package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIFoodMenuDataModel$GHSIMenuSection
{
  public abstract String getMenuSectionDescription();
  
  public abstract String getMenuSectionId();
  
  public abstract ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> getMenuSectionMenuItems();
  
  public abstract String getMenuSectionName();
  
  public abstract boolean hasMenuItemsAvailableNow();
  
  public abstract void setMenuSectionMenuItems(ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> paramArrayList);
  
  public abstract void setMenuSectionName(String paramString);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */